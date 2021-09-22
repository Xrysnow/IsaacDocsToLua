---@class EntityNPC:Entity @
local EntityNPC = {}

--------------------
-- Functions
--------------------

---@param HorizontalAnim string @
---@param VerticalAnim string @
---@param SpeedThreshold number @ (float)
function EntityNPC:AnimWalkFrame(HorizontalAnim, VerticalAnim, SpeedThreshold)
end

---@param DistanceLimit number @ (float)
---@return Vector @
function EntityNPC:CalcTargetPosition(DistanceLimit)
end

---@param Velocity Vector @
---@return boolean @
function EntityNPC:CanBeDamagedFromVelocity(Velocity)
end

---@return boolean @
function EntityNPC:CanReroll()
end
--- fire a number of projectiles, optionally targeting the player direction is randomized, or slightly randomized when targeting the player FallingAccelModifier can be used to make projectiles fall faster to the ground returns a pointer to the projectile spawned last (useful e.g. when NumProjectiles=1)
---@param NumProjectiles number @ (int)
---@param TargetPos Vector @
---@param TrajectoryModifier number @ (float)
---@param Params ProjectileParams @
---@return EntityProjectile @
function EntityNPC:FireBossProjectiles(NumProjectiles, TargetPos, TrajectoryModifier, Params)
end

--- - ProjectilesMode
--- >    * 0 : single projectile
--- >    * 1 : two projectiles (uses params.Spread)
--- >    * 2 : three projectiles (uses params.Spread)
--- >    * 3 : three projectiles (uses params.Spread, more spread out?)
--- >    * 4 : four projectiles (uses params.Spread)
--- >    * 5 : five projectiles (uses params.Spread)
--- >    * 6 : four projectiles in a + pattern (uses velocity.x as speed)
--- >    * 7 : four projectiles in a x pattern (uses velocity.x as speed)
--- >    * 8 : eight projectiles in a star pattern (uses velocity.x as speed)
--- >    * 9 : N projectiles in a circle (velocity.x = speed, velocity.y = N, params.FireDirectionLimit and params.DotProductLimit to fire in an arc only)
---@param Pos Vector @
---@param Velocity Vector @
---@param Mode ProjectilesMode @
---@param Params ProjectileParams @
function EntityNPC:FireProjectiles(Pos, Velocity, Mode, Params)
end
--- Used to redirect close door enemies to any enemies for friendly npcs.
---@return number @ (int)
function EntityNPC:GetAliveEnemyCount()
end

--- 
--- - note "Notes"
--- >    This will return the boss color idx reduced by 1. To get the actual color as set in bosscolors.xml, add +1 to the result.
---@return number @ (int)
function EntityNPC:GetBossColorIdx()
end

--- 
--- - note "Notes"
--- >    A list of Champion colors can be found here : [ChampionColorIdx](https://bindingofisaacrebirth.gamepedia.com/Monsters#Champions)
---@return number @ (int)
function EntityNPC:GetChampionColorIdx()
end
--- if there are no modifiers (best friend) this will return the player
---@return Entity @
function EntityNPC:GetPlayerTarget()
end

---@return boolean @
function EntityNPC:IsBoss()
end

---@return boolean @
function EntityNPC:IsChampion()
end
--- For entities with unique death animation, like Flush! vs poop enemies.
function EntityNPC:KillUnique()
end
--- Forces a non champion to become a champion, resets hp to max hp.
--- 
--- **ChampionColorIdx**: The type of champion to turn this enemy into (-1 results in a random champion type)
--- 
--- **Init**: Set to true when called while initializing the enemy, false otherwise
---@param Seed number @ (int)
---@param ChampionColorIdx ChampionColor @ (default -1)
---@param Init boolean @ (default false)
function EntityNPC:MakeChampion(Seed, ChampionColorIdx, Init)
end

---@param Size number @ (float)
---@return EntityEffect @
function EntityNPC:MakeSplat(Size)
end

--- Morph the current entity into another one. [ChampionColorIdx](https://bindingofisaacrebirth.gamepedia.com/Monsters#Champions) can be used to turn the entity into a champion. Use `-1` to turn it into a regular entity.
--- A list of Champion colors can be found here : [ChampionColorIdx](https://bindingofisaacrebirth.gamepedia.com/Monsters#Champions)
--- 
--- - example "Example Code"
--- >    This code turns an entity into a gaper.
---     ```lua
--- >    entity:ToNPC():Morph(EntityType.ENTITY_GAPER , 0, 0,-1)
---     ```
---@param type EntityType @
---@param Variant number @ (int)
---@param SubType number @ (int)
---@param ChampionColorIdx number @ (int)
---@return boolean @
function EntityNPC:Morph(type, Variant, SubType, ChampionColorIdx)
end

---@param ID SoundEffect @
---@param Volume number @ (float)
---@param FrameDelay number @ (int)
---@param Loop boolean @
---@param Pitch number @ (float)
function EntityNPC:PlaySound(ID, Volume, FrameDelay, Loop, Pitch)
end

---@param GroupIdx number @ (int)
---@return EntityList @
function EntityNPC:QueryNPCsGroup(GroupIdx)
end

---@param SpawnerType EntityType @
---@param Type EntityType @
---@param OnlyEnemies boolean @
---@return EntityList @
function EntityNPC:QueryNPCsSpawnerType(SpawnerType, Type, OnlyEnemies)
end

---@param Type EntityType @
---@param Variant number @ (int)
---@return EntityList @
function EntityNPC:QueryNPCsType(Type, Variant)
end

function EntityNPC:ResetPathFinderTarget()
end

---@param Position Vector @
---@param Spawner Entity @
---@param TargetPos Vector @
---@param Big boolean @
---@param YOffset number @ (float)
---@return EntityNPC @
function EntityNPC.ThrowSpider(Position, Spawner, TargetPos, Big, YOffset)
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
EntityNPC.CanShutDoors = nil

---@type EntityNPC @(member)
EntityNPC.ChildNPC = nil

---@type Entity @(member)
EntityNPC.EntityRef = nil
--- Used to identify multichunks groups.
---@type number @(member) (int)
EntityNPC.GroupIdx = nil
--- General usage int for AI specific actions. The effect and usage is manually defined for each entity. It can also not be used at all for some.
--- 
--- **Example**: The Frail sets I2 to 1 when entering the second phase.
---@type number @(member) (int)
EntityNPC.I1 = nil
--- General usage int for AI specific actions. The effect and usage is manually defined for each entity. It can also not be used at all for some.
--- 
--- **Example**: The Frail sets I2 to 1 when entering the second phase.
---@type number @(member) (int)
EntityNPC.I2 = nil
--- parent entity, for multi-entity NPCs like Larry Jr.
---@type EntityNPC @(member)
EntityNPC.ParentNPC = nil

---@type PathFinder @(member)
EntityNPC.Pathfinder = nil
--- projectiles can fire again when it reaches 0
---@type number @(member) (int)
EntityNPC.ProjectileCooldown = nil
--- &gt;0: projectile will be fired in n frames
---@type number @(member) (int)
EntityNPC.ProjectileDelay = nil

---@type number @(member) (float)
EntityNPC.Scale = nil

---@type number @(member) (int)
EntityNPC.State = nil

---@type number @(member) (int)
EntityNPC.StateFrame = nil
--- General usage Vector for AI specific actions. Initialized to be Vector(0,0). The effect and usage is manually defined for each entity. It can also not be used at all for some.
---@type Vector @(member)
EntityNPC.V1 = nil
--- General usage Vector for AI specific actions. Initialized to be Vector(0,0). The effect and usage is manually defined for each entity. It can also not be used at all for some.
---@type Vector @(member)
EntityNPC.V2 = nil
