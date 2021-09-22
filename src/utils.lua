--
local M = {}
local lfs = require('lfs')
require('strings')

function M.enumFiles(dir, out)
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

function M.mkdir(dir)
    return lfs.mkdir(dir)
end

---@param line string
---@return string
function M.procDescLine(line)
    if line == '' then
        return ''
    end
    if line:starts_with('???- info ') then
        line = line:sub(11):trim():gsub('"', '')
        return '- ' .. line
    end
    if line == '???- warning "Warning"' or line == '???+ warning "Warning"' then
        return '- Warning'
    end
    if line == '???- example "Example code"' then
        return '- Example code'
    end
    if line == '???+ bug "Bugs"' or line == '???+ bug "Bug"' then
        return '- Bug'
    end
    if line:starts_with('???') then
        line = line:sub(4)
    elseif line:starts_with('    ') and not line:starts_with('    ```') then
        line = '>' .. line
    end
    line = line:gsub('`:::lua ', '`')
    return line
end

return M
