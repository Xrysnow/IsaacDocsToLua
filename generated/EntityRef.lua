---@class EntityRef @
local EntityRef = {}

--------------------
-- Constructors
--------------------


--------------------
-- Variables
--------------------
--- optional
---
---@type Entity @(member)
EntityRef.Entity = nil

---@type boolean @(member)
EntityRef.IsCharmed = nil

---@type boolean @(member)
EntityRef.IsFriendly = nil

---@type Vector @(member)
EntityRef.Position = nil

---@type EntityType @(member)
EntityRef.SpawnerType = nil

---@type number @(member) (int)
EntityRef.SpawnerVariant = nil

---@type EntityType @(member)
EntityRef.Type = nil

---@type number @(member) (int)
EntityRef.Variant = nil
