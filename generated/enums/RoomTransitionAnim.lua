---@class RoomTransitionAnim @enum
local RoomTransitionAnim = {}

--- mostly when using doors
---
--- 0
RoomTransitionAnim.WALK = 0
--- fadein/fadout used for Mom's Hand
---
--- 1
RoomTransitionAnim.FADE = 1
--- fade+pixelation effect used for secret item dungeon
---
--- 2
RoomTransitionAnim.PIXELATION = 2
---
--- 3
RoomTransitionAnim.TELEPORT = 3
--- for curse of the maze
---
--- 4
RoomTransitionAnim.MAZE = 4
---
--- 5
RoomTransitionAnim.ANKH = 5
---
--- 6
RoomTransitionAnim.DEAD_CAT = 6
---
--- 7
RoomTransitionAnim.ONE_UP = 7
---
--- 8
RoomTransitionAnim.COLLAR = 8
---
--- 9
RoomTransitionAnim.JUDAS_SHADOW = 9
---
--- 10
RoomTransitionAnim.LAZARUS = 10
--- for Ventricle razor teleport
---
--- 11
RoomTransitionAnim.WOMB_TELEPORT = 11
--- for glowing hourglass teleport
---
--- 12
RoomTransitionAnim.GLOWING_HOURGLASS = 12
---
--- 13
RoomTransitionAnim.D7 = 13
---
--- 14
RoomTransitionAnim.MISSING_POSTER = 14
--- No transition, goes directly to boss intro (for backasswards challenge)
---
--- 15
RoomTransitionAnim.BOSS_FORCED = 15
--- for card reading teleport
---
--- 16
RoomTransitionAnim.PORTAL_TELEPORT = 16
--- for the Forgotten's birthright
---
--- 17
RoomTransitionAnim.FORGOTTEN_TELEPORT = 17
---
--- 18
RoomTransitionAnim.FADE_MIRROR = 18
---
--- 19
RoomTransitionAnim.MINECART = 19
---
--- 20
RoomTransitionAnim.DEATH_CERTIFICATE = 20

return RoomTransitionAnim
