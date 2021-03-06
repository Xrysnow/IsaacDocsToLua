---@class CppContainer.Vector.CostumeConfigList @
local CostumeConfigList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of costumes in the list.
---
---@return number @ (int)
function CostumeConfigList:__len()
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
function CostumeConfigList:Get(idx)
end

--------------------
-- Variables
--------------------

--- The amount of costumes in the list.
---
---@type number @(member) (int)
CostumeConfigList.Size = nil
