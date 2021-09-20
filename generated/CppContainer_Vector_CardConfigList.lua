---@class CppContainer.Vector.CardConfigList @
local CardConfigList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of cards in the list.
---
---@return number @ (int)
function CardConfigList:__len()
end

--------------------
-- Functions
--------------------

--- Returns userdata at the index of the list provided.
--- 
--- + bug "Bugs"
---     This function does not return usable userdata, rendering it useless.
---
---@param idx number @ (int)
---@return userdata @
function CardConfigList:Get(idx)
end

--------------------
-- Variables
--------------------

--- The amount of cards in the list.
---
---@type number @(member) (int)
CardConfigList.Size = nil
