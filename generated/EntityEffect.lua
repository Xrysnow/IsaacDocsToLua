---@class EntityEffect:Entity
local EntityEffect = {}

--------------------
-- Functions
--------------------

function EntityEffect:FollowParent()
end

---@return boolean @
function EntityEffect.IsPlayerCreep()
end

function EntityEffect:SetDamageSource()
end
--- For shockwaves.
---@param min number @ (float)
function EntityEffect:SetRadii(min)
end

function EntityEffect:SetTimeout()
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
EntityEffect.DamageSource = nil

---@type number @(member) (float)
EntityEffect.FallingAcceleration = nil

---@type number @(member) (float)
EntityEffect.FallingSpeed = nil

---@type boolean @(member)
EntityEffect.IsFollowing = nil

---@type number @(member) (int)
EntityEffect.LifeSpan = nil
--- for particles .dy
---@type number @(member) (float)
EntityEffect.m_Height = nil

---@type number @(member) (float)
EntityEffect.MaxRadius = nil
--- For shockwaves.
---@type number @(member) (float)
EntityEffect.MinRadius = nil
--- probably obsolete soon, in favor of m_SpriteOffset
---@type Vector @(member)
EntityEffect.ParentOffset = nil

---@type number @(member) (float)
EntityEffect.Rotation = nil

---@type number @(member) (float)
EntityEffect.Scale = nil
--- state var, may be used ad lib initialized to 0 in Init()
---@type number @(member) (int)
EntityEffect.State = nil

---@type number @(member) (int)
EntityEffect.Timeout = nil
