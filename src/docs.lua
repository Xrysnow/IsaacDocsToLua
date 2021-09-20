-- This script reads *.md files in INPUT_PATH and writes lua docs into OUTPUT_PATH
local INPUT_PATH = './docs'
local OUTPUT_PATH = './generated'
require('strings')

local lfs = require('lfs')
local function iter(dir, out)
    out = out or {}
    for entry in lfs.dir(dir) do
        --entry is in MBCS on windows
        if entry ~= '.' and entry ~= '..' then
            local path = dir .. '/' .. entry
            local attr = lfs.attributes(path)
            if not attr then
                --print('can not find path: ' .. path)
            else
                if attr.mode == 'directory' then
                    -- iter(path, out)
                elseif attr.mode == 'file' then
                    table.insert(out, { path, attr })
                end
            end
        end
    end
    return out
end

local function extractCName(s)
    if s:sub(1, 1) == '[' then
        local t = s:gsub('%].*$', ''):gsub('%[', '')
        return t:gsub(' ', '.')
    end
    return s:gsub(' ', '_')
end

local TypeMap = {
    void  = 'nil',
    float = 'number',
    int   = 'number',
}

local function procType(s)
    if TypeMap[s] then
        return TypeMap[s]
    end
    return s
end

local function procMember(t, cname)
    local ret = {}
    local desc = table.concat(t.desc, '\n--- '):rtrim()
    if t.desc[1] ~= '' then
        desc = '--- ' .. desc
    end
    table.insert(ret, desc)
    if t.type == 'func' then
        -- workaround
        if cname == 'Vector' and t.name == 'Vector' then
            t.params = { { 'float', 'x' }, { 'float', 'y' } }
        end
        --
        local params_doc = {}
        local params = {}
        for _, p in ipairs(t.params) do
            local ltype = procType(p[1])
            local pdoc = ('---@param %s %s @'):format(p[2], ltype)
            if ltype ~= p[1] then
                pdoc = ('%s (%s)'):format(pdoc, p[1])
            end
            if p[3] then
                -- default value
                pdoc = ('%s (default %s)'):format(pdoc, p[3])
            end
            table.insert(params_doc, pdoc)
            table.insert(params, p[2])
        end
        params_doc = table.concat(params_doc, '\n'):rtrim()
        if params_doc ~= '' then
            table.insert(ret, params_doc)
        end
        params = table.concat(params, ', ')
        local r = t.ret
        if r ~= 'void' then
            local rtype = procType(r)
            local rdoc = ('---@return %s @'):format(rtype)
            if rtype ~= r then
                rdoc = ('%s (%s)'):format(rdoc, r)
            end
            if t.return_const then
                rdoc = rdoc .. ' (const)'
            end
            if t.altreturn_nil then
                rdoc = rdoc .. ' (nilable)'
            end
            table.insert(ret, rdoc)
        end
        if t.static then
            table.insert(ret, ('function %s.%s(%s)'):format(cname, t.name, params))
        else
            table.insert(ret, ('function %s:%s(%s)'):format(cname, t.name, params))
        end
        table.insert(ret, 'end')
    elseif t.type == 'var' then
        local r = t.ret
        local rtype = procType(r)
        local rdoc = ('---@type %s @(member)'):format(rtype)
        if rtype ~= r then
            rdoc = ('%s (%s)'):format(rdoc, r)
        end
        table.insert(ret, rdoc)
        table.insert(ret, ('%s.%s = nil'):format(cname, t.name))
    elseif t.type == 'const' then
        local rdoc = ('---@type %s @(constant)'):format(cname)
        table.insert(ret, rdoc)
        table.insert(ret, ('%s.%s = nil'):format(cname, t.name))
    end
    return table.concat(ret, '\n')
end

local function proc(content)
    local results = {}
    local function append(l)
        table.insert(results, l)
    end
    local cur_mode = nil
    local cur_mem = nil
    local cls = nil
    local cls_flushed = false
    ---@type string[]
    local lines = string.split(content, '\n')
    for iline, line in ipairs(lines) do
        local cls_decl = line:match('^# Class "(.*)"$')
        local mem_type_decl = line:match('^## (.*)$')
        local is_mem_decl = line:starts_with('### ')
        local is_proto = line:starts_with('#### ')
        local is_tag = line:starts_with('[ ](#)')
        local is_sep = line == '___'

        if cls and is_mem_decl and not cur_mode then
            -- before members
            is_mem_decl = false
            local s = line:sub(5)
            s = s:gsub('{.*$', '')
            s = s:trim()
            if s == 'Children Classes' then
            elseif s:starts_with('Inherits from') then
                local next = lines[iline + 1]
                cls.parent = procType(extractCName(next))
            end
        end
        if not cls_decl and not cls_flushed then
            -- flush
            if cls.name == 'Global_Functions' then
                append('--')
                append('local Global_Functions = _G')
            else
                local cname = cls.decl:gsub('::', '.'):gsub(' ', '.')
                if cls.parent then
                    local pname = cls.parent:gsub('::', '.'):gsub(' ', '.')
                    append(('---@class %s:%s'):format(cname, pname))
                else
                    append(('---@class %s'):format(cname))
                end
                append(('local %s = {}'):format(cls.name))
            end
            cls_flushed = true
        end
        --
        if cls_decl then
            cls = {}
            cls.name = cls_decl:gsub('::', ':'):gsub(' ', '_')
            cls.decl = cls_decl
            if cls.name:find(':') then
                local h = cls.name:split(':')
                cls.name = h[#h]
                if cls.name:find(':') then
                    for _, hh in ipairs(h) do
                        print(hh)
                    end
                    assert(false)
                end
            end
        elseif mem_type_decl then
            if mem_type_decl == 'Constants' then
                cur_mode = 'const'
            elseif mem_type_decl == 'Variables' then
                cur_mode = 'var'
            else
                cur_mode = 'func'
            end
            append('')
            append(('-'):rep(20))
            append(('-- %s'):format(mem_type_decl))
            append(('-'):rep(20))
        elseif is_mem_decl then
            local s = line:sub(5)
            s = s:gsub('{.*$', '')
            s = s:trim()
            if cur_mem then
                -- flush last
                local doc = procMember(cur_mem, cls.name)
                append(doc)
            end
            cur_mem = {}
            cur_mem.desc = {}
            if cur_mode == 'func' then
                cur_mem.name = s:gsub('%(.*', ''):trim()
            elseif cur_mode == 'var' then
                cur_mem.name = s
            elseif cur_mode == 'const' then
                cur_mem.name = s:gsub('^.*%.', '')
            end
            cur_mem.name = cur_mem.name:gsub('·', '')
            cur_mem.type = cur_mode
        elseif is_proto then
            local s = line:sub(5)
            s = s:gsub('{.*$', '')
            s = s:trim()
            local proto_ex = line:gsub('^.*{:', '')
            if cur_mode == 'func' then
                local proto1 = s:gsub(' %( .*$', '')
                local words1 = proto1:split(' ')
                words1[#words1] = nil
                local proto2 = s:gsub('^.* %( ', ''):gsub('%)', ''):trim()
                local words2 = proto2:split(',')
                words2[#words2] = nil
                for i = 1, #words2 do
                    words2[i] = words2[i]:trim()
                end
                --
                local is_altreturn_nil = proto_ex:find("data-altreturn='nil'")
                cur_mem.altreturn_nil = is_altreturn_nil
                if words1[1] == 'const' then
                    cur_mem.return_const = true
                    table.remove(words1, 1)
                elseif words1[1] == 'static' then
                    cur_mem.static = true
                    table.remove(words1, 1)
                end
                cur_mem.ret = extractCName(table.concat(words1, ' '))
                --
                cur_mem.params = {}
                for _, word in ipairs(words2) do
                    local pwords = word:split(' ')
                    local default = nil
                    if pwords[#pwords - 1] == '=' then
                        -- default value
                        default = pwords[#pwords]
                        pwords[#pwords] = nil
                        pwords[#pwords] = nil
                    end
                    local pname = pwords[#pwords]
                    pwords[#pwords] = nil
                    local ptype = extractCName(table.concat(pwords, ' '))
                    table.insert(cur_mem.params, { ptype, pname, default })
                end
            elseif cur_mode == 'var' then
                local words = s:split(' ')
                words[#words] = nil
                if words[1] == 'const' then
                    cur_mem.const = true
                    table.remove(words, 1)
                end
                cur_mem.ret = extractCName(table.concat(words, ' '))
            elseif cur_mode == 'const' then
                -- no proto
            end
        elseif is_tag then
            if line:find('%.static') then
                cur_mem.static = true
            end
        elseif is_sep then
            -- flush last
            if cur_mem then
                local doc = procMember(cur_mem, cls.name)
                append(doc)
            end
            cur_mem = nil
        else
            -- desc
            if cur_mem then
                local s = line
                if s:sub(1, 3) == '???' then
                    s = s:sub(4)
                end
                s = s:gsub('`:::lua ', '`')
                table.insert(cur_mem.desc, s)
            end
        end
    end
    append('')
    return table.concat(results, '\n')
end

local BlackList = {
    index       = true,
    PLACEHOLDER = true
}

local function run(dir)
    lfs.mkdir(OUTPUT_PATH)
    for _, t in ipairs(iter(dir)) do
        ---@type string
        local path = t[1]
        local fname = string.filename(path)
        if path:ends_with('.md') and not BlackList[fname] then
            local file = io.open(path, "rb")
            local content = file:read("*a")
            file:close()
            local result = proc(content)
            local newpath = ('%s/%s.lua'):format(OUTPUT_PATH, fname)
            file = io.open(newpath, "w+b")
            file:write(result)
            file:close()
            print('finish', path)
        end
    end
end

run(INPUT_PATH)
