---@class Mod.Reference @
local Mod_Reference = {}

--------------------
-- Functions
--------------------

---@param callbackId number @ (int)
---@param callbackFn function @
---@param entityId number @ (int)
function Mod_Reference:AddCallback(callbackId, callbackFn, entityId)
end

--- Returns "true" if your mod has Data stored using the "SaveData()" function. Aka. if there is a "saveX.dat" file in your mod folder. There are 3 "saveX.dat" files, one per Savegame. They are stored in the mod's folder next to the "main.lua" file. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
---@return boolean @
function Mod_Reference:HasData()
end

--- Returns a string that was stored in a "saveX.dat" file using the "SaveData()" function. If there is no "saveX.dat" file in your mod, this function will return an empty string.
--- There are 3 "saveX.dat" files, one per Savegame. They are stored in the mod's folder next to the "main.lua" file. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- - example "Example Code"
---     This code loads a string that was stored in the "saveX.dat" file, if it exists, and converts it into a table using JSON.
--- 
---     ```lua
---     local yourMod = RegisterMod("someMod", 1)
---     local json = require("json")
---     -- ...
---     function yourMod:OnGameStart(isSave)
---     	--Loading Moddata--
---     	if yourMod:HasData() then
---     		local myTable = json.decode(yourMod:LoadData())
---     	end
---     end
---     yourMod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, yourMod.OnGameStart)
--- 
---     ```
---
---@return string @
function Mod_Reference:LoadData()
end

---@param callbackId number @ (int)
---@param callbackFn function @
function Mod_Reference:RemoveCallback(callbackId, callbackFn)
end

--- Deletes the stored "saveX.dat" file if it exists.
--- There are 3 "saveX.dat" files, one per Savegame. They are stored in the mod's folder next to the "main.lua" file. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
function Mod_Reference:RemoveData()
end

--- Stores a string in a "saveX.dat" file. The stored Data persists thruout resets and game restart, so its perfect to store persistent data.
--- There are 3 "saveX.dat" files, one per Savegame. They are stored in the mod's folder next to the "main.lua" file. The number indicates the savegame it corresponds to. The number will be determined automatically by the game.
--- 
--- - example "Example Code"
---     This code uses JSON to convert a table into a string, and saves it in the "saveX.dat" file.
---     ```lua
---     local yourMod = RegisterMod("someMod", 1)
---     local json = require("json")
---     -- ...
---     --Saving Moddata--
---     function yourMod:SaveGame()
---         local table= {1,2,3}
---         yourMod:SaveData(json.encode(table))
---     end
---     yourMod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, yourMod.SaveGame)
--- 
---     ```
---@param data string @
function Mod_Reference:SaveData(data)
end

--------------------
-- Variables
--------------------

---@type string @(member)
Mod_Reference.Name = nil
