---@class EntityLaser:Entity @
local EntityLaser = {}

--------------------
-- Functions
--------------------

---@param Flags TearFlags @
function EntityLaser:AddTearFlags(Flags)
end

---@param Start Vector @
---@param Dir Vector @
---@param PositionOffset Vector @
---@param Parent Entity @
---@param Margin number @ (float)
---@return Vector @
function EntityLaser.CalculateEndPoint(Start, Dir, PositionOffset, Parent, Margin)
end

---@param Flags TearFlags @
function EntityLaser:ClearTearFlags(Flags)
end

---@return Vector @ (const)
function EntityLaser:GetEndPoint()
end

---@return HomingLaser.SampleList @ (const)
function EntityLaser:GetNonOptimizedSamples()
end

---@return number @ (int)
function EntityLaser:GetRenderZ()
end

---@return HomingLaser.SampleList @ (const)
function EntityLaser:GetSamples()
end

---@param Flags TearFlags @
---@return boolean @
function EntityLaser:HasTearFlags(Flags)
end

---@return boolean @
function EntityLaser:IsCircleLaser()
end

---@return boolean @
function EntityLaser:IsSampleLaser()
end

---@param Delay number @ (int)
---@param AngleDegrees number @ (float)
---@param RotationSpd number @ (float)
---@param TimeoutComplete boolean @
function EntityLaser:SetActiveRotation(Delay, AngleDegrees, RotationSpd, TimeoutComplete)
end

---@param Chance number @ (float)
function EntityLaser:SetBlackHpDropChance(Chance)
end

---@param Type LaserHomingType @
function EntityLaser:SetHomingType(Type)
end

---@param Distance number @ (float)
function EntityLaser:SetMaxDistance(Distance)
end

---@param Value boolean @
function EntityLaser:SetMultidimensionalTouched(Value)
end

---@param Value boolean @
function EntityLaser:SetOneHit(Value)
end

---@param Value number @ (int)
function EntityLaser:SetTimeout(Value)
end
--- static helper to simplify spawning lasers
---@param Variant number @ (int)
---@param SourcePos Vector @
---@param AngleDegrees number @ (float)
---@param Timeout number @ (int)
---@param PosOffset Vector @
---@param Source Entity @
---@return EntityLaser @
function EntityLaser.ShootAngle(Variant, SourcePos, AngleDegrees, Timeout, PosOffset, Source)
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
EntityLaser.Angle = nil

---@type number @(member) (float)
EntityLaser.AngleDegrees = nil
--- For maw of void.
---@type number @(member) (float)
EntityLaser.BlackHpDropChance = nil

---@type Entity @(member)
EntityLaser.BounceLaser = nil
--- My Reflection.
---@type number @(member) (float)
EntityLaser.CurveStrength = nil
--- Set on children of other lasers, for instance Rubber Cement reflections. Disables m_ParentOffset.
---@type boolean @(member)
EntityLaser.DisableFollowParent = nil
--- Will hold the endpoint so it will not need to be recalculated when accessed from extern.
---@type Vector @(member)
EntityLaser.EndPoint = nil

---@type boolean @(member)
EntityLaser.FirstUpdate = nil
--- true if laser can be clipped by grid entities and it was clipped at that frame.
---@type boolean @(member)
EntityLaser.GridHit = nil

---@type HomingLaser @(member)
EntityLaser.HomingLaser = nil

---@type LaserHomingType @(member)
EntityLaser.HomingType = nil

---@type boolean @(member)
EntityLaser.IsActiveRotating = nil

---@type number @(member) (float)
EntityLaser.LaserLength = nil

---@type number @(member) (float)
EntityLaser.LastAngleDegrees = nil
--- Used to trim brimstone for Azazel (0 - off)
---@type number @(member) (float)
EntityLaser.MaxDistance = nil
--- Laser hits only once.
---@type boolean @(member)
EntityLaser.OneHit = nil

---@type Vector @(member)
EntityLaser.ParentOffset = nil

---@type number @(member) (float)
EntityLaser.Radius = nil

---@type number @(member) (float)
EntityLaser.RotationDegrees = nil

---@type number @(member) (int)
EntityLaser.RotationDelay = nil

---@type number @(member) (float)
EntityLaser.RotationSpd = nil

---@type boolean @(member)
EntityLaser.SampleLaser = nil

---@type boolean @(member)
EntityLaser.Shrink = nil
--- Some lasers have a bit of random variation in rotation so they need to remember their starting point.
---@type number @(member) (float)
EntityLaser.StartAngleDegrees = nil
--- 
---@type TearFlags @(member)
EntityLaser.TearFlags = nil

---@type number @(member) (int)
EntityLaser.Timeout = nil
