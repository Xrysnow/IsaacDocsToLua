---@class Entity @
local Entity = {}

--------------------
-- Functions
--------------------

--- Adds a burn-effect to an enemy. Duration is in Number of Frames. Damage is the Damage taken per frame.
--- 
--- - info "Duration infos"
---     The Duration must be a minimum of 2 frames. Every consecutive damage tick is 20 frames apart.
--- 
---     ```
---     2 Damage-ticks = 22 frames
---     3 = 42
---     4 = 62
---     ...
---     ```
--- 
--- + bug
---     Changing the Damage value doesn't seem to have an effect. It always deals the amount of damage of the player.
--- 
---     The Duration value seems to have an upper limit. For a PlayerEntity, its only lasting for the duration of one damage interval. For Entities its up to 6 damage-intervals.
--- 
--- - example "Example Code"
---     This code damages every entity in the room for 1 second with the damage source set to the player. The total damage dealt is 1.
--- 
---     ```lua
---     local player =Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddBurn(EntityRef(player), 30, 1)
---     end
---     ```
---
---@param Source EntityRef @
---@param Duration number @ (int)
---@param Damage number @ (float)
function Entity:AddBurn(Source, Duration, Damage)
end

--- Adds a charmed-effect to an enemy. Duration is in Number of Frames. Charmed enemies are friendly towards isaac and attack other enemies.
--- 
--- `Duration = -1` makes the effect permanent and the enemy will follow you even to different rooms.
--- 
--- - example "Example Code"
---     This code charms every entity in the room for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddCharmed(EntityRef(player), 30)
---     end
---     ```
---
---@param sourceEntity EntityRef @
---@param Duration number @ (int)
function Entity:AddCharmed(sourceEntity, Duration)
end

--- Adds a confusion effect to an entity.
--- 
--- - info "Duration infos"
---     The Duration has a maximum of 5 seconds
--- 
--- - example "Example Code"
---     This code confuses every entity in the room for 1 second while ignoring bosses.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddConfusion(EntityRef(player), 30, true)
---     end
---     ```
---
---@param Source EntityRef @
---@param Duration number @ (int)
---@param IgnoreBosses boolean @
function Entity:AddConfusion(Source, Duration, IgnoreBosses)
end

--- Add [EntityFlags](enums/EntityFlag.md) to the entity. Flags are used to add specific effects like poisoning or freeze. You can add multiple flags at the same time by bitwise-concatenating them.
--- 
--- - example "Example Code"
---     This code adds slowing and confusion to the enetity.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddEntityFlags(EntityFlag.FLAG_SLOW | EntityFlag.FLAG_CONFUSION)
---     end
---     ```
---@param Flags number @ (int)
function Entity:AddEntityFlags(Flags)
end

--- Adds a fear-effect to an entity.
--- 
--- - info "Duration infos"
---     The Duration has a maximum of 5 seconds
--- 
--- - example "Example Code"
---     This code frightens every entity in the room for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddFear(EntityRef(player), 30)
---     end
---     ```
---
---@param Source EntityRef @
---@param Duration number @ (int)
function Entity:AddFear(Source, Duration)
end

--- Freezes an entity, making it unable to move and attack.
--- 
--- - info "Duration infos"
---     The Duration has a maximum of 5 seconds
--- 
--- - example "Example Code"
---     This code freezes every entity in the room for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddFreeze(EntityRef(player), 30)
---     end
---     ```
---
---@param Source EntityRef @
---@param Duration number @ (int)
function Entity:AddFreeze(Source, Duration)
end
--- Heals an entity.
---@param HitPoints number @ (float)
function Entity:AddHealth(HitPoints)
end
--- Turns the entity into a gold statue (can't move, can't attack, drops coins when killed)
--- 
--- - info "Duration infos"
---     The Duration has a maximum of 5 seconds
--- 
--- + bug
---     The golden color applied to the entity will stay for the full duration passed into the function, despite the freeze effect only lasting for a maximum of 5 seconds.
--- 
--- - example "Example Code"
---     This code turns every entity in the room into gold for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddMidasFreeze(EntityRef(player), 30)
---     end
---     ```
---@param Source EntityRef @
---@param Duration number @ (int)
function Entity:AddMidasFreeze(Source, Duration)
end

--- Adds a poison effect to the entity.
--- 
--- - info "Duration infos"
---     The Duration must be a minimum of 2 frames. Every consecutive damage tick is 20 frames apart.
--- 
---     ```
---     2 Damage-ticks = 22 frames
---     3 = 42
---     4 = 62
---     ...
---     ```
--- 
--- + bug
---     Changing the Damage value doesnt seem to have an effect. It always deals the amount of damage of the player.
--- 
---     The Duration value seems to have an upper limit. For a PlayerEntity, its only lasting for the duration of one damage interval. For Entities its up to 6 damage-intervals.
--- 
--- - example "Example Code"
---     This code applies a poison effect to every entity in the room for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddPoison(EntityRef(player), 30, 1)
---     end
---     ```
---@param Source EntityRef @
---@param Duration number @ (int)
---@param Damage number @ (float)
function Entity:AddPoison(Source, Duration, Damage)
end

--- Adds a shrink effect to the entity.
--- 
--- - info "Duration infos"
---     The Duration has a maximum of 5 seconds
--- 
--- - example "Example Code"
---     This code shrinks every entity in the room for 1 second.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddShrink(EntityRef(player), 30)
---     end
---     ```
---@param Source EntityRef @
---@param Duration number @ (int)
function Entity:AddShrink(Source, Duration)
end
--- Makes the friction higher effectively slowing down the entity.
--- 
--- - example "Example Code"
---     This code slows every entity in the room for 1 second with 0.5 original speed and applying a red color to it.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     local slowColor = Color(1, 0, 0, 1, 0, 0, 0)
---     for i, entity in ipairs(Isaac.GetRoomEntities()) do
---     	entity:AddSlowing(EntityRef(player), 30, 0.5, slowColor)
---     end
---     ```
---@param Source EntityRef @
---@param Duration number @ (int)
---@param SlowValue number @ (float)
---@param SlowColor Color @
function Entity:AddSlowing(Source, Duration, SlowValue, SlowColor)
end

--- Adds velocity to the entity. This can be used to move him in a certain direktion (for example as a result of collision)
---@param Velocity Vector @
function Entity:AddVelocity(Velocity)
end
--- Explodes with gibs and blood.
function Entity:BloodExplode()
end
--- enemies keep the doors shut.
---@return boolean @
function Entity:CanShutDoors()
end

--- Removes all [EntityFlags](enums/EntityFlag.md) from the entity.
---@param Flags number @ (int)
function Entity:ClearEntityFlags(Flags)
end

--- Returns true, if the entity is able to collide with the grid.
---@return boolean @
function Entity:CollidesWithGrid()
end

--- Kills the entity and trigger its death animation.
function Entity:Die()
end

--- Returns true, if this entity still exists.
---@return boolean @
function Entity:Exists()
end
--- If the entity is a boss, it returns its specific boss id. If it isn't a boss it will return 0.
--- 
--- A boss ID is **NOT** equal to the entity Type, but is defined as a separate value in the entities2.xml file inside the "bossID" attribute.
---@return number @ (int)
function Entity:GetBossID()
end

--- Returns the Color object assosiated to this entity.
---@return Color @ (const)
function Entity:GetColor()
end

--- Returns a table that contains all data assosiated with the entity. This can be used to add custom data as well.
--- 
--- - note "Notes"
---     Data associated with an entity does only persists in between rooms, when the entity is a player, familiar or the entity has the "EntityFlag.FLAG_PERSISTENT" Flag active. Data does not persists in between exiting the game to a menu, or when restarting/finishing a run.
--- 
--- - example "Example Code"
---     This code adds custom data to an entity or prints it in the console if it exists.
--- 
---     ```lua
---     if type(entity:GetData()["MyValue"]) == type(nil) then -- checks, if the Data does exist already
---         entity:GetData()["MyValue"] = "Cool" -- assign a value to the data
---     else
---         print(entity:GetData()["MyValue"])  -- this will print "Cool" in the console
---     end
---     ```
---
---@return table @
function Entity:GetData()
end

--- Returns the assigned RNG object for the entity. This RNG is used to determine the items that are dropped on the entities death.
---@return RNG @
function Entity:GetDropRNG()
end

--- Get the [EntityFlags](enums/EntityFlag.md)of the entity. This will be a number which acts like a bitmask.
--- 
--- - example "Example Code"
---     This code prints something in the console, if the entity has a specific [EntityFlags](enums/EntityFlag.md).
--- 
---     ```lua
---     if entity:GetEntityFlags() & EntityFlag.FLAG_CONFUSION == EntityFlag.FLAG_CONFUSION then
---         print("This entity is confused!")
---     end
---     ```
---@return number @ (int)
function Entity:GetEntityFlags()
end

--- Returns the last entity spawned by this entity.
--- 
--- + note "Return behavior"
---     If no child is found, this function returns `nil`.
---@return Entity @
function Entity:GetLastChild()
end

--- Returns the last parent of this entity.
--- 
--- + note "Return behavior"
---     If no parent is found, this function returns `nil`.
---@return Entity @
function Entity:GetLastParent()
end

--- Return the sprite object of the entity.
---@return Sprite @
function Entity:GetSprite()
end

---@param Other Entity @
---@return boolean @
function Entity:HasCommonParentWithEntity(Other)
end

--- Returns true, if the entity has all named [EntityFlags](enums/EntityFlag.md) set.
--- 
--- - example "Example Code"
---     This code prints something in the console, if the entity has a specific [EntityFlags](enums/EntityFlag.md).
--- 
---     ```lua
---     if entity:HasEntityFlags(EntityFlag.FLAG_CONFUSION) then
---         print("This entity is confused!")
---     end
---     ```
---@param Flags number @ (int)
---@return boolean @
function Entity:HasEntityFlags(Flags)
end

---@return boolean @
function Entity:HasFullHealth()
end

--- 
--- - note "Notes"
---     The game adds taken damage to a damage buffer, which gets applied in the next frame. HasMortalDamage() returns true if the buffered damage is enough to kill the entity.
---     HasMortalDamage() will be updated additionally after TakeDamage() is called.
---@return boolean @
function Entity:HasMortalDamage()
end
--- return true for non background NPCs (ex: every enemy except fire and shopkeepers)
---@param includeDead boolean @
---@return boolean @
function Entity:IsActiveEnemy(includeDead)
end
--- bosses display health bar
---@return boolean @
function Entity:IsBoss()
end

---@return boolean @
function Entity:IsDead()
end
--- return true for NPCs that are not controlled by the player
---@return boolean @
function Entity:IsEnemy()
end

---@return boolean @
function Entity:IsFlying()
end
--- true every X frames
---@param Frame number @ (int)
---@param Offset number @ (int)
---@return boolean @
function Entity:IsFrame(Frame, Offset)
end

---@return boolean @
function Entity:IsInvincible()
end

---@return boolean @
function Entity:IsVisible()
end
--- return true for enemies that can be damaged
---@return boolean @
function Entity:IsVulnerableEnemy()
end
--- Kills the entity and makes a blood splat or gibs.
function Entity:Kill()
end

---@param Value number @ (float)
function Entity:MultiplyFriction(Value)
end

function Entity:PostRender()
end
--- Remove the entity from the game instantly, without doing any additional effects/animations.
function Entity:Remove()
end

--- Removes all Status Effects from the entity.
function Entity:RemoveStatusEffects()
end
--- Render the current sprite of the Entity at the current entity position + offset.
---@param Offset Vector @
function Entity:Render(Offset)
end

--- Render the shadow / shadow layer again.
---@param Offset Vector @
---@return boolean @
function Entity:RenderShadowLayer(Offset)
end

--- Set the colormask for the entity. This can be used to tint the sprites in different colors.
--- 
--- - example "Example Code"
---     This code changes the color of the sprite to a fully white sprite for 15 frames.
--- 
---     ```lua
---     entity:SetColor(Color(1, 1, 1, 1, 255, 255, 255), 15, 1, false, false)
---     ```
---
---@param Color Color @
---@param Duration number @ (int)
---@param Priority number @ (int)
---@param Fadeout boolean @
---@param Share boolean @
function Entity:SetColor(Color, Duration, Priority, Fadeout, Share)
end

--- Set the size of the entity.
---@param Size number @ (float)
---@param SizeMulti Vector @
---@param NumGridCollisionPoints number @ (int)
function Entity:SetSize(Size, SizeMulti, NumGridCollisionPoints)
end

---@param AnimationName string @
---@param FrameNum number @ (int)
function Entity:SetSpriteFrame(AnimationName, FrameNum)
end

---@param AnimationName string @
---@param FrameNum number @ (int)
function Entity:SetSpriteOverlayFrame(AnimationName, FrameNum)
end

--- 
--- - note "Notes"
---     The game adds taken damage to a damage buffer, which gets applied in the next frame. Therefore, TakeDamage() will not decrement the entities HP immediately upon calling the function. Rather, it is only updated on the frame afterwards.
---@param Damage number @ (float)
---@param Flags number @ (int)
---@param Source EntityRef @
---@param DamageCountdown number @ (int)
---@return boolean @
function Entity:TakeDamage(Damage, Flags, Source, DamageCountdown)
end
--- Used to cast an [Entity](Entity.md) object to an [EntityBomb](EntityBomb.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---@return EntityBomb @
function Entity:ToBomb()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityEffect](EntityEffect.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityEffect @
function Entity:ToEffect()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityFamiliar](EntityFamiliar.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityFamiliar @
function Entity:ToFamiliar()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityKnife](EntityKnife.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityKnife @
function Entity:ToKnife()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityLaser](EntityLaser.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityLaser @
function Entity:ToLaser()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityNPC](EntityNPC.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityNPC @
function Entity:ToNPC()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityPickup](EntityPickup.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityPickup @
function Entity:ToPickup()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityPlayer](EntityPlayer.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityPlayer @
function Entity:ToPlayer()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityProjectile](EntityProjectile.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityProjectile @
function Entity:ToProjectile()
end
--- Used to cast an [Entity](Entity.md) object to an [EntityTear](EntityTear.md) object.
--- 
--- + note "Return behavior"
---     If the conversion is not successful, this function returns `nil`.
---
---@return EntityTear @
function Entity:ToTear()
end

function Entity:Update()
end

--------------------
-- Variables
--------------------

---@type Entity @(member)
Entity.Child = nil

---@type number @(member) (float)
Entity.CollisionDamage = nil

--- Get/Set the depth-offset of the entity. This value is added to the Y Position of the entity, which is then used to determine the rendering order of each entity. Default is 0 for all entities.
--- 
--- - example "Example Code"
---     This code explains how this variable works.
--- 
---     ```lua
---     entity1.Position.Y -- => 50
---     entity2.Position.Y -- => 45
---     -- Entity1 is rendered in front of Entity2
--- 
---     entity1.DepthOffset = -10
---     -- new Entity1 renderYPosition => 40
---     -- Entity2 is rendered in front of Entity1
---     ```
---
---@type number @(member) (float)
Entity.DepthOffset = nil

--- Get the Seed of the Drop RNG.
---@type number @(member) (int)
Entity.DropSeed = nil

---@type EntityCollisionClass @(member)
Entity.EntityCollisionClass = nil

---@type boolean @(member)
Entity.FlipX = nil

---@type number @(member) (int)
Entity.FrameCount = nil
--- loaded from entity config
---@type number @(member) (float)
Entity.Friction = nil

---@type GridCollisionClass @(member)
Entity.GridCollisionClass = nil

--- 
--- - note "Notes"
---     The HitPoints value is not decremented immediately upon taking damage like you would expect. Rather, it is only updated on the frame after the entity takes damage.
---@type number @(member) (float)
Entity.HitPoints = nil

---@type number @(member) (int)
Entity.Index = nil

---@type number @(member) (int)
Entity.InitSeed = nil

---@type number @(member) (float)
Entity.Mass = nil

---@type number @(member) (float)
Entity.MaxHitPoints = nil

---@type Entity @(member)
Entity.Parent = nil

---@type Vector @(member)
Entity.Position = nil

---@type Vector @(member)
Entity.PositionOffset = nil

--- 
--- + bug "Bugs"
---     This variable doesn't seem to do anything useful. Use DepthOffset instead.
---@type number @(member) (int)
Entity.RenderZOffset = nil
--- Returns the size of the hitbox on an entity.
---
---@type number @(member) (float)
Entity.Size = nil

---@type Vector @(member)
Entity.SizeMulti = nil

---@type Entity @(member)
Entity.SpawnerEntity = nil

---@type EntityType @(member)
Entity.SpawnerType = nil

---@type number @(member) (int)
Entity.SpawnerVariant = nil

---@type number @(member) (int)
Entity.SpawnGridIndex = nil

---@type Color @(member)
Entity.SplatColor = nil

---@type Vector @(member)
Entity.SpriteOffset = nil

---@type number @(member) (float)
Entity.SpriteRotation = nil
--- Get/set the scale of the enemy sprite. This can be used to also Scale the shadow of the entity.
---@type Vector @(member)
Entity.SpriteScale = nil

---@type number @(member) (int)
Entity.SubType = nil

---@type Entity @(member)
Entity.Target = nil

---@type Vector @(member)
Entity.TargetPosition = nil

---@type EntityType @(member)
Entity.Type = nil

---@type number @(member) (int)
Entity.Variant = nil

---@type Vector @(member)
Entity.Velocity = nil

---@type boolean @(member)
Entity.Visible = nil
