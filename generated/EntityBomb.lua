---@class EntityBomb
local EntityBomb = {}

--------------------
-- Functions
--------------------

function EntityBomb:AddTearFlags()
end

function EntityBomb:ClearTearFlags()
end

---@return boolean @
function EntityBomb:HasTearFlags()
end

function EntityBomb:SetExplosionCountdown()
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
EntityBomb.ExplosionDamage = nil

--- Uses [TearFlags](enums/TearFlags.md) to alter the behavior of the bomb.
---@type TearFlags @(member)
EntityBomb.Flags = nil

---@type boolean @(member)
EntityBomb.IsFetus = nil

---@type number @(member) (float)
EntityBomb.RadiusMultiplier = nil
