---@class RoomConfig.Room @
local Room = {}

--------------------
-- Variables
--------------------

---@type Difficulty @(member)
Room.Difficulty = nil
--- Returns a bit mask of the positions of the doors in this room. It is  a combination of bit flags of the DoorSlotFlag enum, which is defined as follows:
--- 
--- ```lua
--- enum DoorSlotFlag {
---   LEFT0 = 1 << DoorSlot.LEFT0,
---   UP0 = 1 << DoorSlot.UP0,
---   RIGHT0 = 1 << DoorSlot.RIGHT0,
---   DOWN0 = 1 << DoorSlot.DOWN0,
---   LEFT1 = 1 << DoorSlot.LEFT1,
---   UP1 = 1 << DoorSlot.UP1,
---   RIGHT1 = 1 << DoorSlot.RIGHT1,
---   DOWN1 = 1 << DoorSlot.DOWN1,
--- }
--- ```
---@type number @(member) (int)
Room.Doors = nil

---@type number @(member) (int)
Room.Height = nil

---@type number @(member) (float)
Room.InitialWeight = nil

---@type string @(member)
Room.Name = nil

---@type RoomShape @(member)
Room.Shape = nil

---@type number @(member) (int)
Room.SpawnCount = nil

---@type SpawnList @(member)
Room.Spawns = nil
--- The stage the room was designed for.
--- 
--- - note "Stage IDs (corresponds to ids in stages.xml)"
--- 
---     | ID | Backdrop | Notes |
---     |--:|:--||
---     |0|Special Rooms||
---     |1|Basement||
---     |2|Cellar||
---     |3|Burning Basement||
---     |4|Caves||
---     |5|Catacombs||
---     |6|Drowned Caves||
---     |7|Depths||
---     |8|Necropolis||
---     |9|Dank Depths||
---     |10|Womb||
---     |11|Utero||
---     |12|Scarred Womb||
---     |13|Blue Womb (Hush)||
---     |14|Sheol||
---     |15|Cathedral||
---     |16|Dark Room||
---     |17|Chest||
---     |18|Special Rooms (Greed Mode)||
---     |19|Basement (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |20|Caves (Greed Mode)|Normally inaccessible unless in the first variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |21|Depths (Greed Mode)|Normally inaccessible unless in the second variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |22|Womb (Greed Mode)|Normally inaccessible unless in the third variant of unused stage 13. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |23|Sheol (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |24|The Shop (Greed Mode)|Normally inaccessible. In greed mode, the main room is based off of the Special Rooms (Greed Mode) file.|
---     |25|Ultra Greed (Greed Mode)||
---     |26|The Void|Normally inaccessible. This stage uses rooms from other stages, and will return their respective values.|
---
---@type number @(member) (int)
Room.StageID = nil

---@type number @(member) (int)
Room.Subtype = nil

---@type RoomType @(member)
Room.Type = nil

---@type number @(member) (int)
Room.Variant = nil

---@type number @(member) (float)
Room.Weight = nil

---@type number @(member) (int)
Room.Width = nil
