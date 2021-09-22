---@class UseFlag @enum
UseFlag = {}

--- Don't play use animations
---
--- 1
UseFlag.USE_NOANIM = 1
--- Don't add costume
---
--- 1<<1
UseFlag.USE_NOCOSTUME = 2^1
--- Effect was triggered by an active item owned by the player
---
--- 1<<2
UseFlag.USE_OWNED = 2^2
--- Allow the effect to trigger on non-main players (i.e. coop babies)
---
--- 1<<3
UseFlag.USE_ALLOWNONMAIN = 2^3
--- D4 only: Reroll the player's active item
---
--- 1<<4
UseFlag.USE_REMOVEACTIVE = 2^4
--- Effect was triggered a second time by Car Battery (or Tarot Cloth for cards)
---
--- 1<<5
UseFlag.USE_CARBATTERY = 2^5
--- Effect was triggered by Void
---
--- 1<<6
UseFlag.USE_VOID = 2^6
--- Effect was mimicked by an active item (Blank Card, Placebo)
---
--- 1<<7
UseFlag.USE_MIMIC = 2^7
--- Never play announcer voice
---
--- 1<<8
UseFlag.USE_NOANNOUNCER = 2^8
--- This allows an item to spawn wisps when called from another item usage as the wisps generator checks for NOANIM, so usually you want to use this with NOANIM call
---
--- 1<<9
UseFlag.USE_ALLOWWISPSPAWN = 2^9
--- If set, forces UseActiveItem to use the CustomVarData argument instead of the active item's stored VarData
---
--- 1<<10
UseFlag.USE_CUSTOMVARDATA = 2^10

return UseFlag
