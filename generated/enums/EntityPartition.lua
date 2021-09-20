---@class EntityPartition @enum
local EntityPartition = {}

---
--- 1
EntityPartition.FAMILIAR = 1
---
--- 1<<1
EntityPartition.BULLET = 2^1
---
--- 1<<2
EntityPartition.TEAR = 2^2
---
--- 1<<3
EntityPartition.ENEMY = 2^3
---
--- 1<<4
EntityPartition.PICKUP = 2^4
---
--- 1<<5
EntityPartition.PLAYER = 2^5
--- {: .rep .tooltip .badge }**BUG:** This flag currently does not work!
---
--- 1<<6
EntityPartition.EFFECT = 2^6

return EntityPartition
