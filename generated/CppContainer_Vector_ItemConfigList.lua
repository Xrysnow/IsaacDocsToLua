---@class CppContainer.Vector.ItemConfigList
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
--- + bug "Bugs"
---     This function does not return usable userdata, rendering it useless.
---
---@return userdata @
function ItemConfigList:Get()
end

--------------------
-- Variables
--------------------

--- The amount of items in the list.
---
---@type number @(member) (int)
ItemConfigList.Size = nil
