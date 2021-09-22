---@class LevelStage @enum
LevelStage = {}

--- Special Rooms (Game crashes on entering this stage)
---
--- 0
LevelStage.STAGE_NULL = 0
--- Basement 1, Cellar 1, Burning Basement 1, Downpour 1, Dross 1
---
--- 1
LevelStage.STAGE1_1 = 1
--- Basement 2, Cellar 2, Burning Basement 2, Downpour 2, Dross 2
---
--- 2
LevelStage.STAGE1_2 = 2
--- Caves 1, Catacombs 1, Flooded Caves 1, Mines 1, Ashpit 1
---
--- 3
LevelStage.STAGE2_1 = 3
--- Caves 2, Catacombs 2, Flooded Caves 2, Mines 2, Ashpit 2
---
--- 4
LevelStage.STAGE2_2 = 4
--- Depths 1, Necropolis 1, Dank Depths 1, Mausoleum 1, Gehenna 1
---
--- 5
LevelStage.STAGE3_1 = 5
--- Depths 2, Necropolis 2, Dank Depths 2, Mausoleum 2, Gehenna 2
---
--- 6
LevelStage.STAGE3_2 = 6
--- Womb 1, Utero 1, Scarred Womb 1, Corpse 1
---
--- 7
LevelStage.STAGE4_1 = 7
--- Womb 2, Utero 2, Scarred Womb 2, Corpse 2
---
--- 8
LevelStage.STAGE4_2 = 8
--- ??? (Blue Womb)
---
--- 9
LevelStage.STAGE4_3 = 9
--- Sheol, Cathedral
---
--- 10
LevelStage.STAGE5 = 10
--- Dark Room, Chest
---
--- 11
LevelStage.STAGE6 = 11
--- The Void
---
--- 12
LevelStage.STAGE7 = 12
--- Home
---
--- 13
LevelStage.STAGE8 = 13
--- (No actual Level, but can be visited ingame. it is a stage full of greed mode rooms, but every wave is its own room.)
---
--- 14
LevelStage.NUM_STAGES = 14
--- Basement (Greed)
---
--- 1
LevelStage.STAGE1_GREED = 1
--- Caves (Greed)
---
--- 2
LevelStage.STAGE2_GREED = 2
--- Depths (Greed)
---
--- 3
LevelStage.STAGE3_GREED = 3
--- Womb (Greed)
---
--- 4
LevelStage.STAGE4_GREED = 4
--- Sheol (Greed)
---
--- 5
LevelStage.STAGE5_GREED = 5
--- The Shop (Greed)
---
--- 6
LevelStage.STAGE6_GREED = 6
--- Ultra Greed
---
--- 7
LevelStage.STAGE7_GREED = 7
---
--- 7
LevelStage.NUM_BACKWARDS_STAGES = 7

return LevelStage
