--
local M = {}
local lfs = require('lfs')

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

return M
