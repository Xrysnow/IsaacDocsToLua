---@class CppContainer.Vector.ItemConfigList @
local ItemConfigList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of items in the list.
---
---@return number @ (int)
function ItemConfigList:__len()
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
function ItemConfigList:Get(idx)
end

--------------------
-- Variables
--------------------

--- The amount of items in the list.
---
---@type number @(member) (int)
ItemConfigList.Size = nil
