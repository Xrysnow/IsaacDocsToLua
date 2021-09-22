---@type ItemConfig
ItemConfig = {}

---
--- 0
ItemConfig.CHARGE_NORMAL = 0
---
--- 1
ItemConfig.CHARGE_TIMED = 1
---
--- 2
ItemConfig.CHARGE_SPECIAL = 2
--- Tarot cards
---
--- 0
ItemConfig.CARDTYPE_TAROT = 0
--- Standard playing cards (twos, aces and Joker, does not include Suicide King, Rules Card or Queen of Hearts)
---
--- 1
ItemConfig.CARDTYPE_SUIT = 1
--- Runes
---
--- 2
ItemConfig.CARDTYPE_RUNE = 2
--- Special cards (anything that doesn't fall in the above categories excludes non-cards such as Dice Shard, see below)
---
--- 3
ItemConfig.CARDTYPE_SPECIAL = 3
--- Special pocket items that do not qualify as "cards"
---
--- 4
ItemConfig.CARDTYPE_SPECIAL_OBJECT = 4
--- Reversed tarot cards
---
--- 5
ItemConfig.CARDTYPE_TAROT_REVERSE = 5
--- Dead things (for the Parasite unlock)
---
--- 1
ItemConfig.TAG_DEAD = 1
--- Syringes (for Little Baggy and the Spun! transformation)
---
--- 1<<1
ItemConfig.TAG_SYRINGE = 2^1
--- Mom's things (for Mom's Contact and the Yes Mother? transformation)
---
--- 1<<2
ItemConfig.TAG_MOM = 2^2
--- Technology items (for the Technology Zero unlock)
---
--- 1<<3
ItemConfig.TAG_TECH = 2^3
--- Battery items (for the Jumper Cables unlock)
---
--- 1<<4
ItemConfig.TAG_BATTERY = 2^4
--- Guppy items (Guppy transformation)
---
--- 1<<5
ItemConfig.TAG_GUPPY = 2^5
--- Fly items (Beelzebub transformation)
---
--- 1<<6
ItemConfig.TAG_FLY = 2^6
--- Bob items (Bob transformation)
---
--- 1<<7
ItemConfig.TAG_BOB = 2^7
--- Mushroom items (Fun Guy transformation)
---
--- 1<<8
ItemConfig.TAG_MUSHROOM = 2^8
--- Baby items (Conjoined transformation)
---
--- 1<<9
ItemConfig.TAG_BABY = 2^9
--- Angel items (Seraphim transformation)
---
--- 1<<10
ItemConfig.TAG_ANGEL = 2^10
--- Devil items (Leviathan transformation)
---
--- 1<<11
ItemConfig.TAG_DEVIL = 2^11
--- Poop items (Oh Shit transformation)
---
--- 1<<12
ItemConfig.TAG_POOP = 2^12
--- Book items (Book Worm transformation)
---
--- 1<<13
ItemConfig.TAG_BOOK = 2^13
--- Spider items (Spider Baby transformation)
---
--- 1<<14
ItemConfig.TAG_SPIDER = 2^14
--- Quest item (cannot be rerolled or randomly obtained)
---
--- 1<<15
ItemConfig.TAG_QUEST = 2^15
--- Can be spawned by Monster Manual
---
--- 1<<16
ItemConfig.TAG_MONSTER_MANUAL = 2^16
--- Cannot appear in Greed Mode
---
--- 1<<17
ItemConfig.TAG_NO_GREED = 2^17
--- Food item (for Binge Eater)
---
--- 1<<18
ItemConfig.TAG_FOOD = 2^18
--- Tears up item (for Lachryphagy unlock detection)
---
--- 1<<19
ItemConfig.TAG_TEARS_UP = 2^19
--- Whitelisted item for Lost B
---
--- 1<<20
ItemConfig.TAG_OFFENSIVE = 2^20
--- Blacklisted item for Keeper/Keeper B
---
--- 1<<21
ItemConfig.TAG_NO_KEEPER = 2^21
--- Blacklisted item for Lost's Birthright
---
--- 1<<22
ItemConfig.TAG_NO_LOST_BR = 2^22
--- Star themed items (for the Planetarium unlock)
---
--- 1<<23
ItemConfig.TAG_STARS = 2^23
--- Summonable items (for Bethany B)
---
--- 1<<24
ItemConfig.TAG_SUMMONABLE = 2^24
--- Can't be obtained in Cantripped challenge
---
--- 1<<25
ItemConfig.TAG_NO_CANTRIP = 2^25
--- Active items that have wisps attached to them (automatically set)
---
--- 1<<26
ItemConfig.TAG_WISP = 2^26
--- Unique familiars that cannot be duplicated
---
--- 1<<27
ItemConfig.TAG_UNIQUE_FAMILIAR = 2^27

return ItemConfig
