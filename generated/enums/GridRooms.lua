---@class GridRooms @enum
local GridRooms = {}

---
--- -99999
GridRooms.NO_ROOM_IDX = -99999
---
--- -1
GridRooms.ROOM_DEVIL_IDX = -1
---
--- -2
GridRooms.ROOM_ERROR_IDX = -2
---
--- -3
GridRooms.ROOM_DEBUG_IDX = -3
---
--- -4
GridRooms.ROOM_DUNGEON_IDX = -4
---
--- -5
GridRooms.ROOM_BOSSRUSH_IDX = -5
---
--- -6
GridRooms.ROOM_BLACK_MARKET_IDX = -6
---
--- -7
GridRooms.ROOM_MEGA_SATAN_IDX = -7
---
--- -8
GridRooms.ROOM_BLUE_WOOM_IDX = -8
---
--- -9
GridRooms.ROOM_THE_VOID_IDX = -9
---
--- -10
GridRooms.ROOM_SECRET_EXIT_IDX = -10
---
--- -11
GridRooms.ROOM_GIDEON_DUNGEON_IDX = -11
---
--- -12
GridRooms.ROOM_GENESIS_IDX = -12
---
--- -13
GridRooms.ROOM_SECRET_SHOP_IDX = -13
---
--- -14
GridRooms.ROOM_ROTGUT_DUNGEON1_IDX = -14
---
--- -15
GridRooms.ROOM_ROTGUT_DUNGEON2_IDX = -15
---
--- -16
GridRooms.ROOM_BLUE_ROOM_IDX = -16
---
--- -17
GridRooms.ROOM_EXTRA_BOSS_IDX = -17
---
--- -18
GridRooms.ROOM_ANGEL_SHOP_IDX = -18
--- Not real room index, doors that point to this have special behavior
---
--- -100
GridRooms.ROOM_MIRROR_IDX = -100
--- Not real room index, doors that point to this have special behavior
---
--- -101
GridRooms.ROOM_MINESHAFT_IDX = -101
---
--- 18
GridRooms.NUM_OFF_GRID_ROOMS = 18
---
--- 507
GridRooms.MAX_GRID_ROOMS = 507
---
--- 525
GridRooms.MAX_ROOMS = 525

return GridRooms
