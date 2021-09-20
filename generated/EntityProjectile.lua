---@class EntityProjectile:Entity @
local EntityProjectile = {}

--------------------
-- Functions
--------------------

--- See [ChangeFlags](#ChangeFlags).
---@param Flags number @ (int)
function EntityProjectile:AddChangeFlags(Flags)
end

---@param Value number @ (float)
function EntityProjectile:AddFallingAccel(Value)
end

---@param Value number @ (float)
function EntityProjectile:AddFallingSpeed(Value)
end

---@param Value number @ (float)
function EntityProjectile:AddHeight(Value)
end

--- Uses [ProjectileFlags](enums/ProjectileFlags.md) to define the projectile attributes.
---@param Flags number @ (int)
function EntityProjectile:AddProjectileFlags(Flags)
end

---@param Value number @ (float)
function EntityProjectile:AddScale(Value)
end

---@param Flags number @ (int)
function EntityProjectile:ClearProjectileFlags(Flags)
end

---@param Flags number @ (int)
---@return boolean @
function EntityProjectile:HasProjectileFlags(Flags)
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
EntityProjectile.Acceleration = nil

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
--- Also used in: [ProjectileParams()](ProjectileParams.md)
---@type number @(member) (int)
EntityProjectile.ChangeFlags = nil

--- Number of frames that need to elapse after spawn till the "Changed" state is activated.
--- The [ProjectileFlags](enums/ProjectileFlags.md).CHANGE_FLAGS_AFTER_TIMEOUT or CHANGE_VELOCITY_AFTER_TIMEOUT need to be set to allow for this change to apply!
--- ____
--- **Informations about "Changed" State:**
--- 
--- Projectiles can have two states: normal (default) and changed.
--- 
--- 
--- Changed state activates when projectile's frame count reaches the value set in [ChangeTimeout](#ChangeTimeout). After that its flags get changed to what was set in [ChangeFlags](#ChangeFlags) and velocity will be resized to length set in [ChangeVelocity](#ChangeVelocity).
--- ____
--- Also used in: [ProjectileParams()](ProjectileParams.md)
---@type number @(member) (int)
EntityProjectile.ChangeTimeout = nil

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
--- Also used in: [ProjectileParams()](ProjectileParams.md)
---@type number @(member) (float)
EntityProjectile.ChangeVelocity = nil

---@type number @(member) (float)
EntityProjectile.CurvingStrength = nil

---@type number @(member) (float)
EntityProjectile.Damage = nil

---@type number @(member) (float)
EntityProjectile.DepthOffset = nil

---@type number @(member) (float)
EntityProjectile.FallingAccel = nil

---@type number @(member) (float)
EntityProjectile.FallingSpeed = nil

--- Defines the height of a projectile. Height should be a negative value. Default is `-23`.
---@type number @(member) (float)
EntityProjectile.Height = nil

---@type number @(member) (float)
EntityProjectile.HomingStrength = nil

--- Uses [ProjectileFlags](enums/ProjectileFlags.md) to define the projectile attributes.
---@type ProjectileFlags @(member)
EntityProjectile.ProjectileFlags = nil

---@type number @(member) (float)
EntityProjectile.Scale = nil

---@type number @(member) (int)
EntityProjectile.WiggleFrameOffset = nil
