---@class EntityCollisionClass @enum
local EntityCollisionClass = {}

--- no collision with other entities <br>
---
--- 0
EntityCollisionClass.ENTCOLL_NONE = 0
--- collide with player only <br>
---
--- 1
EntityCollisionClass.ENTCOLL_PLAYERONLY = 1
--- collide with player, tears, familiars, .. <br>
---
--- 2
EntityCollisionClass.ENTCOLL_PLAYEROBJECTS = 2
--- collide with enemies <br>
---
--- 3
EntityCollisionClass.ENTCOLL_ENEMIES = 3
--- collide with everything <br>
---
--- 4
EntityCollisionClass.ENTCOLL_ALL = 4

return EntityCollisionClass
