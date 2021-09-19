---@class GridEntityPoop:GridEntity
local GridEntityPoop = {}

--------------------
-- Functions
--------------------

function GridEntityPoop:ReduceSpawnRate()
end

function GridEntityPoop:RespawnRedPoop()
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
GridEntityPoop.ReducedSpawnRate = nil

---@type number @(member) (int)
GridEntityPoop.ReviveTimer = nil

---@type string @(member)
GridEntityPoop.StateAnimation = nil
--- Used to determine when player moves away from the poop.
---@type boolean @(member)
GridEntityPoop.UnderPlayer = nil
