---@class GridEntityDesc @
local GridEntityDesc = {}

--------------------
-- Variables
--------------------
--- this is will be false when its first created
---@type boolean @(member)
GridEntityDesc.Initialized = nil
--- how often this entity has been spawned
---@type number @(member) (int)
GridEntityDesc.SpawnCount = nil

---@type number @(member) (int)
GridEntityDesc.SpawnSeed = nil

---@type number @(member) (int)
GridEntityDesc.State = nil

---@type GridEntityType @(member)
GridEntityDesc.Type = nil
--- Additional data to be stored, when State is not enought.
---@type number @(member) (int)
GridEntityDesc.VarData = nil
--- this seed is will be changed based on some events
---@type number @(member) (int)
GridEntityDesc.VariableSeed = nil

---@type number @(member) (int)
GridEntityDesc.Variant = nil
