---@class Game @
local Game = {}

--------------------
-- Constructors
--------------------


--------------------
-- Functions
--------------------

function Game:AddDevilRoomDeal()
end

---@param Boss EntityType @
---@param Variant number @ (int)
function Game:AddEncounteredBoss(Boss, Variant)
end

--- Triggers the effect of the "retro vision" pill.
---@param Duration number @ (int)
function Game:AddPixelation(Duration)
end

--- Increases the ingame counter, that keeps track of the stages you cleared without taking damage. (useful for Devil deal manipulations)
function Game:AddStageWithoutDamage()
end

--- Increases the ingame counter, that keeps track of stages you cleared without picking up hearts.
function Game:AddStageWithoutHeartsPicked()
end

function Game:AddTreasureRoomsVisited()
end

---@param Position Vector @
---@param Damage number @ (float)
---@param Radius number @ (float)
---@param LineCheck boolean @ (default true)
---@param Source Entity @ (default nil)
---@param TearFlags TearFlags @ (default [TearFlags](enums/TearFlags.md.TEAR_NORMAL)
---@param DamageFlags number @ (int) (default [DamageFlags](enums/DamageFlag.md.DAMAGE_EXPLOSION)
---@param DamageSource boolean @ (default false)
function Game:BombDamage(Position, Damage, Radius, LineCheck, Source, TearFlags, DamageFlags, DamageSource)
end
--- The complete bomb explosion package: Do damage, spawn boomgraphics, and apply tearflag-based effects.
---@param Position Vector @
---@param Damage number @ (float)
---@param TearFlags TearFlags @ (default [TearFlags](enums/TearFlags.md.TEAR_NORMAL)
---@param Color Color @ (default Color.Default)
---@param Source Entity @ (default nil)
---@param RadiusMult number @ (float) (default 1)
---@param LineCheck boolean @ (default true)
---@param DamageSource boolean @ (default false)
---@param DamageFlags number @ (int) (default [DamageFlags](enums/DamageFlag.md.DAMAGE_EXPLOSION)
function Game:BombExplosionEffects(Position, Damage, TearFlags, Color, Source, RadiusMult, LineCheck, DamageSource, DamageFlags)
end
--- Does bomb-exclusive special effects.
---@param Position Vector @
---@param Radius number @ (float)
---@param TearFlags TearFlags @
---@param Source Entity @ (default nil)
---@param RadiusMult number @ (float) (default 1)
function Game:BombTearflagEffects(Position, Radius, TearFlags, Source, RadiusMult)
end

---@param Position Vector @
---@param Radius number @ (float)
---@param Source Entity @
---@param ShowEffect boolean @
---@param DoSuperKnockback boolean @
function Game:ButterBeanFart(Position, Radius, Source, ShowEffect, DoSuperKnockback)
end

--- - Dimension Info
--- >    Dimension: ID of the dimension to get the room from
--- 
--- 		* -1: Current dimension
--- 		* 0: Main dimension
--- 		* 1: Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
--- 		* 2: Death Certificate dimension
---@param RoomIndex number @ (int)
---@param Dimension number @ (int) (default -1)
function Game:ChangeRoom(RoomIndex, Dimension)
end

---@param Position Vector @
---@param Radius number @ (float)
---@param Source Entity @
function Game:CharmFart(Position, Radius, Source)
end

function Game:ClearDonationModAngel()
end

function Game:ClearDonationModGreed()
end

--- Sets the counter for stages cleared without damage to 0.
function Game:ClearStagesWithoutDamage()
end

--- Sets the counter for stages cleared without picking up hearts to 0.
function Game:ClearStagesWithoutHeartsPicked()
end

---@param Darkness number @ (float)
---@param Timeout number @ (int)
function Game:Darken(Darkness, Timeout)
end

---@param Donate number @ (int)
function Game:DonateAngel(Donate)
end

---@param Donate number @ (int)
function Game:DonateGreed(Donate)
end

---@param Ending Ending @
function Game:End(Ending)
end

---@param Speed number @ (float)
function Game:Fadein(Speed)
end
--- + note "Notes"
--- 	FadeoutTarget types:
--- 
--- 	0: File Select Menu
--- 
--- 	1: File Selected Menu (New run, Start game, etc.)
--- 
--- 	2: Title
--- 
--- 	3: New Game (Starts a new run)
--- 
--- 	4: Victory lap
---
---@param Speed number @ (float)
---@param Target FadeoutTarget @
function Game:Fadeout(Speed, Target)
end

---@param Position Vector @
---@param Radius number @ (float) (default 85)
---@param Source Entity @ (default nil)
---@param FartScale number @ (float) (default 1)
---@param FartSubType number @ (int) (default 0)
---@param FartColor Color @ (default Color.Default)
function Game:Fart(Position, Radius, Source, FartScale, FartSubType, FartColor)
end

function Game:FinishChallenge()
end
--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---
---@return Ambush @
function Game:GetAmbush()
end

---@return number @ (float)
function Game:GetDarknessModifier()
end

---@return number @ (int)
function Game:GetDevilRoomDeals()
end

--- Get the value that indicates the angel-counter of a shop-donation maschine. This Stat increases everytime you donate to a shop. A higher number grants a few advantages.
---@return number @ (int)
function Game:GetDonationModAngel()
end

---@return number @ (int)
function Game:GetDonationModGreed()
end

---@return Font @
function Game:GetFont()
end

--- Returns the number of frames the gameplay is actively running. Pauses are therefore not included!
--- 1 second equals 30 frames.
--- This function therefore works drastically different than `Isaac.GetFrameCount()`
--- 
--- - example "Example Code"
--- >    This code returns hours, minutes, seconds, and milliseconds of the game running actively:
---     ```lua
--- >    local curTime = Game():GetFrameCount()
--- >    local msecs= curTime%30 * (10/3) -- turns the millisecond value range from [0 to 30] to [0 to 100]
--- >    local secs= math.floor(curTime/30)%60
--- >    local mins= math.floor(curTime/30/60)%60
--- >    local hours= math.floor(curTime/30/60/60)%60
--- 
---     ```
---@return number @ (int)
function Game:GetFrameCount()
end

---@return number @ (int)
function Game:GetGreedBossWaveNum()
end

---@return number @ (int)
function Game:GetGreedWavesNum()
end

---@return HUD @
function Game:GetHUD()
end
--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---
---@return ItemOverlay @
function Game:GetItemOverlay()
end

---@return ItemPool @
function Game:GetItemPool()
end

--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@return LevelStage @
function Game:GetLastDevilRoomStage()
end

--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@return LevelStage @
function Game:GetLastLevelWithDamage()
end

--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@return LevelStage @
function Game:GetLastLevelWithoutHalfHp()
end

---@return Level @
function Game:GetLevel()
end

---@param Pos Vector @
---@return EntityPlayer @
function Game:GetNearestPlayer(Pos)
end

---@return number @ (int)
function Game:GetNumEncounteredBosses()
end

---@return number @ (int)
function Game:GetNumPlayers()
end
--- Returns the [EntityPlayer](EntityPlayer.md) with the given index. This function can return `nil` if the function is called before any player is initialized. If an index is given, that is not used, it will return the last player in the list.
--- 
--- This function is the same as [`Isaac.GetPlayer()`](Isaac.md#getplayer).
---@param Index number @ (int)
---@return EntityPlayer @
function Game:GetPlayer(Index)
end

---@param Pos Vector @
---@param Radius number @ (float)
---@return EntityPlayer @
function Game:GetRandomPlayer(Pos, Radius)
end

---@return Room @
function Game:GetRoom()
end

---@return number @ (int)
function Game:GetScreenShakeCountdown()
end

---@return Seeds @
function Game:GetSeeds()
end

---@return number @ (int)
function Game:GetStagesWithoutDamage()
end

---@return number @ (int)
function Game:GetStagesWithoutHeartsPicked()
end

---@param GameStateFlag GameStateFlag @
---@return boolean @
function Game:GetStateFlag(GameStateFlag)
end

---@return number @ (float)
function Game:GetTargetDarkness()
end

---@return number @ (int)
function Game:GetTreasureRoomVisitCount()
end

---@return number @ (int)
function Game:GetVictoryLap()
end

---@param Boss EntityType @
---@param Variant number @ (int)
---@return boolean @
function Game:HasEncounteredBoss(Boss, Variant)
end

---@return number @ (int)
function Game:HasHallucination()
end

---@return boolean @
function Game:IsGreedMode()
end

--- Returns true, if the game is in a state, where the player is unable to input any thing or the game logic is paused. This includes having the pause menu opened, being in room transitions/cutscenes or while displaying a "big book" animation.
---@return boolean @
function Game:IsPaused()
end

---@param IAmErrorRoom boolean @
---@param Seed number @ (int)
function Game:MoveToRandomRoom(IAmErrorRoom, Seed)
end

function Game:NextVictoryLap()
end

function Game:Render()
end

---@param e Entity @
---@return boolean @
function Game:RerollEnemy(e)
end

function Game:RerollLevelCollectibles()
end

---@param Seed number @ (int)
function Game:RerollLevelPickups(Seed)
end

---@param Stage LevelStage @
function Game:SetLastDevilRoomStage(Stage)
end

---@param Stage LevelStage @
function Game:SetLastLevelWithDamage(Stage)
end

---@param Stage LevelStage @
function Game:SetLastLevelWithoutHalfHp(Stage)
end

---@param GameStateFlag GameStateFlag @
---@param Val boolean @
function Game:SetStateFlag(GameStateFlag, Val)
end

---@param Timeout number @ (int)
function Game:ShakeScreen(Timeout)
end

function Game:ShowFortune()
end
--- Plays the Delirium animation (Static noise intersected with past gameplay fotage), which will also change the background of the current room.
--- 
--- - example "Workaround Code for AB+ mods"
--- >    This function was broken in AB+, so there was this implementation in order to recreate the effect.
--- 
--- >    This code emulated the effect of this function by hijacking the Delirious item effect
--- 
---     ```lua
--- >    local usagetime = -1 -- stores the last time the effect was called.
--- 
--- >    -- call this function to play the Hallucination effect
--- >    function playHallucination()
--- >        local player = Isaac.GetPlayer(0)
--- >        usagetime = Game().TimeCounter
--- >        player:UseActiveItem(510, false, false, false, false) -- use the delirious item without applying the costume
--- >        player:GetEffects():RemoveCollectibleEffect(510) -- remove any unwanted side effects of the item usage
--- >    end
--- 
--- >    -- Removes all spawned NPC entities when activating the function
--- >    function mod:onFriendlyInit(npc)
--- >    	if Game().TimeCounter-usagetime == 0 then -- only remove enemies that spawned when the effect was called!
--- >    		npc:Remove()
--- >    	end
--- >    end
--- >    mod:AddCallback(ModCallbacks.MC_POST_NPC_INIT, mod.onFriendlyInit)
--- 
---     ```
---@param FrameCount number @ (int)
---@param Backdrop BackdropType @ (default BackdropType.NUM_BACKDROPS)
function Game:ShowHallucination(FrameCount, Backdrop)
end

function Game:ShowRule()
end

--- The game has two spawn functions, [Game():Spawn()](#spawn) (this one) and [Isaac.Spawn()](Isaac.md#spawn). If you need to spawn something with a specific seed, then you use [Game():Spawn()](#spawn). If you need to spawn something with a randomly generated seed, then use [Isaac.Spawn()](Isaac.md#spawn). Most of the time, you will probably want to use [Isaac.Spawn()](Isaac.md#spawn).
--- 
--- - example "Example Code"
--- >    This code spawns a Leech with specific seed.
---     ```lua
--- >    Game():Spawn(
--- >      EntityType.ENTITY_LEECH, -- Type
--- >      0, -- Variant
--- >      Game():GetRoom():GetCenterPos(), -- Position
--- >      Vector(0, 0), -- Velocity
--- >      nil, -- Parent
--- >      0, -- SubType
--- >      Game():GetRoom():GetSpawnSeed() -- Seed (the "GetSpawnSeed()" function gets a reproducible seed based on the room, e.g. "2496979501")
--- >    )
--- 
---     ```
---@param Type EntityType @
---@param Variant number @ (int)
---@param Position Vector @
---@param Velocity Vector @
---@param Spawner Entity @
---@param SubType number @ (int)
---@param Seed number @ (int)
---@return Entity @
function Game:Spawn(Type, Variant, Position, Velocity, Spawner, SubType, Seed)
end

---@param desc EntityDesc @
---@param Position Vector @
---@param Spawner Entity @
---@return EntityNPC @
function Game:SpawnEntityDesc(desc, Position, Spawner)
end

---@param Pos Vector @
---@param ParticleType EffectVariant @
---@param NumParticles number @ (int)
---@param Speed number @ (float)
---@param Color Color @ (default Color.Default)
---@param Height number @ (float) (default 100000)
---@param SubType number @ (int) (default 0)
function Game:SpawnParticles(Pos, ParticleType, NumParticles, Speed, Color, Height, SubType)
end

--- - Dimension Info
--- >    Dimension: ID of the dimension to get the room from
--- 
--- 		* -1: Current dimension
--- 		* 0: Main dimension
--- 		* 1: Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
--- 		* 2: Death Certificate dimension
--- 
--- - note "Notes"
--- >    Available Animation types (Discovered by "ilise rose" (@yatboim)):
--- 
--- >    0: (Default) Standard transition, sweeps the room in from a direction
--- 
--- >    1: (Fade) Fade to black transition, like its used for the "goto" - console command
--- 
--- >    2: (Stage) Pixel out transition, like used for crawlspaces and the trapdoor at the end of floors
--- 
--- >    3: (Teleport) teleport transition, isaac teleports out of the current room and into the next
--- 
--- >    5: (Ankh) Same as standard transition
--- 
--- >    6: (Dead Cat) Same as standard transition
--- 
--- >    7: (1Up) Same as standard transition
--- 
--- >    8: (Guppys Collar) Same as standard transition
--- 
--- >    9: (Judas Shadow) Same as standard transition
--- 
--- >    10: (Lazarus Rags) Same as standard transition
--- 
--- >    12: (Glowing Hourglass) Same as standard transition
--- 
--- >    13: (D7) Same as standard transition
--- 
--- >    14: (Missing Poster) Same as standard transition
--- 
--- - Bug
--- >    The Direction variable is completely ignored at all times, with the game instead calculating the direction between the two rooms itself for the animation. The two rooms are the current room and the room of the RoomIndex. It has no impact on the doors either.
---@param RoomIndex number @ (int)
---@param Direction Direction @
---@param Animation RoomTransitionAnim @ (default RoomTransitionAnim.WALK)
---@param Player EntityPlayer @ (default nil)
---@param Dimension number @ (int) (default -1)
function Game:StartRoomTransition(RoomIndex, Direction, Animation, Player, Dimension)
end

--- Starts a transition animation like it`s playing when entering a trapdoor to switch between stages.
--- **Stage Transition types:**
--- 
--- * 0: Standard transition. Removes the playermodel before the pixel fadeout. Then plays the Stage Nightmare animation. The player starts in fetal position after the transition.
--- * 1: Standard transition with pixel fadein/out, nightmare cutscene but the player model doesnt get removed and starts in the normal standing position after the transition.
--- * &gt;2: Same as 0
---
---@param SameStage boolean @
---@param Animation StageTransition.Animation @
function Game:StartStageTransition(SameStage, Animation)
end

function Game:Update()
end

---@param Position Vector @
---@param Force number @ (float) (default 10)
---@param Radius number @ (float) (default 250)
function Game:UpdateStrangeAttractor(Position, Force, Radius)
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
Game.BlueWombParTime = nil
--- Number of frames of game time.
---@type number @(member) (int)
Game.BossRushParTime = nil

---@type Challenge @(member)
Game.Challenge = nil

---@type Difficulty @(member)
Game.Difficulty = nil

---@type Vector @(member)
Game.ScreenShakeOffset = nil
--- same as FrameCounter but can be modified, mostly used for timed events (bossrush, daily, ...) and not for timestepping
---@type number @(member) (int)
Game.TimeCounter = nil
