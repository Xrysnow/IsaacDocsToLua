---@class CppContainer.EntityList
local EntityList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of entities in the list.
---
---@return number @ (int)
function EntityList:__len()
end

--------------------
-- Functions
--------------------

--- Returns an [Entity](Entity.md) at the index of the list provided.
---
---@return Entity @
function EntityList:Get()
end

--------------------
-- Variables
--------------------

--- The amount of entities in the list.
---
---@type number @(member) (int)
EntityList.Size = nil
