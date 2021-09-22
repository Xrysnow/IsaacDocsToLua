---@class CppContainer.Vector.PillConfigList @
local PillConfigList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of pill effects in the list.
---
---@return number @ (int)
function PillConfigList:__len()
end

--------------------
-- Functions
--------------------

--- Returns userdata at the index of the list provided.
--- 
--- - Bug
--- >    This function does not return usable userdata, rendering it useless.
---
---@param idx number @ (int)
---@return userdata @
function PillConfigList:Get(idx)
end

--------------------
-- Variables
--------------------

--- The amount of pill effects in the list.
---
---@type number @(member) (int)
PillConfigList.Size = nil
