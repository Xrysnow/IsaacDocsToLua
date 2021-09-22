---@class Room @
local Room = {}

--------------------
-- Functions
--------------------
--- Returns 2 values:
--- 		* boolean: true if there are no obstructions between Pos1 and Pos2, false otherwise
--- 		* Vector: first hit position from Pos1 to Pos2 (returns Pos2 if the line didn't hit anything)
--- 
--- + note "Notes"
--- >    Linecheck Modes:
--- 
--- >    **0** : makes the line check collide with anything that impedes ground movement
--- 
--- >    **1** : is a cheaper version of 0, but is not as reliable
--- 
--- >    **2** : is used for explosions, it only collides with walls and indestructible blocks
--- 
--- >    **3** : is a line check that only collides with obstacles that can block projectiles
---@param Pos1 Vector @
---@param Pos2 Vector @
---@param Mode number @ (LinecheckMode)
---@param GridPathThreshold number @ (int) (default 0)
---@param IgnoreWalls boolean @ (default false)
---@param IgnoreCrushable boolean @ (default false)
---@return boolean @
function Room:CheckLine(Pos1, Pos2, Mode, GridPathThreshold, IgnoreWalls, IgnoreCrushable)
end
--- Damage Grid Entities currently this concerns [GridEntityPoop](GridEntityPoop.md) and GridEntity_Fire returns true if damageable entity was found (and possibly damaged) return false if not used by tears, bombs, some NPCs, etc
---@param Index number @ (int)
---@param Damage number @ (int)
---@return boolean @
function Room:DamageGrid(Index, Damage)
end
--- calls DamageGrid internally to damage Poop/Fire removes rocks and opens secret doors returns true if something was destroyed returns false if not used for explosions mostly
---@param Index number @ (int)
---@param Immediate boolean @
---@return boolean @
function Room:DestroyGrid(Index, Immediate)
end

---@param Duration number @ (int)
---@param Count number @ (int)
function Room:EmitBloodFromWalls(Duration, Count)
end
--- Starting from Pos, will try to find a free spawn position where a newly spawned pickup item will not collide with already spawned pickup items, or solid grid elements such as rocks, or pits The returned position will be aligned to the grid. If no free position is found, the original position (aligned to the grid) is returned.
---@param Pos Vector @
---@param InitialStep number @ (float) (default 0)
---@param AvoidActiveEntities boolean @ (default false)
---@param AllowPits boolean @ (default false)
---@return Vector @
function Room:FindFreePickupSpawnPosition(Pos, InitialStep, AvoidActiveEntities, AllowPits)
end
--- Finds the nearest free tile based on position Stops immediately if the tile sampled has a squared distance less than DistanceThresholdSQ
---@param Pos Vector @
---@param DistanceThreshold number @ (float)
---@return Vector @
function Room:FindFreeTilePosition(Pos, DistanceThreshold)
end

---@return number @ (int)
function Room:GetAliveBossesCount()
end

---@return number @ (int)
function Room:GetAliveEnemiesCount()
end

---@return number @ (int)
function Room:GetAwardSeed()
end

--- Returns the BackdropType (Background) of the current room.
--- 
--- - note "BackdropTypes (corresponds to ids in backdrops.xml)"
--- 
--- >    | ID | Backdrop |
--- >    |--:|:--|
--- >    |1|Basement|
--- >    |2|Cellar|
--- >    |3|Burning Basement|
--- >    |4|Caves|
--- >    |5|Catacombs|
--- >    |6|Drowned Caves|
--- >    |7|Depths|
--- >    |8|Necropolis|
--- >    |9|Dank Depths|
--- >    |10|Womb|
--- >    |11|Utero|
--- >    |12|Scarred Womb|
--- >    |13|Blue Womb (Hush)|
--- >    |14|Sheol|
--- >    |15|Cathedral|
--- >    |16|Dark Room|
--- >    |17|Chest|
--- >    |18|Mega Satan|
--- >    |19|Library|
--- >    |20|Shop|
--- >    |21|Isaac's Room|
--- >    |22|Barren Room|
--- >    |23|Secret Room|
--- >    |24|Dice Room|
--- >    |25|Arcade|
--- >    |26|Error Room|
--- >    |27|Blue Secret|
--- >    |28|Ultra Greed Shop|
---@return number @ (int)
function Room:GetBackdropType()
end
--- Returns the boss id of the second boss in a double trouble room. returns 0 otherwise.
--- 
--- This will return the subtype of the current room, since this value is used to determine the boss-portrait to display when entering.
--- 
--- A boss ID is **NOT** equal to the entity Type of the boss, but is defined as a separate value in the entities2.xml file inside the "bossID" attribute.
---@return number @ (int)
function Room:GetBossID()
end
--- returns bottom right position inside of walls
---@return Vector @
function Room:GetBottomRightPos()
end

---@return number @ (int)
function Room:GetBrokenWatchState()
end
--- returns the room center position
---@return Vector @
function Room:GetCenterPos()
end
--- converts float position (x,y) to grid index (similar to ingrid) clamps the values if out of bounds
---@param Position Vector @
---@return number @ (int)
function Room:GetClampedGridIndex(Position)
end
--- returns Pos clamped to room borders inside of walls
---@param Pos Vector @
---@param Margin number @ (float)
---@return Vector @
function Room:GetClampedPosition(Pos, Margin)
end

---@return number @ (int)
function Room:GetDecorationSeed()
end

---@return number @ (int)
function Room:GetDeliriumDistance()
end

---@return number @ (float)
function Room:GetDevilRoomChance()
end
--- Returns the [GridEntityDoor](GridEntityDoor.md) at the given [DoorSlot](enums/DoorSlot.md) position. Returns nil if no Door is located there.
---
---@param Slot DoorSlot @
---@return GridEntityDoor @
function Room:GetDoor(Slot)
end

---@param Slot DoorSlot @
---@return Vector @
function Room:GetDoorSlotPosition(Slot)
end

---@return number @ (int)
function Room:GetDungeonRockIdx()
end

--- - Bug
--- >    This function is bugged and you should use [Isaac.GetRoomEntities()](Isaac.md#getroomentities) instead!
---
---@return EntityList @
function Room:GetEntities()
end

---@return number @ (int)
function Room:GetFrameCount()
end

--- Returns the [GridCollisionClass](enums/GridCollisionClass.md) of the grid entity at this grid index.
---@param GridIndex number @ (int)
---@return GridCollisionClass @
function Room:GetGridCollision(GridIndex)
end

--- Returns the [GridCollisionClass](enums/GridCollisionClass.md) of the grid entity at this position in the room.
---@param Pos Vector @
---@return GridCollisionClass @
function Room:GetGridCollisionAtPos(Pos)
end

--- Returns the [GridEntity](GridEntity.md) at this grid index. Returns `nil`, when no [GridEntity](GridEntity.md) is found.
---@param Index number @ (int)
---@return GridEntity @
function Room:GetGridEntity(Index)
end

--- Returns the [GridEntity](GridEntity.md) at this position in the room. Returns `nil`, when no [GridEntity](GridEntity.md) is found.
---@param Position Vector @
---@return GridEntity @
function Room:GetGridEntityFromPos(Position)
end

---@return number @ (int)
function Room:GetGridHeight()
end
--- converts float position (x,y) to grid index returns -1 for invalid index
---@param Position Vector @
---@return number @ (int)
function Room:GetGridIndex(Position)
end
--- Grid path is a property of a grid square that represents the "cost" of traveling over this grid cell. Its used for the path finding algorithms which search the cheapest path to a given location. If a grid cell has a value higher than 0, it can prevent grid entities from being spawned on that square. Thus, you can get around it by resetting the grid path to 0, and then spawning the grid entity.
--- 
--- Some enemies set it to 900 when they path over a square. Fireplaces set it to 950. Most grid entities set it to 1000 or higher, in order to prevent enemies to travel through them.
---@param Index number @ (int)
---@return number @ (int)
function Room:GetGridPath(Index)
end

---@param Position Vector @
---@return number @ (int)
function Room:GetGridPathFromPos(Position)
end
--- converts grid index to float (x,y) position undefined behavior for invalid index
---@param GridIndex number @ (int)
---@return Vector @
function Room:GetGridPosition(GridIndex)
end

---@return number @ (int)
function Room:GetGridSize()
end

---@return number @ (int)
function Room:GetGridWidth()
end
--- returns the hit position for a laser beam (Technology, Robo-Baby) usually, the first poop, fire, rock, TNT, or wall encountered on a straight line
---@param Pos Vector @
---@param Dir Vector @
---@return Vector @
function Room:GetLaserTarget(Pos, Dir)
end

---@return number @ (float)
function Room:GetLightingAlpha()
end

--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@return LRoomAreaDesc @
function Room:GetLRoomAreaDesc()
end

--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@return LRoomTileDesc @
function Room:GetLRoomTileDesc()
end

---@return number @ (int)
function Room:GetNextShockwaveId()
end
--- returns random non tile aligned position
---@param Margin number @ (float)
---@return Vector @
function Room:GetRandomPosition(Margin)
end

---@param Seed number @ (int)
---@return number @ (int)
function Room:GetRandomTileIndex(Seed)
end

---@return boolean @
function Room:GetRedHeartDamage()
end
--- The camera scroll offset and screen shake offsets are both represented here.
---@return Vector @ (const)
function Room:GetRenderScrollOffset()
end
--- The position the floor and wall textures will be rendered at.
---@return Vector @ (const)
function Room:GetRenderSurfaceTopLeft()
end
--- Returns the stage the room was designed for.
--- 
--- - note "Stage IDs (corresponds to ids in stages.xml)"
--- 
--- >    | ID | Backdrop | Notes |
--- >    |--:|:--||
--- >    |0|Special Rooms||
--- >    |1|Basement||
--- >    |2|Cellar||
--- >    |3|Burning Basement||
--- >    |4|Caves||
--- >    |5|Catacombs||
--- >    |6|Drowned Caves||
--- >    |7|Depths||
--- >    |8|Necropolis||
--- >    |9|Dank Depths||
--- >    |10|Womb||
--- >    |11|Utero||
--- >    |12|Scarred Womb||
--- >    |13|Blue Womb (Hush)||
--- >    |14|Sheol||
--- >    |15|Cathedral||
--- >    |16|Dark Room||
--- >    |17|Chest||
--- >    |18|Special Rooms (Greed Mode)||
--- >    |19|Basement (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |20|Caves (Greed Mode)|Normally inaccessible unless in the first variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |21|Depths (Greed Mode)|Normally inaccessible unless in the second variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |22|Womb (Greed Mode)|Normally inaccessible unless in the third variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |23|Sheol (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |24|The Shop (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
--- >    |25|Ultra Greed (Greed Mode)||
--- >    |26|The Void|Normally inaccessible. This stage uses rooms from other stages, and will return their respective values.|
---@return number @ (int)
function Room:GetRoomConfigStage()
end

---@return RoomShape @
function Room:GetRoomShape()
end
--- Returns the boss id of the second boss in a double trouble room. returns 0 otherwise.
--- 
--- A boss ID is **NOT** equal to the entity Type of the boss, but is defined as a separate value in the entities2.xml file inside the "bossID" attribute.
---
---@return number @ (int)
function Room:GetSecondBossID()
end

--- - Bug
--- >    Calling this function crashes the game
---
---@param Seed number @ (int)
---@return CollectibleType @
function Room:GetSeededCollectible(Seed)
end

---@return number @ (int)
function Room:GetShopLevel()
end

---@return number @ (int)
function Room:GetSpawnSeed()
end

---@return number @ (int)
function Room:GetTintedRockIdx()
end
--- returns top left position inside of walls
---@return Vector @
function Room:GetTopLeftPos()
end

---@return RoomType @
function Room:GetType()
end

---@return boolean @
function Room:HasSlowDown()
end

--- Returns true if there are one or more pressure plates in the room. (In order to see if the pressure plates are pressed or not, you will have to iterate over the grid entities in the room.)
---
---@return boolean @
function Room:HasTriggerPressurePlates()
end

---@return boolean @
function Room:HasWater()
end

---@return boolean @
function Room:HasWaterPits()
end

---@return boolean @
function Room:IsAmbushActive()
end

---@return boolean @
function Room:IsAmbushDone()
end

---@return boolean @
function Room:IsClear()
end

---@return boolean @
function Room:IsCurrentRoomLastBoss()
end
--- Returns whether this room design may have a door at a given position, disregarding whether those doors exist.
---@param Slot DoorSlot @
---@return boolean @
function Room:IsDoorSlotAllowed(Slot)
end

---@return boolean @
function Room:IsFirstEnemyDead()
end

---@return boolean @
function Room:IsFirstVisit()
end

---@return boolean @
function Room:IsInitialized()
end

---@return boolean @
function Room:IsLShapedRoom()
end

---@param Pos Vector @
---@param Margin number @ (float)
---@return boolean @
function Room:IsPositionInRoom(Pos, Margin)
end

---@return boolean @
function Room:IsSacrificeDone()
end

function Room:KeepDoorsClosed()
end

---@param Position Vector @
function Room:MamaMegaExplosion(Position)
end

function Room:PlayMusic()
end

---@param Slot DoorSlot @
function Room:RemoveDoor(Slot)
end

--- - `GridIndex` is the location of the grid as shown with the `debug 11` console command.
--- - `PathTrail` is the "cost" to leave behind on the square. In most cases, you would want to pass 0 for this argument.
---
---@param GridIndex number @ (int)
---@param PathTrail number @ (int)
---@param KeepDecoration boolean @
function Room:RemoveGridEntity(GridIndex, PathTrail, KeepDecoration)
end

function Room:Render()
end
--- for D7 collectible
function Room:RespawnEnemies()
end

--- Returns Pos, screen-wrapped (if it is just outside the room on the right it will be moved to the left side of the room, etc)
--- 
--- - note "Notes"
--- >     This only wraps the point once, so if it has crossed multiple wrapping planes it will only wrap on the one it's closest to. For wrapping a position that has crossed two planes (outside a room in the top left for instance) call this function iteratively.
---@param Pos Vector @
---@param Margin number @ (float)
---@return Vector @
function Room:ScreenWrapPosition(Pos, Margin)
end

---@param Value boolean @
function Room:SetAmbushDone(Value)
end

---@param State number @ (int)
function Room:SetBrokenWatchState(State)
end

function Room:SetCardAgainstHumanity()
end
--- Needed for angel room, so the clear flag can be set to false when the angel spawns
---@param Clear boolean @
function Room:SetClear(Clear)
end

---@param Value boolean @
function Room:SetFirstEnemyDead(Value)
end

--- Allows you to apply a color modifier to the floor texture of the current room.
--- 
--- - example "Example Code"
--- >    This code changes the floor color to red.
---     ```lua
--- >    Game():GetRoom():SetFloorColor(Color(1,1,1,1,255,0,0))
---     ```
---
---@param FloorColor Color @
function Room:SetFloorColor(FloorColor)
end
--- Grid path is a property of a grid square that represents the "cost" of traveling over this grid cell. Its used for the path finding algorithms which search the cheapest path to a given location. If a grid cell has a value higher than 0, it can prevent grid entities from being spawned on that square. Thus, you can get around it by resetting the grid path to 0, and then spawning the grid entity.
--- 
--- Some enemies set it to 900 when they path over a square. Fireplaces set it to 950. Most grid entities set it to 1000 or higher, in order to prevent enemies to travel through them.
---@param Index number @ (int)
---@param Value number @ (int)
---@return boolean @
function Room:SetGridPath(Index, Value)
end

function Room:SetRedHeartDamage()
end

---@param Done boolean @
function Room:SetSacrificeDone(Done)
end

---@param ShockwaveId number @ (int)
---@param Params ShockwaveParams @
function Room:SetShockwaveParam(ShockwaveId, Params)
end

---@param Duration number @ (int)
function Room:SetSlowDown(Duration)
end

--- Allows you to apply a color modifier to the wall texture of the current room.
--- 
--- - example "Example Code"
--- >    This code changes the wall color to red.
---     ```lua
--- >    Game():GetRoom():SetWallColor(Color(1,1,1,1,255,0,0))
---     ```
---
---@param WallColor Color @
function Room:SetWallColor(WallColor)
end

---@param KeepCollectibleIdx boolean @
---@param ReselectSaleItem boolean @
function Room:ShopReshuffle(KeepCollectibleIdx, ReselectSaleItem)
end

function Room:ShopRestockFull()
end

function Room:ShopRestockPartial()
end

function Room:SpawnClearAward()
end

---@param GridIndex number @ (int)
---@param Type GridEntityType @
---@param Variant number @ (int)
---@param Seed number @ (int)
---@param VarData number @ (int)
---@return boolean @
function Room:SpawnGridEntity(GridIndex, Type, Variant, Seed, VarData)
end
--- Tries to create a bridge over a given pit. Returns true if the creation was successful. Returns false otherwise.
---
---@param pit GridEntity @
---@param rock GridEntity @
---@return boolean @
function Room:TryMakeBridge(pit, rock)
end

---@param PlayerPos Vector @
---@param PlayerVelocity Vector @
---@param Ladder Entity @
function Room:TryPlaceLadder(PlayerPos, PlayerVelocity, Ladder)
end

---@param FirstTime boolean @
---@param IgnoreTime boolean @
---@return boolean @
function Room:TrySpawnBlueWombDoor(FirstTime, IgnoreTime)
end

---@param IgnoreTime boolean @
---@return boolean @
function Room:TrySpawnBossRushDoor(IgnoreTime)
end

---@param Animate boolean @
---@return boolean @
function Room:TrySpawnDevilRoomDoor(Animate)
end

---@return boolean @
function Room:TrySpawnMegaSatanRoomDoor()
end

---@return boolean @
function Room:TrySpawnTheVoidDoor()
end

function Room:TurnGold()
end

--- Updates the current room.
--- 
--- - note "Notes"
--- >    Calling this function is NOT needed to apply changes!
--- >    This function is pretty useless
function Room:Update()
end
--- Converts an entity position to one that can be used to render to the screen.
---@param WorldPos Vector @
---@return Vector @
function Room:WorldToScreenPosition(WorldPos)
end
