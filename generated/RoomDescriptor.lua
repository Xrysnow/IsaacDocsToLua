---@class RoomDescriptor
local RoomDescriptor = {}

--------------------
-- Variables
--------------------
--- Contains data swapped just on load (in cases like minibosses, or other such events)
--- 
--- + bug "Bug"
---     This variable contains userdata and is therefore not useable.
---@type DoorSet @(member)
RoomDescriptor.AllowedDoors = nil
--- used to spawn clear awards (normal, miniboss, boss rooms) and initialize shop items (shop, devil rooms)
---@type number @(member) (int)
RoomDescriptor.AwardSeed = nil

---@type boolean @(member)
RoomDescriptor.ChallengeDone = nil

---@type boolean @(member)
RoomDescriptor.Clear = nil
--- room is clear, don't spawn enemies when visiting
---@type number @(member) (int)
RoomDescriptor.ClearCount = nil

---@type RoomConfig.Room @(member)
RoomDescriptor.Data = nil
--- used for cosmetic stuff like backdrops, room decorations, shopkeeper skins
---@type number @(member) (int)
RoomDescriptor.DecorationSeed = nil
--- Helper for The Void stage, holds the distance to the Delirium boss in room nr.
---@type number @(member) (int)
RoomDescriptor.DeliriumDistance = nil

--- Indicates what is visible on the minimap.
--- **Display Flags (bitwise):**
--- ```lua
--- 1 << -1 -- Invisible
--- 1 << 0 -- Visible
--- 1 << 1 -- Room Shadow
--- 1 << 2 -- Show Icon
--- ```
--- 
--- - example "Examples"
---     The flags are hard to interpret, but here are some examples:
--- 
---     **000** = invisible, this is how most rooms start
--- 
---     **101** = standard room visibility, this includes rooms that are adjacent and you haven't actively visited. This will usually show icons.
--- 
---     **011** = secret room, locked rooms, sac rooms pre-entry*
--- 
---     **111** = 011 rooms after entry, but also the rooms directly adjacent to them* (applied after entry)
--- 
---     \* If you have spelunker's hat, bit 1 is completely unused. All special rooms will have the normal behavior of either 000 or 101. iirc this is unique to spelunker's hat, mapping items follow the normal rules.
--- 
--- + quote "Quote from User 'Budj'"
---     From this my best guess is that bits 1 and 2 are special rendering (display) flags that may have more meaning down below.
--- 
---     The important bit for using them is minding that they're used differently mostly for special rooms.
--- 
---     As far as I've seen, 001 is completely unused.
---     010, 100, and 110 may be used for compass or blue map, I don't remember. I think they use 100
---@type number @(member) (int)
RoomDescriptor.DisplayFlags = nil
--- index in the level grid (always top left)
--- 
--- - note "Notes"
---     This will always return the top left coordinate of the room on the levelgrid. Therefore, it will return an index not part of the actual room, when checking this value for J-shaped rooms. (See graphic below)
--- 
---     ![Room Grid indicies](images/infographics/RoomGridIndicies.png)
---@type number @(member) (int)
RoomDescriptor.GridIndex = nil

---@type boolean @(member)
RoomDescriptor.HasWater = nil
--- index in the room list
---@type number @(member) (int)
RoomDescriptor.ListIndex = nil

---@type boolean @(member)
RoomDescriptor.NoReward = nil
--- Tim's reminder to himself: The room variant is in Data. Because Room::Init uses a mix of datas, one from level layout and one from replacement data like minibosses, we need to hold the new room data somewhere.
---@type RoomConfig.Room @(member)
RoomDescriptor.OverrideData = nil

---@type number @(member) (int)
RoomDescriptor.PitsCount = nil

---@type number @(member) (int)
RoomDescriptor.PoopCount = nil

---@type boolean @(member)
RoomDescriptor.PressurePlatesTriggered = nil

---@type boolean @(member)
RoomDescriptor.SacrificeDone = nil
--- index in the level grid (not always top left, but is guaranteed to point to the room. this is important for LTL shapes!)
--- 
--- - note "Notes"
---     This will always return the top left coordinate of the room on the levelgrid, except for J-shaped rooms, where it returns the top right index. (see graphic below)
--- 
---     ![Room Grid indicies](images/infographics/RoomGridIndicies.png)
---@type number @(member) (int)
RoomDescriptor.SafeGridIndex = nil

---@type number @(member) (int)
RoomDescriptor.ShopItemDiscountIdx = nil

---@type number @(member) (int)
RoomDescriptor.ShopItemIdx = nil
--- used to spawn entities at room load and initialize enemy drop seeds
---@type number @(member) (int)
RoomDescriptor.SpawnSeed = nil

---@type boolean @(member)
RoomDescriptor.SurpriseMiniboss = nil
--- how often the room has been visited
---@type number @(member) (int)
RoomDescriptor.VisitedCount = nil
