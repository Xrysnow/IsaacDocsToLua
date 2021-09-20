---@class EntityBomb @
local EntityBomb = {}

--------------------
-- Functions
--------------------

---@param Flags TearFlags @
function EntityBomb:AddTearFlags(Flags)
end

---@param Flags TearFlags @
function EntityBomb:ClearTearFlags(Flags)
end

---@param Flags TearFlags @
---@return boolean @
function EntityBomb:HasTearFlags(Flags)
end

---@param Countdown number @ (int)
function EntityBomb:SetExplosionCountdown(Countdown)
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
