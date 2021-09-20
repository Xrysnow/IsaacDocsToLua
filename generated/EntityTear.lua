---@class EntityTear:Entity @
local EntityTear = {}

--------------------
-- Functions
--------------------

---@param Flags TearFlags @
function EntityTear:AddTearFlags(Flags)
end

---@param NewVariant number @ (int)
function EntityTear:ChangeVariant(NewVariant)
end

---@param Flags TearFlags @
function EntityTear:ClearTearFlags(Flags)
end

---@param Flags TearFlags @
---@return boolean @
function EntityTear:HasTearFlags(Flags)
end
--- Resets the tear sprite animation depending on scale.
function EntityTear:ResetSpriteScale()
end

---@param Intensity number @ (float)
function EntityTear:SetDeadEyeIntensity(Intensity)
end

---@param Multiplier number @ (float)
function EntityTear:SetKnockbackMultiplier(Multiplier)
end

---@param Offset Vector @
function EntityTear:SetParentOffset(Offset)
end

---@param Value number @ (int)
function EntityTear:SetWaitFrames(Value)
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
EntityTear.BaseDamage = nil

---@type number @(member) (float)
EntityTear.BaseScale = nil
--- true if tear bounced of something
---@type boolean @(member)
EntityTear.Bounced = nil
--- For Onan's strak and Dead Eye.
---@type boolean @(member)
EntityTear.CanTriggerStreakEnd = nil

---@type Vector @(member)
EntityTear.ContinueVelocity = nil

---@type number @(member) (float)
EntityTear.FallingAcceleration = nil

---@type number @(member) (float)
EntityTear.FallingSpeed = nil

---@type number @(member) (float)
EntityTear.Height = nil

---@type number @(member) (float)
EntityTear.HomingFriction = nil

---@type number @(member) (float)
EntityTear.KnockbackMultiplier = nil
--- Used for Position adjustment (vs PositionOffset which is a render offset)
---@type Vector @(member)
EntityTear.ParentOffset = nil

---@type Vector @(member)
EntityTear.PosDisplacement = nil

---@type number @(member) (float)
EntityTear.Rotation = nil

---@type number @(member) (float)
EntityTear.Scale = nil

---@type Vector @(member)
EntityTear.StickDiff = nil

---@type Entity @(member)
EntityTear.StickTarget = nil

---@type number @(member) (int)
EntityTear.StickTimer = nil

---@type TearFlags @(member)
EntityTear.TearFlags = nil
--- - In each run, the game keeps track of how many tears have been fired by the player in total. This is used for items such as Lead Pencil.
--- - `TearIndex` represents this tear counter.
--- - It is 0-indexed, meaning that the first tear fired by the player on a run will have a `TearIndex` of 0, the second tear fired by the player on a run will have a `TearIndex` of 1, and so on.
---@type number @(member) (int)
EntityTear.TearIndex = nil

---@type number @(member) (int)
EntityTear.WaitFrames = nil
