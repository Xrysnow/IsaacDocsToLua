---@class CppContainer.ArrayProxy.RoomConfigSpawns @
local RoomConfigSpawns = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of spawnables in this list.
---
---@return number @ (int)
function RoomConfigSpawns:__len()
end

--------------------
-- Functions
--------------------

--- Returns a [RoomConfig Spawn](RoomConfig_Spawn.md) at the index of the list provided.
---
---@param idx number @ (int)
---@return RoomConfig.Spawn @
function RoomConfigSpawns:Get(idx)
end

--------------------
-- Variables
--------------------

--- The amount of spawnables in the list.
---
---@type number @(member) (int)
RoomConfigSpawns.Size = nil
