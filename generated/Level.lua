---@class Level @
local Level = {}

--------------------
-- Functions
--------------------

---@param Chance number @ (float)
function Level:AddAngelRoomChance(Chance)
end

---@param Curse LevelCurse @
---@param ShowName boolean @
function Level:AddCurse(Curse, ShowName)
end

function Level:ApplyBlueMapEffect()
end

---@param Persistent boolean @
function Level:ApplyCompassEffect(Persistent)
end

function Level:ApplyMapEffect()
end

---@param RoomIndex number @ (int)
---@return boolean @
function Level:CanOpenChallengeRoom(RoomIndex)
end

---@return boolean @
function Level:CanSpawnDevilRoom()
end

---@param Stage LevelStage @
---@return boolean @
function Level:CanStageHaveCurseOfLabyrinth(Stage)
end
--- - note "Notes"
--- >    List of technical ids:
--- >    -1: Deal room
--- >    -2: Error room
--- >    -3: used for goto rooms
--- >    -4: Item dungeon (crawl space)
--- >    -5: Boss rush
--- >    -6: Black market
--- >    -7: Mega Satan
--- >    -8: Hush entrance
--- >    -10: Used for alt/backwards path entrances and The Beast room
--- >    -12: Genesis Room
--- >    -13: The Stairway room
--- >    -16: Blue Key rooms
--- >    -18: Member Card room
--- 
--- >    Most of Repentance out-of-bounds rooms are empty by default but get filled later on so teleporting to them might cause a game crash.
--- >    Other negative ids are free for you to override, limit is -2147483648
--- 
--- - Dimension Info
--- >    Dimension: ID of the dimension to get the room from
--- 
--- 		* -1: Current dimension
--- 		* 0: Main dimension
--- 		* 1: Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
--- 		* 2: Death Certificate dimension
---@param RoomIndex number @ (int)
---@param Dimension number @ (int) (default -1)
function Level:ChangeRoom(RoomIndex, Dimension)
end

function Level:DisableDevilRoom()
end
--- return true on success
---@param Seed number @ (int)
---@return boolean @
function Level:ForceHorsemanBoss(Seed)
end
--- In non-Greed Mode, returns the same thing as the `GetStage()` method. In Greed Mode, returns the adjusted stage similar to what it would be in non-Greed Mode.
--- 
--- For example:
--- 
--- - On Greed Mode Basement, `GetStage()` returns 1, and `GetAbsoluteStage()` returns 1.
--- - On Greed Mode Caves, `GetStage()` returns 2, and `GetAbsoluteStage()` returns 3.
--- - On Greed mode Depths, `GetStage()` returns 3, and `GetAbsoluteStage()` returns 5.
---
---@return LevelStage @
function Level:GetAbsoluteStage()
end

---@return number @ (float)
function Level:GetAngelRoomChance()
end

---@return boolean @
function Level:GetCanSeeEverything()
end

---@return Room @
function Level:GetCurrentRoom()
end
--- This functions returns a read only version of the [RoomDescriptor](RoomDescriptor.md) of the current room. If you want to edit the [RoomDescriptor](RoomDescriptor.md), use `GetRoomByIdx()` with `GetCurrentRoomIndex()` instead.
--- 
--- - example "Example Code"
--- >    This gets the current rooms [RoomDescriptor](RoomDescriptor.md) class in read only and writeable versions.
---     ```lua
--- >    local level = Game():GetLevel()
--- >    local readOnlyRoomDesc = level:GetCurrentRoomDesc()
--- >    local writeableRoomDesc = level:GetRoomByIdx(level:GetCurrentRoomIndex())
---     ```
---@return RoomDescriptor @ (const)
function Level:GetCurrentRoomDesc()
end

--- 
--- - note "Notes"
--- >    This will always return the roomindex on the levelgrid, on which you entered the current room from. (see black entries in graphic below)
--- 
--- >    ![Room Grid indicies](images/infographics/RoomGridIndicies.png)
---@return number @ (int)
function Level:GetCurrentRoomIndex()
end

---@return string @
function Level:GetCurseName()
end

---@return number @ (int)
function Level:GetCurses()
end

---@return RNG @
function Level:GetDevilAngelRoomRNG()
end

---@return number @ (int)
function Level:GetDungeonPlacementSeed()
end

---@return Vector @
function Level:GetEnterPosition()
end

---@return boolean @
function Level:GetHeartPicked()
end

---@return number @ (int)
function Level:GetLastBossRoomListIndex()
end

---@return RoomDescriptor @ (const)
function Level:GetLastRoomDesc()
end

---@return string @
function Level:GetName()
end

---@return number @ (int)
function Level:GetNonCompleteRoomIndex()
end

---@return number @ (int)
function Level:GetPreviousRoomIndex()
end

---@param IAmErrorRoom boolean @
---@param Seed number @ (int)
---@return number @ (int)
function Level:GetRandomRoomIndex(IAmErrorRoom, Seed)
end

--- - example "Example Code"
--- >    This gets the current rooms [RoomDescriptor](RoomDescriptor.md) class.
---     ```lua
--- >    local level = Game():GetLevel()
--- >    local curRoomDesc = level:GetRoomByIdx(level:GetCurrentRoomIndex())
---     ```
--- 
--- - Dimension Info
--- >    Dimension: ID of the dimension to get the room from
--- 
--- 		* -1: Current dimension
--- 		* 0: Main dimension
--- 		* 1: Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
--- 		* 2: Death Certificate dimension
---
---@param RoomIdx number @ (int)
---@param Dimension number @ (int) (default -1)
---@return RoomDescriptor @
function Level:GetRoomByIdx(RoomIdx, Dimension)
end

---@return number @ (int)
function Level:GetRoomCount()
end

---@return RoomDescriptor.List @
function Level:GetRooms()
end

---@return LevelStage @
function Level:GetStage()
end

---@return StageType @
function Level:GetStageType()
end

---@return number @ (int)
function Level:GetStartingRoomIndex()
end

---@param LevelStateFlag LevelStateFlag @
---@return boolean @
function Level:GetStateFlag(LevelStateFlag)
end

---@return boolean @
function Level:HasBossChallenge()
end

---@param ForceAngel boolean @
---@param ForceDevil boolean @
function Level:InitializeDevilAngelRoom(ForceAngel, ForceDevil)
end

---@return boolean @
function Level:IsAltStage()
end

---@return boolean @
function Level:IsDevilRoomDisabled()
end

---@return boolean @
function Level:IsNextStageAvailable()
end
--- IgnoreGroup: If set to true, includes rooms that do not have the same group ID as the current room (currently unused)
---@param RoomType RoomType @
---@param Visited boolean @
---@param rng RNG @
---@param IgnoreGroup boolean @ (default false)
---@return number @ (int)
function Level:QueryRoomTypeIndex(RoomType, Visited, rng, IgnoreGroup)
end

function Level:RemoveCompassEffect()
end
--- Curses: A bitmask of LevelCurse that indicates which curses will be removed
--- 
--- - example "Example Code"
--- >    This example removes curse of darkness and curse of the blind
---     ```lua
--- >    Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_DARKNESS | LevelCurse.CURSE_OF_BLIND)
---     ```
---@param Curses LevelCurse @
function Level:RemoveCurses(Curses)
end

---@param Value boolean @
function Level:SetCanSeeEverything(Value)
end

function Level:SetHeartPicked()
end

--- This function puts you in the next stage without applying any of the floor changes except visuals until you use StartStageTransition()
function Level:SetNextStage()
end

function Level:SetRedHeartDamage()
end
--- for SetStage/SetNextStage to have effect, call Init afterward
---@param Stage LevelStage @
---@param StageType StageType @
function Level:SetStage(Stage, StageType)
end

---@param LevelStateFlag LevelStateFlag @
---@param Val boolean @
function Level:SetStateFlag(LevelStateFlag, Val)
end
--- Show's all map (world/sun card effect) except the top secret room.
function Level:ShowMap()
end

---@param Sticky boolean @
function Level:ShowName(Sticky)
end
--- Uncovers the door on both sides by modifying the saved grid entities for neighboring room.
---@param CurrentRoomIdx number @ (int)
---@param Slot DoorSlot @
function Level:UncoverHiddenDoor(CurrentRoomIdx, Slot)
end

function Level:Update()
end

--- 
--- - note "Notes"
--- >    Whenever you update the visibility of a room on the minimap, it won't update the map automatically, since it is cached. You have to explicitly call  UpdateVisibility() afterwards to apply any changes.
--- 
--- - example "Example Code"
--- >    This code
---     ```lua
--- >    -- Local variables
--- >    local game = Game()
--- >    local level = game:GetLevel()
--- 
--- >    -- Give the player the Compass effect, which will display all of the floor's special rooms on the mini-map
--- >    level:ApplyCompassEffect()
--- 
--- >    -- Remove the icon for the Treasure Room specifically
--- >    local treasureIndex = level:QueryRoomTypeIndex(RoomType.ROOM_TREASURE, false, RNG())
--- >    local treasureRoom = level:GetRoomByIdx(treasureIndex)
--- >    treasureRoom.DisplayFlags = 0
--- 
--- >    -- Since the mini-map is cached, changing display flags won't update it unless we explicitly call this function
--- >    level:UpdateVisibility()
--- 
---     ```
---
function Level:UpdateVisibility()
end

--------------------
-- Variables
--------------------

---@type Vector @(member)
Level.DungeonReturnPosition = nil

---@type number @(member) (int)
Level.DungeonReturnRoomIndex = nil

--- This value defines on which doorslot you entered the room.
--- 
--- - Bug
--- >    Changing this value has no impact on anything. the EnterDoor value is always determined by the LeaveDoor Value and the game itself.
---@type number @(member) (int)
Level.EnterDoor = nil

---@type number @(member) (int)
Level.GreedModeWave = nil

--- This value defines on which doorslot you are positioned after the transition. You will always end up at the oposite side of the door specified. Example: LeaveDoor=1 (Up0) will position you at Doorslot Down0 (Logic: Doorslot+2)
--- 
--- - note "Notes"
--- >    if level.LeaveDoor is set to anything other than -1, the function will transition based on the room you are currently in.
---@type number @(member) (int)
Level.LeaveDoor = nil
