---@class RoomConfig.Spawn
local Spawn = {}

--------------------
-- Functions
--------------------
--- r is a value between 0 and 1
---@return RoomConfig.Entry @ (const)
function Spawn:PickEntry()
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
