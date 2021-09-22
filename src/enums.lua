--
local M = {}
local utils = require('utils')
require('strings')

local ROOMSHAPE = {
    ROOMSHAPE_LTL = '┛',
    ROOMSHAPE_LTR = '┗',
    ROOMSHAPE_LBL = '┓',
    ROOMSHAPE_LBR = '┏',
}

local function procArgs(s)
    s = s:trim()
    s = s:gsub('^%(', '')
    s = s:gsub('%)%)$', ')')
    s = s:gsub('%b()', '')
    s = s:gsub(' %[int%]', '(int)')
    s = s:gsub(' %[string%]', '(string)')
    s = s:gsub(' %[bool%]', '(bool)')
    s = s:gsub(' %[Vector%]', '(Vector)')
    s = s:gsub(' %[float%]', '(float)')
    s = s:gsub(' %[%[PillEffect%]%]', '(PillEffect)')
    s = s:gsub('%)%)$', ')')
    s = s:gsub('<br>', '')
    s = s:gsub('%[', '')
    s = s:gsub('%]', '')
    s = s:gsub(' Entity,', '(Entity),')
    s = s:gsub('PillColor%)$', 'PillColor')
    s = s:gsub('Curses%)$', 'Curses')
    return s
end

local function procModCallbacks(content)
    local results = {}
    local function append(l)
        table.insert(results, l)
    end
    local enum_name = 'ModCallbacks'
    append(('---@class %s @enum'):format(enum_name))
    append(('%s = {}'):format(enum_name))
    append('')
    ---@type string[]
    local lines = string.split(content, '\n')
    local cur_desc = {}
    for iline, line in ipairs(lines) do
        local is_enum = line:starts_with('### ')
        local is_proto = line:starts_with('|[ ](#)')
        if is_enum then
            cur_desc = {}
        elseif is_proto then
            -- flush desc
            for _, s in ipairs(cur_desc) do
                append(('--- %s'):format(utils.procDescLine(s)))
            end
            --
            local words = line:split('|')
            for i = 1, #words do
                words[i] = words[i]:trim()
            end
            --local tags = words[2]:sub(10)
            local value = words[3]:gsub(' ', ''):gsub('^1<<', '2^')
            local name = words[4]:gsub(' {.*$', ''):trim()
            local FunctionArgs = words[5] or ''
            local OptionalArgs = words[6] or ''
            --
            if FunctionArgs == '-' then
                FunctionArgs = ''
            end
            if OptionalArgs == '-' then
                OptionalArgs = ''
            end
            if FunctionArgs ~= '' then
                FunctionArgs = procArgs(FunctionArgs)
                --append('---')
                append(('--- Function args: %s'):format(FunctionArgs))
            end
            if OptionalArgs ~= '' then
                OptionalArgs = procArgs(OptionalArgs)
                append('---')
                append(('--- Optional args: %s'):format(OptionalArgs))
            end
            --
            append('---')
            append(('--- %s'):format(words[3]:gsub(' ', '')))
            append(('%s.%s = %s'):format(enum_name, name, value))
        else
            if line:sub(1, 1) ~= '|' then
                table.insert(cur_desc, line)
            end
        end
    end
    append('')
    append(('return %s'):format(enum_name))
    append('')
    return table.concat(results, '\n')
end

local function proc(content)
    local results = {}
    local function append(l)
        table.insert(results, l)
    end
    local enum_name = nil
    ---@type string[]
    local lines = string.split(content, '\n')
    for iline, line in ipairs(lines) do
        local enum_decl = line:match('^# Enum "(.*)"$')
        local is_proto = line:starts_with('|[ ](#)')
        if enum_decl then
            if enum_decl == 'ModCallbacks' then
                -- special
                return procModCallbacks(content)
            end
            enum_name = enum_decl
            if enum_name == 'ItemConfig' then
                -- workaround
                append(('---@type %s'):format(enum_name))
            else
                append(('---@class %s @enum'):format(enum_name))
            end
            append(('%s = {}'):format(enum_name))
            append('')
        elseif is_proto then
            local words = line:split('|')
            for i = 1, #words do
                words[i] = words[i]:trim()
            end
            --local tags = words[2]:sub(10)
            local value = words[3]:gsub(' ', ''):gsub('^1<<', '2^')
            local name = words[4]:gsub(' {.*$', ''):trim()
            local comment = words[5]
            --
            local show_value = true
            if enum_name == 'CacheFlag' then
                if words[6] and words[6] ~= '' then
                    comment = ('%s\n---\n--- %s'):format(words[6], comment)
                end
                show_value = false
            elseif enum_name == 'LevelStage' then
                comment = words[6] or comment
            elseif enum_name == 'PickupPrice' then
                comment = ''
            elseif enum_name == 'RoomShape' and words[6] then
                if words[6] ~= '' then
                    comment = ('Grid indicies: %s'):format(words[6])
                else
                    comment = ''
                end
                if ROOMSHAPE[name] then
                    append(('--- Shape: %s'):format(ROOMSHAPE[name]))
                    append('---')
                end
            elseif enum_name == 'RoomType' and words[6] then
                comment = words[6]
            elseif enum_name == 'TearFlags' and words[6] then
                comment = ('%s\n---\n--- %s'):format(words[6], comment)
            end
            --
            if comment == '' then
                --append('---')
            else
                append(('--- %s'):format(comment or ''))
            end
            append('---')
            if name:starts_with('Does not') then
                -- Does not exist anymore
                append(('-- %s: %s'):format(value, name, value))
            else
                if show_value then
                    append(('--- %s'):format(words[3]:gsub(' ', '')))
                end
                append(('%s.%s = %s'):format(enum_name, name, value))
            end
        end
    end
    append('')
    append(('return %s'):format(enum_name))
    append('')
    return table.concat(results, '\n')
end

local BlackList = {}

--- Reads *.md files in `input` and writes lua docs into `output`
---@param input string
---@param output string
function M.run(input, output)
    utils.mkdir(output)
    for _, t in ipairs(utils.enumFiles(input)) do
        ---@type string
        local path = t[1]
        local fname = string.filename(path)
        if path:ends_with('.md') and not BlackList[fname] then
            local file = io.open(path, "rb")
            local content = file:read("*a")
            file:close()
            local result = proc(content)
            local newpath = ('%s/%s.lua'):format(output, fname)
            file = io.open(newpath, "w+b")
            file:write(result)
            file:close()
            print('finish', path)
        end
    end
end

return M
