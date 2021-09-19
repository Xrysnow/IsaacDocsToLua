---@class EntityKnife:Entity
local EntityKnife = {}

--------------------
-- Functions
--------------------

function EntityKnife:AddTearFlags()
end

function EntityKnife:ClearTearFlags()
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

---@return boolean @
function EntityKnife:HasTearFlags()
end

---@return boolean @
function EntityKnife:IsFlying()
end
--- Used for master knifes, to get back to player.
function EntityKnife:Reset()
end

function EntityKnife:SetPathFollowSpeed()
end

---@param Charge number @ (float)
function EntityKnife:Shoot(Charge)
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
