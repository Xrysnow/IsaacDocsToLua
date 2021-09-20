---@class EntityKnife:Entity @
local EntityKnife = {}

--------------------
-- Functions
--------------------

---@param Flags TearFlags @
function EntityKnife:AddTearFlags(Flags)
end

---@param Flags TearFlags @
function EntityKnife:ClearTearFlags(Flags)
end

---@return number @ (float)
function EntityKnife:GetKnifeDistance()
end

---@return number @ (float)
function EntityKnife:GetKnifeVelocity()
end

---@return number @ (int)
function EntityKnife:GetRenderZ()
end

---@param Flags TearFlags @
---@return boolean @
function EntityKnife:HasTearFlags(Flags)
end

---@return boolean @
function EntityKnife:IsFlying()
end
--- Used for master knifes, to get back to player.
function EntityKnife:Reset()
end

---@param Speed number @ (float)
function EntityKnife:SetPathFollowSpeed(Speed)
end

---@param Charge number @ (float)
---@param Range number @ (float)
function EntityKnife:Shoot(Charge, Range)
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
EntityKnife.Charge = nil

---@type number @(member) (float)
EntityKnife.MaxDistance = nil
--- Unit speed of path moving knifes.
---@type number @(member) (float)
EntityKnife.PathFollowSpeed = nil

---@type number @(member) (float)
EntityKnife.PathOffset = nil

---@type number @(member) (float)
EntityKnife.Rotation = nil

---@type number @(member) (float)
EntityKnife.RotationOffset = nil

---@type number @(member) (float)
EntityKnife.Scale = nil

---@type TearFlags @(member)
EntityKnife.TearFlags = nil
