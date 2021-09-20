---@class EntityEffect:Entity @
local EntityEffect = {}

--------------------
-- Functions
--------------------

---@param Parent Entity @
function EntityEffect:FollowParent(Parent)
end

---@param Variant number @ (int)
---@return boolean @
function EntityEffect.IsPlayerCreep(Variant)
end

---@param DamageSource EntityType @
function EntityEffect:SetDamageSource(DamageSource)
end
--- For shockwaves.
---@param min number @ (float)
---@param max number @ (float)
function EntityEffect:SetRadii(min, max)
end

---@param Timeout number @ (int)
function EntityEffect:SetTimeout(Timeout)
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
