---@class ActionTriggers @enum
ActionTriggers = {}

---
--- 0
ActionTriggers.ACTIONTRIGGER_NONE = 0
---
--- 1
ActionTriggers.ACTIONTRIGGER_BOMBPLACED = 1
---
--- 1<<1
ActionTriggers.ACTIONTRIGGER_MOVED = 2^1
---
--- 1<<2
ActionTriggers.ACTIONTRIGGER_SHOOTING = 2^2
---
--- 1<<3
ActionTriggers.ACTIONTRIGGER_CARDPILLUSED = 2^3
---
--- 1<<4
ActionTriggers.ACTIONTRIGGER_ITEMACTIVATED = 2^4
---
--- 1<<5
ActionTriggers.ACTIONTRIGGER_ITEMSDROPPED = 2^5

return ActionTriggers
