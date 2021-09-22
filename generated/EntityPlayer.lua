---@class EntityPlayer:Entity @
local EntityPlayer = {}

--------------------
-- Functions
--------------------

--- Adds Black hearts to the player. 1 unit is half a heart. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 full black heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddBlackHearts(2)
---     ```
---
---@param BlackHearts number @ (int)
function EntityPlayer:AddBlackHearts(BlackHearts)
end

--- Only works on Tainted Bethany.
---
---@param Amount number @ (int)
function EntityPlayer:AddBloodCharge(Amount)
end

---@param Amount number @ (int)
---@param Position Vector @
---@param Target Entity @
---@return Entity @
function EntityPlayer:AddBlueFlies(Amount, Position, Target)
end

---@param Position Vector @
---@return Entity @
function EntityPlayer:AddBlueSpider(Position)
end

--- Adds bombs to the player. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code removes 1 bomb from the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddBombs(-1)
---     ```
---
---@param Amount number @ (int)
function EntityPlayer:AddBombs(Amount)
end

--- Adds bone hearts to the player. 1 unit is a single bone heart. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 bone heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddBoneHearts(1)
---     ```
---
---@param Hearts number @ (int)
function EntityPlayer:AddBoneHearts(Hearts)
end

---@param BrokenHearts number @ (int)
function EntityPlayer:AddBrokenHearts(BrokenHearts)
end
--- Will reevaluate the cache flags provided in the next cache reevaluation.
--- 
--- - example "Example Code"
--- >    This code will add several cacheflags.
---     ```lua
--- >    Isaac.GetPlayer(0):AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY | CacheFlag.CACHE_LUCK)
---     ```
---@param CacheFlag CacheFlag @
function EntityPlayer:AddCacheFlags(CacheFlag)
end

---@param ID Card @
function EntityPlayer:AddCard(ID)
end

--- Adds coins to the player. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 coin to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddCoins(1)
---     ```
---
---@param Amount number @ (int)
function EntityPlayer:AddCoins(Amount)
end

--- Setting **FirstTimePickingUp** to false will not add the consumables (keys, bombs,...) of the item and will cause it to not count towards transformations.
--- 
--- Slot 0 is default (normal active item)
--- Slot 1 is used by Schoolbag
--- Slot 2 is used for pocket active items
--- 
--- - note "Notes"
--- 	Slot 2 cannot be used if character did not start with a pocket active
--- 
--- VarData is used for the storage of a persistent context-sensitive value
--- 
--- - note "Notes"
--- 	This is a list of all items that make use of VarData:
--- 	- Jar of Wisps: Wisps spawned on next use (Max 12)
--- 	- D Infinity, Blank Card, Clear Rune, Placebo: Current maximum charge (Any value above 0)
--- 	- Hold: Stored poop
--- 	> Poop Types:
--- 	> [0] None
--- 	> [1] Normal
--- 	> [2] Flies
--- 	> [3] Fire
--- 	> [4] Petrified
--- 	> [5] Toxic
--- 	> [6] Black
--- 	> [7] Holy
--- 	> [8] X-Lax
--- 	> [9] Fart
--- 	> [10] Bomb
--- 	> [11] Explosive Diarrhea
--- 	> [12+] Empty
---
---@param Type CollectibleType @
---@param Charge number @ (int) (default 0)
---@param FirstTimePickingUp boolean @ (default true)
---@param Slot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@param VarData number @ (int) (default 0)
function EntityPlayer:AddCollectible(Type, Charge, FirstTimePickingUp, Slot, VarData)
end

---@param Cooldown number @ (int)
function EntityPlayer:AddControlsCooldown(Cooldown)
end

---@param Item ItemConfig.Item @
---@param ItemStateOnly boolean @
function EntityPlayer:AddCostume(Item, ItemStateOnly)
end

function EntityPlayer:AddCurseMistEffect()
end

function EntityPlayer:AddDeadEyeCharge()
end

function EntityPlayer:AddDollarBillEffect()
end

--- Adds eternal hearts to the player. 1 unit is half a heart. Remove them with negative numbers.
--- 
--- (Note that eternal hearts automatically turn to full hearts, when you have more than one.)
--- 
--- - example "Example Code"
--- >    This code adds 1 eternal heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddEternalHearts(1)
---     ```
---
---@param EternalHearts number @ (int)
function EntityPlayer:AddEternalHearts(EternalHearts)
end

--- - note "Dip Subtypes"
---     ```lua
--- >    0: normal
--- >    1: red
--- >    2: corny
--- >    3: golden
--- >    4: rainbow
--- >    5: black
--- >    6: holy
--- >    12: stone
--- >    13: flaming
--- >    14: poison
--- >    20: brownie
---     ```
---@param Subtype number @ (int)
---@param Position Vector @
function EntityPlayer:AddFriendlyDip(Subtype, Position)
end

--- - note "Notes"
--- 	Giga bombs do not add to the bomb counter, make sure to increase the bomb count beforehand!
--- 	You can't add more giga bombs than player's current bomb count.
---
---@param GigaBombs number @ (int)
function EntityPlayer:AddGigaBombs(GigaBombs)
end

function EntityPlayer:AddGoldenBomb()
end

--- Adds golden hearts to the player. 1 unit is a single gold heart. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 golden heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddGoldenHearts(1)
---     ```
---
---@param Hearts number @ (int)
function EntityPlayer:AddGoldenHearts(Hearts)
end

function EntityPlayer:AddGoldenKey()
end

--- Adds red hearts to the player if there are any empty heart containers. 1 unit is half a heart. Remove health with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 full red heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddHearts(2)
---     ```
---
---@param Hearts number @ (int)
function EntityPlayer:AddHearts(Hearts)
end

---@param Collectible CollectibleType @
---@param Position Vector @
---@param AdjustOrbitLayer boolean @ (default false)
---@return EntityFamiliar @
function EntityPlayer:AddItemWisp(Collectible, Position, AdjustOrbitLayer)
end

---@param Flies number @ (int)
function EntityPlayer:AddJarFlies(Flies)
end

---@param Hearts number @ (int)
function EntityPlayer:AddJarHearts(Hearts)
end

--- Adds keys to the player. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 key to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddKeys(1)
---     ```
---
---@param Amount number @ (int)
function EntityPlayer:AddKeys(Amount)
end

--- Adds heart containers to the player. 2 units is a full heart container. Remove them with negative numbers.
--- 
--- - note "Notes"
--- >    It is possible to add a half heart container to the player. This will appear as a regular heart container but can only be filled half-way.
--- 
--- - example "Example Code"
--- >    This code adds 1 heart container to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddMaxHearts(2,true)
---     ```
--- 
--- 
--- - Bug
--- >    IgnoreKeeper does not appear to work as intended.
--- 
--- >    Max hearts can be added or removed from Keeper regardless of what this boolean is.
--- >    If Keeper has Greed's Gullet and this boolean is set to false, max hearts cannot be added to Keeper, but can be removed normally.
--- >    If Keeper has Greed's Gullet and this boolean is set to true, Max hearts can be added or removed from Keeper normally.
---
---@param MaxHearts number @ (int)
---@param IgnoreKeeper boolean @
function EntityPlayer:AddMaxHearts(MaxHearts, IgnoreKeeper)
end

---@param Position Vector @
---@param PlayAnim boolean @ (default true)
---@return EntityFamiliar @
function EntityPlayer:AddMinisaac(Position, PlayAnim)
end
--- for Lua
---@param NullId NullItemID @
function EntityPlayer:AddNullCostume(NullId)
end

---@param Pill PillColor @
function EntityPlayer:AddPill(Pill)
end
--- Adds the costume of the given transformation.
---
---@param Form PlayerForm @
function EntityPlayer:AddPlayerFormCostume(Form)
end

function EntityPlayer:AddPrettyFly()
end
--- Adds rotten hearts to the player. 1 unit is half a heart. Remove rotten hearts with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 full rotten heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddRottenHearts(2)
---     ```
---
---@param RottenHearts number @ (int)
function EntityPlayer:AddRottenHearts(RottenHearts)
end

--- Only works on Bethany.
---
---@param Amount number @ (int)
function EntityPlayer:AddSoulCharge(Amount)
end

--- Adds soul hearts to the player. 1 unit is half a heart. Remove them with negative numbers.
--- 
--- - example "Example Code"
--- >    This code adds 1 full soul heart to the player.
---     ```lua
--- >    Isaac.GetPlayer(0):AddSoulHearts(2)
---     ```
---@param SoulHearts number @ (int)
function EntityPlayer:AddSoulHearts(SoulHearts)
end

---@param Position Vector @
---@return EntityFamiliar @
function EntityPlayer:AddSwarmFlyOrbital(Position)
end

--- - If the player does not have any open trinket slots, this function will do nothing.
--- - If the player has an open trinket slot but already has a trinket, the new trinket will go to the first slot and the existing trinket will get pushed back to the second slot.
--- - If you provide an argument of 0 or an otherwise invalid trinket ID, the game will crash.
--- - Setting **FirstTimePickingUp** to false will not spawn or add pickups for the item and will not cause it to count towards transformations.
---@param Type TrinketType @
---@param FirstTimePickingUp boolean @ (default true)
function EntityPlayer:AddTrinket(Type, FirstTimePickingUp)
end
--- The type of Wisp can be defined with the Collectible. If the ID is not corresponding to an active item with a special wisp, it will default to the regular blue wisp.
--- 
--- To access special wisp variant like Delirious forms, you need to add `65536`(1<<16) to the id. Example: Delirious Monstro has `id = s14`, so the wisps id is `65550`.
---
---@param Collectible CollectibleType @
---@param Position Vector @
---@param AdjustOrbitLayer boolean @ (default false)
---@param DontUpdate boolean @ (default false)
---@return EntityFamiliar @
function EntityPlayer:AddWisp(Collectible, Position, AdjustOrbitLayer, DontUpdate)
end
--- Play the animation that is normally played at the beginning of a stage.
function EntityPlayer:AnimateAppear()
end

---@param ID Card @
---@param AnimName string @ (default "Pickup")
function EntityPlayer:AnimateCard(ID, AnimName)
end

---@param Collectible CollectibleType @
---@param AnimName string @ (default "Pickup")
---@param SpriteAnimName string @ (default "PlayerPickupSparkle")
function EntityPlayer:AnimateCollectible(Collectible, AnimName, SpriteAnimName)
end
--- thumbs up
function EntityPlayer:AnimateHappy()
end
--- end of a stage
function EntityPlayer:AnimateLightTravel()
end

---@param Pill PillColor @
---@param AnimName string @ (default "Pickup")
function EntityPlayer:AnimatePill(Pill, AnimName)
end
--- Fall into pitfall.
function EntityPlayer:AnimatePitfallIn()
end
--- Jump out of pitfall.
function EntityPlayer:AnimatePitfallOut()
end
--- oh no!
function EntityPlayer:AnimateSad()
end
--- teleport to another room
---@param Up boolean @
function EntityPlayer:AnimateTeleport(Up)
end
--- end of a stage
function EntityPlayer:AnimateTrapdoor()
end

---@param Trinket TrinketType @
---@param AnimName string @ (default "Pickup")
---@param SpriteAnimName string @ (default "PlayerPickupSparkle")
function EntityPlayer:AnimateTrinket(Trinket, AnimName, SpriteAnimName)
end

---@return boolean @
function EntityPlayer:AreControlsEnabled()
end
--- Returns the non-zero joystick direction from the most recent movement input, but goes to zero after the player comes to a stop.
---@return boolean @
function EntityPlayer:AreOpposingShootDirectionsPressed()
end

---@param Type CollectibleType @ (default CollectibleType.COLLECTIBLE_NULL)
---@return boolean @
function EntityPlayer:CanAddCollectible(Type)
end
--- returns true if player has room for more black hearts
---@return boolean @
function EntityPlayer:CanPickBlackHearts()
end
--- returns true if player has room for more bone hearts
---@return boolean @
function EntityPlayer:CanPickBoneHearts()
end
--- returns true if player has room for more golden hearts
---@return boolean @
function EntityPlayer:CanPickGoldenHearts()
end

---@return boolean @
function EntityPlayer:CanPickRedHearts()
end
--- Returns true if player has room for more rotten hearts
---
---@return boolean @
function EntityPlayer:CanPickRottenHearts()
end
--- Returns true if player has room for more soul hearts
---@return boolean @
function EntityPlayer:CanPickSoulHearts()
end
--- Can Player pick up an item right now?
---@return boolean @
function EntityPlayer:CanPickupItem()
end

---@return boolean @
function EntityPlayer:CanShoot()
end
--- Returns true if head should react to keys or false otherwise
---@return boolean @
function EntityPlayer:CanTurnHead()
end
--- - Bug
--- 	Changing to Tainted Forgotten will result in no Tainted Soul appearing
--- 	Changing to Tainted Lazarus will result in player only having one form
---
---@param PlayerType PlayerType @
function EntityPlayer:ChangePlayerType(PlayerType)
end
--- **SourceItem**: The item this type of familiar was created by
--- 
--- **FamiliarSubType**: The subtype of the familiar to check (-1 matches any subtype)
---@param FamiliarVariant number @ (int)
---@param TargetCount number @ (int)
---@param rng RNG @
---@param SourceItem ItemConfig.Item @ (default nil)
---@param FamiliarSubType number @ (int) (default -1)
function EntityPlayer:CheckFamiliar(FamiliarVariant, TargetCount, rng, SourceItem, FamiliarSubType)
end
--- Removes all costumes.
function EntityPlayer:ClearCostumes()
end

function EntityPlayer:ClearDeadEyeCharge()
end
--- Will be called when player exits the room.
function EntityPlayer:ClearTemporaryEffects()
end

--- Sets the charge of your active item to 0 without triggering the active item effect.
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
function EntityPlayer:DischargeActiveItem(ActiveSlot)
end

---@param Luck number @ (int)
function EntityPlayer:DonateLuck(Luck)
end

---@param Direction Vector @
function EntityPlayer:DoZitEffect(Direction)
end

--- Drops a held pocketitem (Card, Pill, Rune... from the given itemslot at the given position. Possible pocketnumbers are [0, 1, 2, 3].  Dropping pocket active items or dice bag dices does not work.
---@param PocketNum number @ (int)
---@param Pos Vector @
function EntityPlayer:DropPocketItem(PocketNum, Pos)
end

---@param DropPos Vector @
---@param ReplaceTick boolean @
function EntityPlayer:DropTrinket(DropPos, ReplaceTick)
end
--- Triggers a cache reevaluation. Will trigger the MC_EVALUATE_CACHE callback.
--- 
--- Before you use this function, you need to set the appropriate cache flags first. See the example below.
--- 
--- - example "Example Code"
--- >    This code re-evaluates all of the stats for the player.
---     ```lua
--- >    local player = Isaac.GetPlayer()
--- >    player:AddCacheFlags(CacheFlag.CACHE_ALL)
--- >    player:EvaluateItems()
---     ```
---
function EntityPlayer:EvaluateItems()
end

---@param Position Vector @
---@param Velocity Vector @
---@param Source Entity @ (default nil)
---@return EntityBomb @
function EntityPlayer:FireBomb(Position, Velocity, Source)
end

---@param Direction Vector @
---@param Source Entity @ (default nil)
---@param DamageMultiplier number @ (float) (default 1)
---@return EntityLaser @
function EntityPlayer:FireBrimstone(Direction, Source, DamageMultiplier)
end

---@param Angle number @ (float)
---@param Parent Entity @
---@return EntityLaser @
function EntityPlayer:FireDelayedBrimstone(Angle, Parent)
end

---@param Parent Entity @
---@param RotationOffset number @ (float) (default 0)
---@param CantOverwrite boolean @ (default false)
---@param SubType number @ (int) (default 0)
---@param Variant number @ (int) (default 0)
---@return EntityKnife @
function EntityPlayer:FireKnife(Parent, RotationOffset, CantOverwrite, SubType, Variant)
end
--- This replaces the protected fire_tear() to allow other entities (Such as bombs) to easily shoot tears in the same manner and with all the effects the player does. (Ex. Sad Bombs)
---@param Position Vector @
---@param Velocity Vector @
---@param CanBeEye boolean @ (default true)
---@param NoTractorBeam boolean @ (default false)
---@param CanTriggerStreakEnd boolean @ (default true)
---@param Source Entity @ (default nil)
---@param DamageMultiplier number @ (float) (default 1)
---@return EntityTear @
function EntityPlayer:FireTear(Position, Velocity, CanBeEye, NoTractorBeam, CanTriggerStreakEnd, Source, DamageMultiplier)
end

---@param Position Vector @
---@param OffsetID LaserOffset @
---@param Direction Vector @
---@param LeftEye boolean @
---@param OneHit boolean @ (default false)
---@param Source Entity @ (default nil)
---@param DamageMultiplier number @ (float) (default 1)
---@return EntityLaser @
function EntityPlayer:FireTechLaser(Position, OffsetID, Direction, LeftEye, OneHit, Source, DamageMultiplier)
end

---@param Position Vector @
---@param Direction Vector @
---@param Radius number @ (float)
---@param Source Entity @ (default nil)
---@param DamageMultiplier number @ (float) (default 1)
---@return EntityLaser @
function EntityPlayer:FireTechXLaser(Position, Direction, Radius, Source, DamageMultiplier)
end
--- called after animation is finished, or on special occasions to prevent bugs
---@return boolean @
function EntityPlayer:FlushQueueItem()
end
--- Fully charges the active item. Returns true if the item was fully charged, false otherwise. If player has battery it will first try to fill first charge slot, then the battery slot.
--- 
--- **Force**: If set, items will always be charged even if they normally cannot be recharged by batteries
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@param Force number @ (int) (default false)
---@return boolean @
function EntityPlayer:FullCharge(ActiveSlot, Force)
end

--- Get the current charge of your active item.
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@return number @ (int)
function EntityPlayer:GetActiveCharge(ActiveSlot)
end
--- Returns the currently held item. Returns `0` when no item is held.
---
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@return CollectibleType @
function EntityPlayer:GetActiveItem(ActiveSlot)
end

--- Get the current items subcharge. (Useful for items that charge up over time.)
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@return number @ (int)
function EntityPlayer:GetActiveSubCharge(ActiveSlot)
end

---@return Entity @
function EntityPlayer:GetActiveWeaponEntity()
end

---@return Vector @ (const)
function EntityPlayer:GetAimDirection()
end

---@return BabySubType @
function EntityPlayer:GetBabySkin()
end

--- Get the current charge progress of the second charge of your current active item. This bar is only active, when you have the Collectible "The Battery"
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@return number @ (int)
function EntityPlayer:GetBatteryCharge(ActiveSlot)
end
--- This does not return the # of black hearts, this returns the bit mask for which soul hearts are black hearts.
---
---@return number @ (int)
function EntityPlayer:GetBlackHearts()
end

---@return number @ (int)
function EntityPlayer:GetBloodCharge()
end

---@return number @ (int)
function EntityPlayer:GetBombFlags()
end
--- Pass tear flags to add extra effects to the bomb visual like burn -> hot bombs, even if player doesn't have Hot Bombs collectible. ForceSmallBomb will override large bomb variants for TEAR_PERSISTENT.
---@param TearFlags TearFlags @
---@param ForceSmallBomb boolean @
---@return BombVariant @
function EntityPlayer:GetBombVariant(TearFlags, ForceSmallBomb)
end
--- Returns the number of bone hearts as an integer value. 1 Boneheart = 1.
--- 
--- - example "Example Code"
--- >    This code gets the total amount of red heart containers including bone hearts. The bonehearts need to be mulltiplied by 2, since in GetMaxHearts() 2 equals 1 full heart.
--- 
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    local totalRedHearts = player:GetMaxHearts() + player:GetBoneHearts() * 2
---     ```
---
---@return number @ (int)
function EntityPlayer:GetBoneHearts()
end

---@return number @ (int)
function EntityPlayer:GetBrokenHearts()
end

--- Gets the ID of the card the player is holding in the given itemslot (0 = Main slot, 1 = secondary slot, 2 or 3). Returns `0` when no card is held in the slot.
---@param SlotId number @ (int)
---@return Card @
function EntityPlayer:GetCard(SlotId)
end

---@param ID Card @
---@return RNG @
function EntityPlayer:GetCardRNG(ID)
end

---@return number @ (int)
function EntityPlayer:GetCollectibleCount()
end
--- **IgnoreModifiers**: If set to true, only counts collectibles the player actually owns and ignores effects granted by items like Zodiac, 3 Dollar Bill and Lemegeton
---@param Type CollectibleType @
---@param IgnoreModifiers boolean @ (default false)
---@return number @ (int)
function EntityPlayer:GetCollectibleNum(Type, IgnoreModifiers)
end

---@param ID CollectibleType @
---@return RNG @
function EntityPlayer:GetCollectibleRNG(ID)
end

---@param NullFrameName string @
---@param HeadScale boolean @
---@param Direction Vector @
---@return Vector @
function EntityPlayer:GetCostumeNullPos(NullFrameName, HeadScale, Direction)
end

---@return number @ (int)
function EntityPlayer:GetDamageCooldown()
end

--- Returns the amount of Red Hearts the player can contain in their Heart Containers and Bone Hearts. 1 unit is half a red heart.
--- **Example:** you have 3 red heart container and one bone heart. 6(red) + 2(bone) = 8
---
---@return number @ (int)
function EntityPlayer:GetEffectiveMaxHearts()
end

---@return number @ (int)
function EntityPlayer:GetEffectiveBloodCharge()
end

---@return number @ (int)
function EntityPlayer:GetEffectiveSoulCharge()
end

---@return TemporaryEffects @
function EntityPlayer:GetEffects()
end

--- Returns the amount of eternal hearts the player has.
---@return number @ (int)
function EntityPlayer:GetEternalHearts()
end

---@return number @ (int)
function EntityPlayer:GetExtraLives()
end

---@return Direction @
function EntityPlayer:GetFireDirection()
end

---@return Vector @
function EntityPlayer:GetFlyingOffset()
end

--- Returns the amount of golden hearts the player has.
---@return number @ (int)
function EntityPlayer:GetGoldenHearts()
end

---@return number @ (float)
function EntityPlayer:GetGreedDonationBreakChance()
end

---@return Direction @
function EntityPlayer:GetHeadDirection()
end

---@return number @ (int)
function EntityPlayer:GetHeartLimit()
end

--- Returns the amount of red hearts the player has inside their heart containers and bone hearts. 1 unit is half a heart.
---@return number @ (int)
function EntityPlayer:GetHearts()
end

---@return CollectibleType @
function EntityPlayer:GetItemState()
end

---@return number @ (int)
function EntityPlayer:GetJarFlies()
end

---@return number @ (int)
function EntityPlayer:GetJarHearts()
end

---@param ID LaserOffset @
---@param Direction Vector @
---@return Vector @
function EntityPlayer:GetLaserOffset(ID, Direction)
end

---@return number @ (int)
function EntityPlayer:GetLastActionTriggers()
end

---@return number @ (int)
function EntityPlayer:GetLastDamageFlags()
end

---@return EntityRef @ (const)
function EntityPlayer:GetLastDamageSource()
end

---@return Vector @ (const)
function EntityPlayer:GetLastDirection()
end

--- Will return first player of pair characters or current form of characters with multiple forms.
--- 
--- - note "Note"
--- 	* When called on Jacob or Esau, returns Jacob
--- 	* When called on Tainted Forgotten or Tainted Forgotten's Soul, returns Tainted Forgotten
--- 	* When called on any other character, returns that character
---@return EntityPlayer @
function EntityPlayer:GetMainTwin()
end

--- Returns the amount of Heart Containers the player has. 1 unit is half a heart container.
---@return number @ (int)
function EntityPlayer:GetMaxHearts()
end

--- Get the number of Pickup items you can carry. (1 on default. 2 with belly button or similar)
--- 
--- If you have a pocket active, it also increments the number by one.
---@return number @ (int)
function EntityPlayer:GetMaxPocketItems()
end

--- Get the number of trinkets you can carry. (1 on default. 2 with moms purse or similar)
---
---@return number @ (int)
function EntityPlayer:GetMaxTrinkets()
end

---@return CollectibleType @
function EntityPlayer:GetModelingClayEffect()
end

---@return Direction @
function EntityPlayer:GetMovementDirection()
end

---@return Vector @ (const)
function EntityPlayer:GetMovementInput()
end

---@return Vector @
function EntityPlayer:GetMovementJoystick()
end

---@return Vector @
function EntityPlayer:GetMovementVector()
end
--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---@param WeaponType WeaponType @ (default WeaponType.WEAPON_TEARS)
---@return MultiShotParams @
function EntityPlayer:GetMultiShotParams(WeaponType)
end
--- Call this function in a loop with values from 0 to MultiShotParams.NumProjectiles-1 (inclusive)
---@param LoopIndex number @ (int)
---@param Weapon WeaponType @
---@param ShotDirection Vector @
---@param ShotSpeed number @ (float)
---@param params MultiShotParams @
---@return PlayerTypes.PosVel @ (PosVel)
function EntityPlayer:GetMultiShotPositionVelocity(LoopIndex, Weapon, ShotDirection, ShotSpeed, params)
end

--- Returns the name of the player. (Isaac, Cain, Azazel,...)
---@return string @
function EntityPlayer:GetName()
end
--- Normally, this function returns the player. However, in some cases, NPCs can be redirected to attack another target, in which case this function will return the alternate target (e.g. after using Best Friend).
---@return Entity @
function EntityPlayer:GetNPCTarget()
end

---@return number @ (int)
function EntityPlayer:GetNumBlueFlies()
end

---@return number @ (int)
function EntityPlayer:GetNumBlueSpiders()
end

---@return number @ (int)
function EntityPlayer:GetNumBombs()
end

---@return number @ (int)
function EntityPlayer:GetNumCoins()
end

---@return number @ (int)
function EntityPlayer:GetNumGigaBombs()
end

---@return number @ (int)
function EntityPlayer:GetNumKeys()
end

--- Will return second player of pair characters or other form of characters with multiple forms.
--- 
--- - note "Note"
--- 	* When called on Jacob, returns Esau
--- 	* When called on Esau, returns Jacob
--- 	* When called on Tainted Forgotten, returns Tainted Forgotten's Soul
--- 	* When called on Tainted Forgotten's Soul, returns Tainted Forgotten
--- 	* When called on any other character, returns nil
---@return EntityPlayer @
function EntityPlayer:GetOtherTwin()
end

--- Gets the ID of the pill the player is holding in the given itemslot (0 = Main slot, 1 = secondary slot, 2 or 3) Returns `0` when no pill is held in the given slot.
---@param SlotId number @ (int)
---@return PillColor @
function EntityPlayer:GetPill(SlotId)
end

---@param ID PillEffect @
---@return RNG @
function EntityPlayer:GetPillRNG(ID)
end

---@return PlayerType @
function EntityPlayer:GetPlayerType()
end

--- Get the userdata of the pocketitem (Card,Pill,rune) in a said slot.
--- 
--- - Bug
--- >    This function returns userdata, which can't be processed. It is therefore broken and should not be used!
---@param SlotId number @ (int)
---@return PlayerPocketItem @ (const)
function EntityPlayer:GetPocketItem(SlotId)
end
--- Returns the joystick direction that drives player movement, taking into account certain modifiers like disabled controls and seed effects.
---
---@return Vector @ (const)
function EntityPlayer:GetRecentMovementVector()
end

---@return number @ (int)
function EntityPlayer:GetRottenHearts()
end

--- Returns a vector that corresponds to the shooting inputs that this player is pressing.
--- 
--- - Shooting Angle diagram
--- >    ![GetShootingInput diagram](images/infographics/GetShootingInput.png){: width='250' }
---
---@return Vector @
function EntityPlayer:GetShootingInput()
end

--- Returns a vector that corresponds to the shooting inputs that this player is holding.
--- 
--- See the image for the [GetShootingInput](#getshootinginput) method.
---
---@return Vector @
function EntityPlayer:GetShootingJoystick()
end

---@return number @ (float)
function EntityPlayer:GetSmoothBodyRotation()
end

--- Returns the amount of Soul Hearts the player has. 1 unit is half a heart.
--- 
--- - note "Notes"
--- >    Black Hearts count toward this total, as the game sees them as soul hearts.
---
---@return number @ (int)
function EntityPlayer:GetSoulHearts()
end

---@return number @ (int)
function EntityPlayer:GetSoulCharge()
end

--- Returns the other form of The Forgotten.
---
---@return EntityPlayer @
function EntityPlayer:GetSubPlayer()
end
---  Used for tear parameters that are calculated on hit (ex: Tough love, Common cold), DamageScale is used for scale calculation based on damage
---@param WeaponType WeaponType @
---@param DamageScale number @ (float) (default 1)
---@param TearDisplacement number @ (int) (default 1)
---@param Source Entity @ (default nil)
---@return TearParams @
function EntityPlayer:GetTearHitParams(WeaponType, DamageScale, TearDisplacement, Source)
end

---@param ShotDirection Vector @
---@return Vector @
function EntityPlayer:GetTearMovementInheritance(ShotDirection)
end

---@return number @ (float)
function EntityPlayer:GetTearPoisonDamage()
end

---@return number @ (int)
function EntityPlayer:GetTearRangeModifier()
end

---@return number @ (int)
function EntityPlayer:GetTotalDamageTaken()
end

---@return Entity @
function EntityPlayer:GetTractorBeam()
end

--- Gets the ID of the trinket the player is holding in the given trinketslot (0 or 1). Returns `0` when no trinket is held in the given slot.
---@param TrinketIndex number @ (int)
---@return TrinketType @
function EntityPlayer:GetTrinket(TrinketIndex)
end
--- Gets the multiplier of a given Trinket effect. This is analog to the number of times the trinket effect is applied.
--- 
--- - Multiplier Breakdown
--- >    * Per normal trinket of this type equipped / gulped : +1
--- >    * Per golden trinket of this type equipped / gulped : +2
--- >    * Mom's Box equipped : +1 (does not stack)
---@param TrinketID TrinketType @
---@return number @ (int)
function EntityPlayer:GetTrinketMultiplier(TrinketID)
end

---@param TrinketID TrinketType @
---@return RNG @
function EntityPlayer:GetTrinketRNG(TrinketID)
end

---@return Vector @ (const)
function EntityPlayer:GetVelocityBeforeUpdate()
end

---@return CollectibleType @
function EntityPlayer:GetZodiacEffect()
end
--- **IgnoreModifiers**: If set to true, only counts collectibles the player actually owns and ignores effects granted by items like Zodiac, 3 Dollar Bill and Lemegeton
---
---@param Type CollectibleType @
---@param IgnoreModifiers boolean @ (default false)
---@return boolean @
function EntityPlayer:HasCollectible(Type, IgnoreModifiers)
end

---@return boolean @
function EntityPlayer:HasCurseMistEffect()
end

---@return boolean @
function EntityPlayer:HasFullHearts()
end

---@return boolean @
function EntityPlayer:HasFullHeartsAndSoulHearts()
end

---@return boolean @
function EntityPlayer:HasGoldenBomb()
end

---@return boolean @
function EntityPlayer:HasGoldenKey()
end
--- returns true when player is in an invincibility state
---@param Flags DamageFlag @ (default 0)
---@return boolean @
function EntityPlayer:HasInvincibility(Flags)
end

---@param Form PlayerForm @
---@return boolean @
function EntityPlayer:HasPlayerForm(Form)
end
--- Kept for avoiding modding issues.
---@return boolean @
function EntityPlayer:HasTimedItem()
end
--- **IgnoreModifiers**: If set to true, only counts trinkets the player actually holds and ignores effects granted by other items
---@param Type TrinketType @
---@param IgnoreModifiers boolean @ (default false)
---@return boolean @
function EntityPlayer:HasTrinket(Type, IgnoreModifiers)
end

---@param WeaponType WeaponType @
---@return boolean @
function EntityPlayer:HasWeaponType(WeaponType)
end

function EntityPlayer:InitBabySkin()
end

---@param Heart number @ (int)
---@return boolean @
function EntityPlayer:IsBlackHeart(Heart)
end

---@param heart number @ (int)
---@return boolean @
function EntityPlayer:IsBoneHeart(heart)
end
--- In a multiplayer game, if a player dies, they will return as a tiny ghost. This method returns true if the player is a co-op ghost.
---
---@return boolean @
function EntityPlayer:IsCoopGhost()
end

---@return boolean @
function EntityPlayer:IsExtraAnimationFinished()
end

---@return boolean @
function EntityPlayer:IsFullSpriteRendering()
end

---@return boolean @
function EntityPlayer:IsHeldItemVisible()
end
--- Is Player holding up an item (card/collectible/etc)
---@return boolean @
function EntityPlayer:IsHoldingItem()
end

---@return boolean @
function EntityPlayer:IsItemQueueEmpty()
end

---@return boolean @
function EntityPlayer:IsP2Appearing()
end

---@param Position Vector @
---@return boolean @
function EntityPlayer:IsPosInSpotLight(Position)
end
--- Returns true for The Soul. Otherwise, returns false. (This method is not related to multiplayer.)
---@return boolean @
function EntityPlayer:IsSubPlayer()
end

---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@return boolean @
function EntityPlayer:NeedsCharge(ActiveSlot)
end

---@param Animation string @
function EntityPlayer:PlayExtraAnimation(Animation)
end

---@param Animation string @
function EntityPlayer:QueueExtraAnimation(Animation)
end
--- When the player touches a collectible or trinket, they are not granted it immediately. Instead, the item is queued for the duration of the animation where the player holds the item above their head. When the animation is finished, the item in the queue will be granted. This method adds a new item to the item queue. If the player is not currently playing an animation, then the queued item will simply be awarded instantly.
--- 
--- Also see `FlushQueueItem()`, `IsItemQueueEmpty()`, and `QueuedItem`.
---@param Item ItemConfig.Item @
---@param Charge number @ (int) (default 0)
---@param Touched boolean @ (default false)
---@param Golden boolean @ (bool) (default false)
---@param VarData number @ (int) (default 0)
function EntityPlayer:QueueItem(Item, Charge, Touched, Golden, VarData)
end

---@param BlackHeart number @ (int)
function EntityPlayer:RemoveBlackHeart(BlackHeart)
end

function EntityPlayer:RemoveBlueFly()
end

function EntityPlayer:RemoveBlueSpider()
end
--- **IgnoreModifiers**: Ignores collectible effects granted by other items (i.e. Void)
--- 
--- **Slot**: Sets the active slot this collectible should be removed from
--- 
--- **RemoveFromPlayerForm**: If successfully removed and part of a transformation, decrease that transformation's counter by 1
---@param Type CollectibleType @
---@param IgnoreModifiers boolean @ (default false)
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
---@param RemoveFromPlayerForm boolean @ (default true)
function EntityPlayer:RemoveCollectible(Type, IgnoreModifiers, ActiveSlot, RemoveFromPlayerForm)
end
--- Removes a given costume based on its item config entry.
--- 
--- - Example code
--- >    This code removes the costume of the Spoon Bender collectible.
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    local itemConfig = Isaac.GetItemConfig():GetCollectible(CollectibleType.COLLECTIBLE_SPOON_BENDER)
--- >    player:RemoveCostume(itemConfig)
---     ```
---
---@param Item ItemConfig.Item @
function EntityPlayer:RemoveCostume(Item)
end

function EntityPlayer:RemoveCurseMistEffect()
end

function EntityPlayer:RemoveGoldenBomb()
end

function EntityPlayer:RemoveGoldenKey()
end
--- Removes player-specific costumes like Magdalene's hair or Cain's eyepatch.
---
function EntityPlayer:RemoveSkinCostume()
end

---@param position Vector @
function EntityPlayer:RenderBody(position)
end

---@param position Vector @
function EntityPlayer:RenderGlow(position)
end

---@param position Vector @
function EntityPlayer:RenderHead(position)
end

---@param position Vector @
function EntityPlayer:RenderTop(position)
end

---@param Item ItemConfig.Item @
---@param SpritePath string @
---@param SpriteId number @ (int)
function EntityPlayer:ReplaceCostumeSprite(Item, SpritePath, SpriteId)
end

function EntityPlayer:ResetDamageCooldown()
end
--- [Room](Room.md) transitions call this to prevent lock ups.
function EntityPlayer:ResetItemState()
end

function EntityPlayer:RespawnFamiliars()
end
--- revive player
function EntityPlayer:Revive()
end

---@param Charge number @ (int)
---@param ActiveSlot ActiveSlot @ (default ActiveSlot.SLOT_PRIMARY)
function EntityPlayer:SetActiveCharge(Charge, ActiveSlot)
end

--- Only works on Tainted Bethany.
---
---@param Amount number @ (int)
function EntityPlayer:SetBloodCharge(Amount)
end

--- Change the card/rune the player is holding in the given itemslot (0 or 1).
---@param SlotId number @ (int)
---@param ID Card @
function EntityPlayer:SetCard(SlotId, ID)
end

function EntityPlayer:SetFullHearts()
end

---@param DamageCooldown number @ (int)
function EntityPlayer:SetMinDamageCooldown(DamageCooldown)
end

--- Change the pill the player is holding in the given itemslot (0 or 1).
---
---@param SlotId number @ (int)
---@param Pill PillColor @
function EntityPlayer:SetPill(SlotId, Pill)
end

--- Sets the player's pocket active item to the given active item.
--- Slot can be either SLOT_POCKET or SLOT_POCKET2.
--- Items added to SLOT_POCKET2 will always be removed upon being used.
--- If KeepInPools is set to true, the item will not be removed from the item pools.
--- Use this to let the player start with a custom active item in their pocket active slot right away.
---@param Type CollectibleType @
---@param Slot ActiveSlot @
---@param KeepInPools boolean @
function EntityPlayer:SetPocketActiveItem(Type, Slot, KeepInPools)
end

---@param Cooldown number @ (int)
function EntityPlayer:SetShootingCooldown(Cooldown)
end

--- Only works on Bethany.
---
---@param Amount number @ (int)
function EntityPlayer:SetSoulCharge(Amount)
end

---@param TrapDoor GridEntity @
function EntityPlayer:SetTargetTrapDoor(TrapDoor)
end
--- for ghost pepper item + poop and farts
---@param Direction Vector @
function EntityPlayer:ShootRedCandle(Direction)
end

---@param Timeout number @ (int)
---@return EntityLaser @
function EntityPlayer:SpawnMawOfVoid(Timeout)
end

function EntityPlayer:StopExtraAnimation()
end

function EntityPlayer:SwapActiveItems()
end

---@param Position Vector @
---@param Target Vector @
---@return Entity @
function EntityPlayer:ThrowBlueSpider(Position, Target)
end

--- - note "Dip Subtypes"
---     ```lua
--- >    0: normal
--- >    1: red
--- >    2: corny
--- >    3: golden
--- >    4: rainbow
--- >    5: black
--- >    6: holy
--- >    12: stone
--- >    13: flaming
--- >    14: poison
--- >    20: brownie
---     ```
---@param Subtype number @ (int)
---@param Position Vector @
---@param Target Vector @ (default Vector.Zero)
---@return EntityFamiliar @
function EntityPlayer:ThrowFriendlyDip(Subtype, Position, Target)
end

---@param Velocity Vector @
---@return Entity @
function EntityPlayer:ThrowHeldEntity(Velocity)
end

---@param Type CollectibleType @ (default CollectibleType.COLLECTIBLE_NULL)
function EntityPlayer:TriggerBookOfVirtues(Type)
end

---@param Entity Entity @
---@return boolean @
function EntityPlayer:TryHoldEntity(Entity)
end
--- Returns true if an active item pickup cooldown is over. returns true if trinket can be added, else false
---@param Type TrinketType @
---@return boolean @
function EntityPlayer:TryHoldTrinket(Type)
end
--- Tries to remove a costume of the given collectible. `KeepPersistent` is used to define if persistent costumes should be removed. If its set to `false`, it will only remove temporary costumes.
--- 
--- - Example code
--- >    This code removes the costume of the Spoon Bender collectible.
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    player:TryRemoveCollectibleCostume(CollectibleType.COLLECTIBLE_SPOON_BENDER, false)
---     ```
---@param Collectible CollectibleType @
---@param KeepPersistent boolean @
function EntityPlayer:TryRemoveCollectibleCostume(Collectible, KeepPersistent)
end

---@param NullId NullItemID @
function EntityPlayer:TryRemoveNullCostume(NullId)
end

---@param Type TrinketType @
---@return boolean @
function EntityPlayer:TryRemoveTrinket(Type)
end
--- Tries to remove a trinket costume
---@param Trinket TrinketType @
function EntityPlayer:TryRemoveTrinketCostume(Trinket)
end

---@return boolean @
function EntityPlayer:TryUseKey()
end

function EntityPlayer:UpdateCanShoot()
end

--- **Slot**: The active slot this item was used from (set to -1 if this item wasn't triggered by any active slot)
--- 
--- - note "Notes"
--- 	As of Repentance, this method can be used to give the player a Passive Item's effect for the duration of the room.
--- 	This only applies to items that have the 'summonable' metadata tag.
---@param Item CollectibleType @
---@param ShowAnim boolean @ (default false)
---@param KeepActiveItem boolean @ (default false)
---@param AllowNonMainPlayer boolean @ (default true)
---@param ToAddCostume boolean @ (default false)
---@param Slot ActiveSlot @ (default -1)
function EntityPlayer:UseActiveItem(Item, ShowAnim, KeepActiveItem, AllowNonMainPlayer, ToAddCostume, Slot)
end

---@param ID Card @
---@param UseFlags number @ (UseFlags) (default 0)
function EntityPlayer:UseCard(ID, UseFlags)
end

---@param ID PillEffect @
---@param PillColor PillColor @
---@param UseFlags number @ (UseFlags) (default 0)
function EntityPlayer:UsePill(ID, PillColor, UseFlags)
end

---@return boolean @
function EntityPlayer:WillPlayerRevive()
end

--------------------
-- Variables
--------------------
--- P2 Skin section Used to hold the selected skin (in case of glitched baby it will pick a random one)
--- 
--- - Bug
--- >    This variable actually contains userdata and is not usable within API. Attempt to change it will results in a crash.
---
---@type BabySubType @(member)
EntityPlayer.BabySkin = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE. Can the player fly over rocks and pits?
---@type boolean @(member)
EntityPlayer.CanFly = nil

---@type number @(member) (int)
EntityPlayer.ControllerIndex = nil

---@type number @(member) (int)
EntityPlayer.ControlsCooldown = nil

---@type boolean @(member)
EntityPlayer.ControlsEnabled = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE.  **This is equal to the Damage Stat.**  How much damage do the players tears or other main weapons do?
---@type number @(member) (float)
EntityPlayer.Damage = nil
--- How long until the player can spawn their next tear?
---@type number @(member) (int)
EntityPlayer.FireDelay = nil

--- - Bug
--- >    This function returns userdata that cant be edited or accessed.
---@type EntityDesc @(member)
EntityPlayer.FriendBallEnemy = nil

---@type number @(member) (int)
EntityPlayer.HeadFrameDelay = nil
--- Used for avoiding player get stucked between rocks when switching a flying item with other active item.
---@type number @(member) (int)
EntityPlayer.ItemHoldCooldown = nil

---@type Color @(member)
EntityPlayer.LaserColor = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE.  **This is equal to the Luck Stat.**  Better luck generally means better random events.
---@type number @(member) (float)
EntityPlayer.Luck = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE.  **This is equal to the Tears Stat.**  How long between each tear can spawn?
---@type number @(member) (int)
EntityPlayer.MaxFireDelay = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE.  **This is equal to the Speed Stat.**  How fast can the player move?
---@type number @(member) (float)
EntityPlayer.MoveSpeed = nil

--- - When Isaac picks up a collectible or a trinket, he holds it above his head for a while. At this point, the collectible/trinket is not actually put into his inventory yet.
--- - In other words, the item is queued for insertion until the animation completes, at which point the queue is processed and the item is inserted.
--- - `QueuedItem` holds a object of type `QueueItemData` that describes the item that a player is currently holding above their head.
--- - `QueuedItem` is never nil, even if the player is not currently holding up any item. (However, `player.QueuedItem.Item` will be nil if they are not currently holding up any item.)
--- - This only stores data for collectibles and trinkets. It does not store any data for pocket items (even though Isaac plays a similar "holding above head" animation for pocket items).
--- - Also see `FlushQueueItem()`, `IsItemQueueEmpty()`, and `QueueItem()`.
---@type QueueItemData @(member)
EntityPlayer.QueuedItem = nil

--- - Bug
--- >    This function does not exist anymore in Repentance. As of right now, there is no other function to get the [ActiveItemDesc](PlayerTypes_ActiveItemDesc.md) of any active item the player holds. Until this is fixed, this info will stay here.
---@type PlayerTypes.ActiveItemDesc @(member) (ActiveItemDesc)
EntityPlayer.SecondaryActiveItem = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE.  **This is equal to the ShotSpeed Stat.**
--- 
--- Defines how fast the tear travel when spawned.
--- 
--- The default velocity of a tear shot is 10 times the players ShotSpeed.
---@type number @(member) (float)
EntityPlayer.ShotSpeed = nil

---@type Vector @(member)
EntityPlayer.SpriteScale = nil

---@type Color @(member)
EntityPlayer.TearColor = nil

---@type number @(member) (float)
EntityPlayer.TearFallingAcceleration = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE. How fast is the tear moving up or down when it spawns? Affects range.
---@type number @(member) (float)
EntityPlayer.TearFallingSpeed = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE. Various [TearFlags](enums/TearFlags.md).
--- 
--- - example "Example Code"
--- >    This code makes Isaac's tears spectral.
---     ```lua
--- >    local mod:OnEvaluateTearFlags(player, flag)
--- >        player.TearFlags = player.TearFlags | TearFlags.TEAR_SPECTRAL
--- >    end
--- 
--- >    mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.OnEvaluateTearFlags, CacheFlag.CACHE_TEARFLAG)
--- 
---     ```
---@type TearFlags @(member)
EntityPlayer.TearFlags = nil
--- Player stat - Only change this in a callback to MC_EVALUATE_CACHE. How high above the ground is the tear when it spawns?
--- 
--- Note that tear height is not equivalent to the range stat. As of v820, there is no way for mods to update the player's range stat directly. As a workaround, you can award other range-up items.
--- 
--- - example "Example Code"
--- >    This code gives Isaac a +5 range up.
--- 
---     ```lua
--- >    local mod:OnEvaluateRange(player, flag)
--- >        -- we give -5 because the TearHeight stat is always negative; the lower the number - the further the tear travels
--- >        player.TearHeight = player.TearHeight - 5
--- >    end
--- 
--- >    mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.OnEvaluateRange, CacheFlag.CACHE_RANGE)
---     ```
---
---@type number @(member) (float)
EntityPlayer.TearHeight = nil

---@type Vector @(member)
EntityPlayer.TearsOffset = nil
