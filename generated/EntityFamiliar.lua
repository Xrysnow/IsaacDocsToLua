---@class EntityFamiliar:Entity
local EntityFamiliar = {}

--------------------
-- Functions
--------------------

function EntityFamiliar:AddCoins()
end

function EntityFamiliar:AddHearts()
end

function EntityFamiliar:AddKeys()
end
--- Adds to delayed. This doesn't remove other flags!
function EntityFamiliar:AddToDelayed()
end
--- Adds to followers. This doesn't remove other flags!
function EntityFamiliar:AddToFollowers()
end
--- Adds to orbitals. This doesn't remove other flags!
function EntityFamiliar:AddToOrbit()
end

--- Shoots a projectile from the center of the familiar in the direction you defined.
--- If used on a familiar that shoots multiple projectiles (example: harlequin baby), this function will only return the left most projectile based on the direction. If used on familiars with special tears (example: Lil Brimstone,...), this will just shoot a regular tear.
--- This function will not play the shoot animation of the familiar.
---@return EntityTear @
function EntityFamiliar:FireProjectile()
end

function EntityFamiliar:FollowParent()
end

function EntityFamiliar:FollowPosition()
end

---@return Vector @
function EntityFamiliar.GetOrbitDistance()
end

--- Returns the position of an orbiting familiar relative to the player's position. Returns `Vector(0,0) if its a normal familiar.`
--- The "pos" argument is used as an offset.
---@return Vector @
function EntityFamiliar:GetOrbitPosition()
end

function EntityFamiliar:MoveDelayed()
end

function EntityFamiliar:MoveDiagonally()
end
--- **Flags**: A combination of the following flags (none of these are set by default)
--- 
---     * 1: Allow switching to a better target even if we already have one
---     * 2: Don't prioritize enemies that are close to our owner
---     * 4: Prioritize enemies with higher HP
---     * 8: Prioritize enemies with lower HP
---     * 16: Give lower priority to our current target (this makes us more likely to switch between targets)
--- 
--- **ConeDir**: If ~= Vector.Zero, searches for targets in a cone pointing in this direction
--- 
--- **ConeAngle**: If ConeDir ~= Vector.Zero, sets the half angle of the search cone in degrees (45 results in a search angle of 90 degrees)
---@param MaxDistance number @ (float)
---@param FrameInterval number @ (int) (default 13)
---@param Flags number @ (int) (default 0)
---@param ConeDir Vector @ (default Vector.Zero)
function EntityFamiliar:PickEnemyTarget(MaxDistance, FrameInterval, Flags, ConeDir)
end

function EntityFamiliar:PlayChargeAnim()
end

function EntityFamiliar:PlayFloatAnim()
end

function EntityFamiliar:PlayShootAnim()
end
--- Returns the number of familiars in that layer.
---@param Layer number @ (int)
---@return number @ (int)
function EntityFamiliar:RecalculateOrbitOffset(Layer)
end

function EntityFamiliar:RemoveFromDelayed()
end

function EntityFamiliar:RemoveFromFollowers()
end

function EntityFamiliar:RemoveFromOrbit()
end

--- 
--- + bug "Bugs"
---     This function does not seem to work.
function EntityFamiliar:Shoot()
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
EntityFamiliar.Coins = nil

---@type number @(member) (int)
EntityFamiliar.FireCooldown = nil

---@type number @(member) (int)
EntityFamiliar.HeadFrameDelay = nil

---@type number @(member) (int)
EntityFamiliar.Hearts = nil

---@type number @(member) (int)
EntityFamiliar.Keys = nil

---@type Direction @(member)
EntityFamiliar.LastDirection = nil

---@type Direction @(member)
EntityFamiliar.MoveDirection = nil

--- Can be used to override the angular position of the familiar on its orbit based on the initial starting position of the orbit.
--- 
--- - example "Example Code"
---     This code will make all of your orbitals move as a tight wall around you.
--- 
---     ```lua
---     for i,v in ipairs(Isaac.GetRoomEntities()) do
---         if v.Type==3 then
---             v:ToFamiliar().OrbitAngleOffset = 0.25*i
---         end
---     end
---     ```
--- 
---     Result: ![angle offset](images/example_familiar_angleOffset.png)
---@type number @(member) (float)
EntityFamiliar.OrbitAngleOffset = nil

--- Defines the orbit of the familiar, if its an orbital. The Vector is interpreted as the dimensions of the circle/oval orbit. Example: `Vector(110,90)` is the orbital of "Forever alone".
---@type Vector @(member)
EntityFamiliar.OrbitDistance = nil

---@type EntityPlayer @(member)
EntityFamiliar.Player = nil

---@type number @(member) (int)
EntityFamiliar.RoomClearCount = nil

---@type Direction @(member)
EntityFamiliar.ShootDirection = nil

---@type number @(member) (int)
EntityFamiliar.State = nil
