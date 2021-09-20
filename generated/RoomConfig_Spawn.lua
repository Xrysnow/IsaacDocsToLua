---@class RoomConfig.Spawn @
local Spawn = {}

--------------------
-- Functions
--------------------
--- r is a value between 0 and 1
---@param r number @ (float)
---@return RoomConfig.Entry @ (const)
function Spawn:PickEntry(r)
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
Spawn.EntryCount = nil

---@type number @(member) (float)
Spawn.SumWeights = nil

---@type number @(member) (int)
Spawn.X = nil

---@type number @(member) (int)
Spawn.Y = nil
