---@class CacheFlag @enum
local CacheFlag = {}

--- 0x1
---
CacheFlag.CACHE_DAMAGE = 1
--- 0x2
---
CacheFlag.CACHE_FIREDELAY = 2
--- 0x4
---
CacheFlag.CACHE_SHOTSPEED = 4
--- 0x8
---
CacheFlag.CACHE_RANGE = 8
--- 0x10
---
CacheFlag.CACHE_SPEED = 16
--- 0x20
---
CacheFlag.CACHE_TEARFLAG = 32
--- 0x40
---
CacheFlag.CACHE_TEARCOLOR = 64
--- 0x80
---
CacheFlag.CACHE_FLYING = 128
--- 0x100
---
CacheFlag.CACHE_WEAPON = 256
--- 0x200
---
CacheFlag.CACHE_FAMILIARS = 512
--- 0x400
---
CacheFlag.CACHE_LUCK = 1024
--- invalidates player size
---
--- 0x800
---
CacheFlag.CACHE_SIZE = 2048
--- invalidates player color
---
--- 0x1000
---
CacheFlag.CACHE_COLOR = 4096
--- invalidates effects that predict pickup drops (i.e. Guppy's Eye)
---
--- 0x2000
---
CacheFlag.CACHE_PICKUP_VISION = 8192
--- 0xFFFF
---
CacheFlag.CACHE_ALL = 65535
--- special cache flag used when syncing Jacob and Esau's speed
---
--- 0x80000000
---
CacheFlag.CACHE_TWIN_SYNC = 2147483648

return CacheFlag
