---@class ProjectileParams @
local ProjectileParams = {}

--------------------
-- Constructors
--------------------


--------------------
-- Variables
--------------------

---@type number @(member) (float)
ProjectileParams.Acceleration = nil

---@type number @(member) (int)
ProjectileParams.BulletFlags = nil

--- Uses [ProjectileFlags](enums/ProjectileFlags.md) to define the projectile attributes after the "Changed" state was activated.
--- The [ProjectileFlag](enums/ProjectileFlags.md).CHANGE_FLAGS_AFTER_TIMEOUT needs to be set to allow for this change to apply!
--- ____
--- **Informations about "Changed" State:**
--- 
--- Projectiles can have two states: normal (default) and changed.
--- 
--- 
--- Changed state activates when projectile's frame count reaches the value set in [ChangeTimeout](#ChangeTimeout). After that its flags get changed to what was set in [ChangeFlags](#ChangeFlags) and velocity will be resized to length set in [ChangeVelocity](#ChangeVelocity).
--- ____
--- Also used in: [EntityProjectile](EntityProjectile.md)
---@type number @(member) (int)
ProjectileParams.ChangeFlags = nil

--- Number of frames that need to elapse after spawn till the "Changed" state is activated.
--- The [ProjectileFlag](enums/ProjectileFlags.md).CHANGE_FLAGS_AFTER_TIMEOUT or CHANGE_VELOCITY_AFTER_TIMEOUT need to be set to allow for this change to apply!
--- ____
--- **Informations about "Changed" State:**
--- 
--- Projectiles can have two states: normal (default) and changed.
--- 
--- 
--- Changed state activates when projectile's frame count reaches the value set in [ChangeTimeout](#ChangeTimeout). After that its flags get changed to what was set in [ChangeFlags](#ChangeFlags) and velocity will be resized to length set in [ChangeVelocity](#ChangeVelocity).
--- ____
--- Also used in: [EntityProjectile](EntityProjectile.md)
---@type number @(member) (int)
ProjectileParams.ChangeTimeout = nil

--- Velocity value that gets applied when the "Changed" state is activated.
--- The [ProjectileFlag](enums/ProjectileFlags.md).CHANGE_VELOCITY_AFTER_TIMEOUT need to be set to allow for this change to apply!
--- ____
--- **Informations about "Changed" State:**
--- 
--- Projectiles can have two states: normal (default) and changed.
--- 
--- 
--- Changed state activates when projectile's frame count reaches the value set in [ChangeTimeout](#ChangeTimeout). After that its flags get changed to what was set in [ChangeFlags](#ChangeFlags) and velocity will be resized to length set in [ChangeVelocity](#ChangeVelocity).
--- ____
--- Also used in: [EntityProjectile](EntityProjectile.md)
---@type number @(member) (float)
ProjectileParams.ChangeVelocity = nil
--- Angle offset used by fire_projectiles PROJECTILES_CIRCLE type emitter. Random by default.
---@type number @(member) (float)
ProjectileParams.CircleAngle = nil

---@type Color @(member)
ProjectileParams.Color = nil
--- Use very small values for curving like 0.005.
---@type number @(member) (float)
ProjectileParams.CurvingStrength = nil

---@type number @(member) (float)
ProjectileParams.DepthOffset = nil
--- Direction bullets are being fired in Dot product of FireDirectionLimit, bullet direction must be &gt;= this value
---@type number @(member) (float)
ProjectileParams.DotProductLimit = nil

---@type number @(member) (float)
ProjectileParams.FallingAccelModifier = nil

---@type number @(member) (float)
ProjectileParams.FallingSpeedModifier = nil

---@type Vector @(member)
ProjectileParams.FireDirectionLimit = nil

---@type boolean @(member)
ProjectileParams.GridCollision = nil

---@type number @(member) (float)
ProjectileParams.HeightModifier = nil
--- Multiplier on normal homing strength. Unused if SMART bullet flag is not set.
---@type number @(member) (float)
ProjectileParams.HomingStrength = nil

---@type Vector @(member)
ProjectileParams.PositionOffset = nil

---@type number @(member) (float)
ProjectileParams.Scale = nil
--- For quad/quint/etc spread shots.
---@type number @(member) (float)
ProjectileParams.Spread = nil

---@type Vector @(member)
ProjectileParams.TargetPosition = nil

---@type number @(member) (int)
ProjectileParams.Variant = nil

---@type number @(member) (float)
ProjectileParams.VelocityMulti = nil
--- Used to offset the wiggle wave.
---@type number @(member) (int)
ProjectileParams.WiggleFrameOffset = nil
