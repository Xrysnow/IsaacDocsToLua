---@class Isaac
local Isaac = {}

--------------------
-- Functions
--------------------

--- It is recommended to use the [AddCallback](ModReference.md#addcallback) function on a [Mod Reference](ModReference.md) instead.
---
---@param modRef table @
---@param callbackId function @
---@param callbackFn table @
function Isaac:AddCallback(modRef, callbackId, callbackFn)
end
--- returns pill color
---@return number @ (int)
function Isaac:AddPillEffectToPool()
end

--- Prints a string into the Debug Console
--- 
--- - example "Example Code"
---     You can use this example as an alternative.
---     ```lua
---     Isaac.ConsoleOutput("This is a Test.")
---     -- Output: This is a Test.
--- 
---     -- Alternatively:
---     print("This is a Test.")
---     -- Output: This is a Test.
--- 
---     ```
---
function Isaac:ConsoleOutput()
end

--- Returns the number of bosses in the current room.
---@return number @ (int)
function Isaac:CountBosses()
end

--- Returns the number of enemies in the current room.
---@return number @ (int)
function Isaac:CountEnemies()
end

--- Returns the number of entities in the current room that fulfill the specified requirements.
--- Spawner refers to an entity object (can be `nil`)
--- Type refers to the found entity's type (Can be `EntityType.ENTITY_NULL`)
--- Variant and Subtype refer to the found entitys Variant and Subtype (Can be `-1`)
--- 
--- + bug "Bugs"
---     This function is broken as of now and can return values from other segments of game's memory
---
---@param Spawner Entity @
---@param Type EntityType @ (default EntityType.ENTITY_NULL)
---@param Variant number @ (int) (default -1)
---@return number @ (int)
function Isaac:CountEntities(Spawner, Type, Variant)
end

--- Prints a string into the log file. You can find this file here `%systemdrive%\Users\%username%\Documents\My Games\Binding of Isaac Repentance\log.txt`
--- 
--- - example "Example Code"
---     This code prints `"This is a Test."` in the log.txt file.
---     ```lua
---     Isaac.DebugString("This is a Test.")
---     -- Output: [INFO] - Lua Debug: This is a Test.
--- 
---     ```
---
function Isaac:DebugString()
end

--- This function executes a debug console command. see the
--- [Debug Console Tutorial](tutorials/DebugConsole.md) for informations on how to use commands.
---@return string @
function Isaac:ExecuteCommand()
end

--- Spawn an explosion on a specified location.
---@param pos Vector @
---@param source Entity @
function Isaac:Explode(pos, source)
end
--- Returns entities based on Type, Variant, Subtype. If Variant and/or Subtype is -1 then everything is includedUse Cache flag for multiple calls per frame.
---@param Type EntityType @
---@param Variant number @ (int) (default -1)
---@param SubType number @ (int) (default -1)
---@param Cache boolean @ (default false)
---@return table @
function Isaac:FindByType(Type, Variant, SubType, Cache)
end
--- Returns entities in range of Radius from Position filtered by Partitions mask (see [EntityPartition enum](enums/EntityPartition.md)) (include all = 0xffffffff)
--- 
--- This function does not return the entities sorted by nearest first, but based on the order they were loaded.
---@param Position Vector @
---@param Radius number @ (float)
---@return table @
function Isaac:FindInRadius(Position, Radius)
end

--- Returns the CardID based on its hud value. (File: pocketitems.xml) Returns `-1` if no card with that name could be found.
--- 
--- - note "Notes"
---     The name of this function is misleading, this function will only work with the hud value of a card and not the name of a card.
--- 
--- - example "Example Code"
---     This code gets the CardID of XVI - The Tower.
---     ```lua
---     Isaac.GetCardIdByName("16_TheTower")
---     --Returns: 17
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetCardIdByName()
end
--- Returns the ID of a challenge the player is currently in. Returns 0 if the player is not playing any challenge.
---@return number @ (int)
function Isaac:GetChallenge()
end

--- Returns the ChallengeID of a challenge based on its name. (File: challenges.xml) Returns `-1` if no challenge with that name could be found (Case sensitive).
--- 
--- - example "Example Code"
---     This code gets the ChallengeID of Aprils fool.
---     ```lua
---     Isaac.GetChallengeIdByName("Aprils fool")
---     --Returns: 32
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetChallengeIdByName()
end

--- Returns the CostumeID of a costume based on its file path. (File: costumes2.xml) Returns `-1` if no costume with that path could be found.
--- 
--- - example "Example Code"
---     This code gets the CostumeID of the Poop transformation costume.
---     ```lua
---     Isaac.GetCostumeIdByPath("gfx/characters/n027_Transformation_Poop.anm2")
---     --Returns: 27
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetCostumeIdByPath()
end

--- Returns the CurseID of a curse based on its name. (File: curses.xml) Returns `-1` if no curse with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the CurseID of Curse of the Unknown.
---     ```lua
---     Isaac.GetCurseIdByName("Curse of the Unknown")
---     --Returns: 4
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetCurseIdByName()
end

--- Returns the EntityType of an entity based on its name. (File: entities2.xml) Returns `0` if no entity with that name could be found.
--- 
--- - note "Notes"
---     There is no SubType version of this function.
--- 
--- - example "Example Code"
---     This code gets the EntityType of Flaming Gaper.
---     ```lua
---     Isaac.GetEntityTypeByName("Flaming Gaper")
---     --Returns: 10
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetEntityTypeByName()
end

--- Returns the variant of an entity based on its name. (File: entities2.xml) Returns `-1` if no entity with that name could be found.
--- 
--- - note "Notes"
---     There is no SubType version of this function.
--- 
--- - example "Example Code"
---     This code gets the variant of Flaming Gaper.
---     ```lua
---     Isaac.GetEntityVariantByName("Flaming Gaper")
---     --Returns: 2
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetEntityVariantByName()
end

--- Returns the amount of frames the game as a whole is running. The counter increases even when the game is paused or when you are in the main menu!
--- 1 second equals roughtly 60 frames.
--- This function therefore works drastically different than `Game():GetFrameCount()`[Link](Game.md#GetFrameCount)
---@return number @ (int)
function Isaac:GetFrameCount()
end

---@param pos Vector @
---@return Vector @
function Isaac:GetFreeNearPosition(pos)
end
--- Returns the [ItemConfig::Config](ItemConfig.md) object.
---@return Config @
function Isaac:GetItemConfig()
end

--- Returns the ItemID of a Collectible. (File: items.xml) Returns `-1` if no item with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the ItemID of Brimstone.
---     ```lua
---     Isaac.GetItemIdByName("Brimstone")
---     --Returns: 118
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetItemIdByName()
end

--- Returns the MusicID of a music track. (File: music.xml) Returns `-1` if no music with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the MusicID of the Title Screen.
---     ```lua
---     Isaac.GetMusicIdByName("Title Screen")
---     --Returns: 61
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetMusicIdByName()
end

--- Returns the PillEffectID based on its name. (File: pocketitems.xml) Returns `-1` if no pill with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the PillEffectID of I can see forever!.
---     ```lua
---     Isaac.GetPillEffectByName("I can see forever!")
---     --Returns: 23
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetPillEffectByName()
end

--- Returns the EntityPlayer which the user is controlling. 0 = Main player. Higher numbers refer to coop players or babies. If an index is given, that is not used, it will return the last player in the list.
--- 
--- This function can return `nil` if the function is called before any player is initialized.
--- 
--- This function is the same as [`Game():GetPlayer()`](Game.md#getplayer).
--- 
--- - example "Example Code"
---     ```lua
---     Isaac.GetPlayer(0)
--- 
---     ```
---
---@return EntityPlayer @
function Isaac:GetPlayer()
end

--- Returns the PlayerType (ID) of a character based on its name. (File: players.xml) Returns `-1` if no player with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the PlayerType of Azazel.
---     ```lua
---     Isaac.GetPlayerTypeByName("Azazel")
---     --Returns: 7
--- 
---     ```
---
---@param playerName string @
---@return PlayerType @
function Isaac:GetPlayerTypeByName(playerName)
end

--- Returns a random position inside the current room. The Return value is a Vector containing the position in world coordinates.
---@return Vector @
function Isaac:GetRandomPosition()
end
--- Returns a table containing all entities in the room.
---@return table @
function Isaac:GetRoomEntities()
end

--- Returns the SoundEffectID of a sound based on its name. (File: sounds.xml) Returns `-1` if no sound with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the SoundEffectID of a sound named "Custom Sound Effect"
---     ```lua
---     Isaac.GetSoundIdByName("Custom Sound Effect")
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetSoundIdByName()
end

--- Returns the width of the given string in pixels based on the "terminus8" font (same font as used in Isaac.RenderText())
---@return number @ (int)
function Isaac:GetTextWidth()
end

--- Returns the current game time in milliseconds. This includes pauses!
--- Is actually a binding to the os.clock() function that is not available without --luadebug
---@return number @ (int)
function Isaac:GetTime()
end

--- Returns the TrinketType of a trinket based on its name. (File: items.xml) Returns `-1` if no trinket with that name could be found.
--- 
--- - example "Example Code"
---     This code gets the TrinketType of Lucky Toe.
---     ```lua
---     Isaac.GetTrinketIdByName("Lucky Toe")
---     --Returns: 42
--- 
---     ```
---
---@return number @ (int)
function Isaac:GetTrinketIdByName()
end

--- Spawn a [GridEntity](GridEntity.md) at the given position (world coordinates).
--- 
--- + bug "Bugs"
---     forced has no effect and will NOT override the grid entity at the given location. Remove a grid entity at the given location if nessesary before spawning something again.
---@param gridEntityType GridEntity @
---@param Variant number @ (int)
---@param position Vector @
---@return GridEntity @
function Isaac:GridSpawn(gridEntityType, Variant, position)
end

--- Returns "true" if your mod has Data stored using the "SaveModData()" function. Aka. if there is a "saveX.dat" file in your mod folder.
--- 
--- There are 3 "saveX.dat" files, one per Savegame. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- For AB+, they are stored inside their mod's folder next to the "main.lua" file.
--- 
--- For Repentance, They are stored in the "data" folder next to the "mods" folder inside the game files.
--- 
--- It is recommended to use the [HasData](ModReference.md#hasdata) function on a [Mod Reference](ModReference.md) instead.
---@return boolean @
function Isaac:HasModData()
end

--- Returns a string that was stored in a "saveX.dat" file using the "SaveModData()" function. If there is no "saveX.dat" file in your mod, this function will return an empty string.
--- There are 3 "saveX.dat" files, one per Savegame. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- If you call this function in the main menu, it will return the save data for save slot 1 by default.
--- 
--- For AB+, they are stored inside their mod's folder next to the "main.lua" file.
--- 
--- For Repentance, They are stored in the "data" folder next to the "mods" folder inside the game files.
--- 
--- It is recommended to use the [LoadData](ModReference.md#loaddata) function on a [Mod Reference](ModReference.md) instead.
---@return string @
function Isaac:LoadModData()
end

--- Registers a table with the game to use as a [Mod Reference](ModReference.md).
--- 
--- It is recommended to use the global [RegisterMod](GlobalFunctions.md#registermod) function instead.
---
---@param modRef table @
---@param modName string @
function Isaac:RegisterMod(modRef, modName)
end

--- It is recommended to use the [RemoveCallback](ModReference.md#removecallback) function on a [Mod Reference](ModReference.md) instead.
---
---@param modRef table @
---@param callbackId function @
function Isaac:RemoveCallback(modRef, callbackId)
end

--- Deletes the stored "saveX.dat" file if it exists.
--- There are 3 "saveX.dat" files, one per Savegame. They are stored in the mod's folder next to the "main.lua" file. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- It is recommended to use the [RemoveData](ModReference.md#removedata) function on a [Mod Reference](ModReference.md) instead.
function Isaac:RemoveModData()
end

--- Renders a scaled text on the Screen. X and Y coordinates need to be in screen coordinates ( x[0,~500) y [0,~350) ). ScaleX, ScaleY, R ,G ,B and A need to be between [0,1]. Some scale values can cause the font to display deformed and pixelated.
--- 
--- - example "Example Code"
---     This code renders the player position on the screen.
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     local pos = player.Position
---     Isaac.RenderText("X: "..pos.X.." Y: "..pos.Y, 50, 50, 0.5, 0.5, 1 ,1 ,1 ,1 )
--- 
---     ```
---
---@param str string @
---@param X number @ (float)
---@param Y number @ (float)
---@param ScaleX number @ (float)
---@param ScaleY number @ (float)
---@param R number @ (float)
---@param G number @ (float)
---@param B number @ (float)
function Isaac:RenderScaledText(str, X, Y, ScaleX, ScaleY, R, G, B)
end

--- Renders a text with the default size on the Screen. X and Y coordinates need to be in screen coordinates ( x[0,~500) y [0,~350) ). R,G,B and A need to be between [0,1].
--- 
--- - example "Example Code"
---     This code renders the player position on the screen.
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     local pos = player.Position
---     Isaac.RenderText("X: "..pos.X.." Y: "..pos.Y, 50, 50, 1 ,1 ,1 ,1 )
--- 
---     ```
---
---@param str string @
---@param X number @ (float)
---@param Y number @ (float)
---@param R number @ (float)
---@param G number @ (float)
---@param B number @ (float)
function Isaac:RenderText(str, X, Y, R, G, B)
end

--- Stores a string in a "saveX.dat" file. The stored Data persists thruout resets and game restart, so its perfect to store persistent data.
--- 
--- There are 3 "saveX.dat" files, one per Savegame. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- For AB+, they are stored inside their mod's folder next to the "main.lua" file.
--- 
--- For Repentance, They are stored in the "data" folder next to the "mods" folder inside the game files.
--- 
--- It is recommended to use the [SaveData](ModReference.md#savedata) function on a [Mod Reference](ModReference.md) instead.
---@param modRef table @
function Isaac:SaveModData(modRef)
end

--- Transfers Screen (aka. Window coordinates) into Worldcoordinates. This can be used to get a specific location in the room in World coordnates The World coordinate system is x[0,inf) y[0,inf).
---@return Vector @
function Isaac:ScreenToWorld()
end

---@return Vector @
function Isaac:ScreenToWorldDistance()
end

--- Spawns the defined entity at the given location. If the position is not free, it spawns it in the nearest free position.
--- There are two spawn functions. [Isaac.Spawn()](Isaac.md#spawn) and [Game():Spawn()](Game.md#spawn). If you need to spawn something with a specific seed, then you use [Game():Spawn()](Game.md#spawn). If you need to spawn something with a randomly generated seed, then use [Isaac.Spawn()](Isaac.md#spawn). Most of the time, you will probably want to use [Isaac.Spawn()](Isaac.md#spawn).
--- 
--- - example "Example Code"
---     This code spawns a random collectible at in center of the current room.
---     ```lua
---     Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, 0, Vector(320,280), Vector(0,0), nil)
--- 
---     ```
---@param entityType number @ (int)
---@param entityVariant number @ (int)
---@param entitySubtype number @ (int)
---@param position Vector @
---@param velocity Vector @
---@return Entity @
function Isaac:Spawn(entityType, entityVariant, entitySubtype, position, velocity)
end

--- Transfers world (aka. game coordinates) into Rendercoordinates. This can be used to render things at fixed positions in a room. The Render coordinate system is x[0,inf) y[0,inf). It defines the Position on the rendering-plane in the current room.
--- 
--- - example "Example Code"
---     This code render "test" at the position of the mouse cursor independend on if the game is in full screen or not.
---     ```lua
---     local mousePos = Input.GetMousePosition(true)
---     local renderpos = Isaac.WorldToRenderPosition(mousePos) * 2
---     Isaac.RenderText("test", renderpos.X, renderpos.Y, 1 ,1 ,1 ,1 )
---     ```
---
---@return Vector @
function Isaac:WorldToRenderPosition()
end

--- Transfers world (aka. game coordinates) into Screen (aka. Window) coordinates. This can be used to render things next to an entity. The Screen coordinate system is x[0,inf) y[0,inf). Normally, it goes till ~500x ~300y. The return vector contains integer values or numbers ending with .5
--- 
--- - example "Example Code"
---     This code render "test" at the position of the player. The text will move with isaac.
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     local screenpos = Isaac.WorldToScreen(player.Position)
---     Isaac.RenderText("test", screenpos.X, screenpos.Y, 1 ,1 ,1 ,1 )
--- 
---     ```
---
---@return Vector @
function Isaac:WorldToScreen()
end

---@return Vector @
function Isaac:WorldToScreenDistance()
end
