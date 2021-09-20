---@class DamageFlag @enum
local DamageFlag = {}

--- Damage can not kill the receiver <br>
---
--- 1
DamageFlag.DAMAGE_NOKILL = 1
--- Source is some sort of fire (ie. fireplace) <br>
---
--- 1<<1
DamageFlag.DAMAGE_FIRE = 2^1
--- Damage comes from an explosion <br>
---
--- 1<<2
DamageFlag.DAMAGE_EXPLOSION = 2^2
--- Damage comes from laser <br>
---
--- 1<<3
DamageFlag.DAMAGE_LASER = 2^3
--- Damage comes from acid, e.g. blood acid <br>
---
--- 1<<4
DamageFlag.DAMAGE_ACID = 2^4
--- Damage affects only red hearts if > 1 (ex: razor) <br>
---
--- 1<<5
DamageFlag.DAMAGE_RED_HEARTS = 2^5
--- Damage from unicorn horn, the nail, game kid that has cooldown <br>
---
--- 1<<6
DamageFlag.DAMAGE_COUNTDOWN = 2^6
--- Damage from spikes <br>
---
--- 1<<7
DamageFlag.DAMAGE_SPIKES = 2^7
--- Damage is done by clones when they took damage, avoid infinite loops <br>
---
--- 1<<8
DamageFlag.DAMAGE_CLONES = 2^8
--- Damage from red poop <br>
---
--- 1<<9
DamageFlag.DAMAGE_POOP = 2^9
--- <br>
---
--- 1<<10
DamageFlag.DAMAGE_DEVIL = 2^10
--- Indicates the damage has been redirected from Isaac's Heart familiar <br>
---
--- 1<<11
DamageFlag.DAMAGE_ISSAC_HEART = 2^11
--- Damage comes from a TNT barrel <br>
---
--- 1<<12
DamageFlag.DAMAGE_TNT = 2^12
--- Damages even if invincible (currently only for player). Used on IV Bag. <br>
---
--- 1<<13
DamageFlag.DAMAGE_INVINCIBLE = 2^13
--- Creates a fly when damage is applied <br>
---
--- 1<<14
DamageFlag.DAMAGE_SPAWN_FLY = 2^14
--- Damage comes from POISON/BURN flags <br>
---
--- 1<<15
DamageFlag.DAMAGE_POISON_BURN = 2^15
--- Damage comes from a cursed door <br>
---
--- 1<<16
DamageFlag.DAMAGE_CURSED_DOOR = 2^16
--- Damage comes from the passage of time (used for player damage by time limited special seeds) <br>
---
--- 1<<17
DamageFlag.DAMAGE_TIMER = 2^17
--- Damage from using the IV Bag <br>
---
--- 1<<18
DamageFlag.DAMAGE_IV_BAG = 2^18
--- Damage comes from pitfalls (such as ones spawned by Little Horn) <br>
---
--- 1<<19
DamageFlag.DAMAGE_PITFALL = 2^19
--- Damage comes from spiked chest <br>
---
--- 1<<20
DamageFlag.DAMAGE_CHEST = 2^20
--- Fake damage that should trigger player's damage effects. <br>
---
--- 1<<21
DamageFlag.DAMAGE_FAKE = 2^21
--- Damage from booger tear <br>
---
--- 1<<22
DamageFlag.DAMAGE_BOOGER = 2^22
--- should drop a black heart if damage is lethal
---
--- 1<<23
DamageFlag.DAMAGE_SPAWN_BLACK_HEART = 2^23
--- damage comes from a strong impact (Mom's foot, rock spikes, rock tears)
---
--- 1<<24
DamageFlag.DAMAGE_CRUSH = 2^24
--- ignore damage modifiers (such as doubled damage from the Womb and later floors or reduced damage from the Wafer)
---
--- 1<<25
DamageFlag.DAMAGE_NO_MODIFIERS = 2^25
--- should drop a red heart if damage is lethal
---
--- 1<<26
DamageFlag.DAMAGE_SPAWN_RED_HEART = 2^26
--- should drop a coin if damage is lethal
---
--- 1<<27
DamageFlag.DAMAGE_SPAWN_COIN = 2^27
--- damage shouldn't apply any penalties (such as devil deal chance)
---
--- 1<<28
DamageFlag.DAMAGE_NO_PENALTIES = 2^28
--- should drop a half red heart that quickly despawns if damage is lethal
---
--- 1<<29
DamageFlag.DAMAGE_SPAWN_TEMP_HEART = 2^29
--- damage ignores boss armor
---
--- 1<<30
DamageFlag.DAMAGE_IGNORE_ARMOR = 2^30
--- should drop a card if damage is lethal
---
--- 1<<31
DamageFlag.DAMAGE_SPAWN_CARD = 2^31
--- should drop a rune if damage is lethal
---
--- 1<<32
DamageFlag.DAMAGE_SPAWN_RUNE = 2^32

return DamageFlag
