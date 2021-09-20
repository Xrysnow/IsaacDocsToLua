---@class EntityGridCollisionClass @enum
local EntityGridCollisionClass = {}

---
--- 0
EntityGridCollisionClass.GRIDCOLL_NONE = 0
--- only collide with vertical walls
---
--- 1
EntityGridCollisionClass.GRIDCOLL_WALLS_X = 1
--- only collide with horizontal walls
---
--- 2
EntityGridCollisionClass.GRIDCOLL_WALLS_Y = 2
--- only collide with walls
---
--- 3
EntityGridCollisionClass.GRIDCOLL_WALLS = 3
--- detect collision with solids (no pits), don't correct position
---
--- 4
EntityGridCollisionClass.GRIDCOLL_BULLET = 4
--- collide with all grid entities (rocks, pits, ..), correct position
---
--- 5
EntityGridCollisionClass.GRIDCOLL_GROUND = 5
--- collide with all grid entities except pits and correct position
---
--- 6
EntityGridCollisionClass.GRIDCOLL_NOPITS = 6
--- moving inside a pit, collide with everything else, correct position
---
--- 7
EntityGridCollisionClass.GRIDCOLL_PITSONLY = 7

return EntityGridCollisionClass
