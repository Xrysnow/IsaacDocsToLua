---@class EntityFamiliar:Entity @
local EntityFamiliar = {}

--------------------
-- Functions
--------------------

---@param Value number @ (int)
function EntityFamiliar:AddCoins(Value)
end

---@param Hearts number @ (int)
function EntityFamiliar:AddHearts(Hearts)
end

---@param Keys number @ (int)
function EntityFamiliar:AddKeys(Keys)
end
--- Adds to delayed. This doesn't remove other flags!
function EntityFamiliar:AddToDelayed()
end
--- Adds to followers. This doesn't remove other flags!
function EntityFamiliar:AddToFollowers()
end
--- Adds to orbitals. This doesn't remove other flags!
---@param Layer number @ (int)
function EntityFamiliar:AddToOrbit(Layer)
end

--- Shoots a projectile from the center of the familiar in the direction you defined.
--- If used on a familiar that shoots multiple projectiles (example: harlequin baby), this function will only return the left most projectile based on the direction. If used on familiars with special tears (example: Lil Brimstone,...), this will just shoot a regular tear.
--- This function will not play the shoot animation of the familiar.
---@param Dir Vector @
---@return EntityTear @
function EntityFamiliar:FireProjectile(Dir)
end

function EntityFamiliar:FollowParent()
end

---@param Pos Vector @
function EntityFamiliar:FollowPosition(Pos)
end

---@param Layer number @ (int)
---@return Vector @
function EntityFamiliar.GetOrbitDistance(Layer)
end

--- Returns the position of an orbiting familiar relative to the player's position. Returns `Vector(0,0) if its a normal familiar.`
--- The "pos" argument is used as an offset.
---@param Pos Vector @
---@return Vector @
function EntityFamiliar:GetOrbitPosition(Pos)
end

---@param NumFrames number @ (int)
function EntityFamiliar:MoveDelayed(NumFrames)
end

---@param Speed number @ (float)
function EntityFamiliar:MoveDiagonally(Speed)
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
---@param ConeAngle number @ (float) (default 15)
function EntityFamiliar:PickEnemyTarget(MaxDistance, FrameInterval, Flags, ConeDir, ConeAngle)
end

---@param Dir Direction @
function EntityFamiliar:PlayChargeAnim(Dir)
end

---@param Dir Direction @
function EntityFamiliar:PlayFloatAnim(Dir)
end

---@param Dir Direction @
function EntityFamiliar:PlayShootAnim(Dir)
end
--- Returns the number of familiars in that layer.
---@param Layer number @ (int)
---@param Add boolean @
---@return number @ (int)
function EntityFamiliar:RecalculateOrbitOffset(Layer, Add)
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
