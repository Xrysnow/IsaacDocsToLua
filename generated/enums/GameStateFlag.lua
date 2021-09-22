---@class GameStateFlag @enum
GameStateFlag = {}

---
--- 0
GameStateFlag.STATE_FAMINE_SPAWNED = 0
--- obsolete with Rep
---
--- 1
GameStateFlag.STATE_PESTILENCE_SPAWNED = 1
--- obsolete with Rep
---
--- 2
GameStateFlag.STATE_WAR_SPAWNED = 2
--- obsolete with Rep
---
--- 3
GameStateFlag.STATE_DEATH_SPAWNED = 3
---
--- 4
GameStateFlag.STATE_BOSSPOOL_SWITCHED = 4
---
--- 5
GameStateFlag.STATE_DEVILROOM_SPAWNED = 5
---
--- 6
GameStateFlag.STATE_DEVILROOM_VISITED = 6
---
--- 7
GameStateFlag.STATE_BOOK_REVELATIONS_USED = 7
---
--- 8
GameStateFlag.STATE_BOOK_PICKED_UP = 8
---
--- 9
GameStateFlag.STATE_WRATH_SPAWNED = 9
---
--- 10
GameStateFlag.STATE_GLUTTONY_SPAWNED = 10
---
--- 11
GameStateFlag.STATE_LUST_SPAWNED = 11
---
--- 12
GameStateFlag.STATE_SLOTH_SPAWNED = 12
---
--- 13
GameStateFlag.STATE_ENVY_SPAWNED = 13
---
--- 14
GameStateFlag.STATE_PRIDE_SPAWNED = 14
---
--- 15
GameStateFlag.STATE_GREED_SPAWNED = 15
---
--- 16
GameStateFlag.STATE_SUPERGREED_SPAWNED = 16
---
--- 17
GameStateFlag.STATE_DONATION_SLOT_BROKEN = 17
---
--- 18
GameStateFlag.STATE_DONATION_SLOT_JAMMED = 18
---
--- 19
GameStateFlag.STATE_HEAVEN_PATH = 19
--- obsolete with Rep
---
--- 20
GameStateFlag.STATE_REBIRTH_BOSS_SWITCHED = 20
--- obsolete with Rep
---
--- 21
GameStateFlag.STATE_HAUNT_SELECTED = 21
--- obsolete with Rep
---
--- 22
GameStateFlag.STATE_ADVERSARY_SELECTED = 22
--- obsolete with Rep
---
--- 23
GameStateFlag.STATE_MR_FRED_SELECTED = 23
--- obsolete with Rep
---
--- 24
GameStateFlag.STATE_MAMA_GURDY_SELECTED = 24
---
--- 25
GameStateFlag.STATE_URIEL_SPAWNED = 25
---
--- 26
GameStateFlag.STATE_GABRIEL_SPAWNED = 26
---
--- 27
GameStateFlag.STATE_FALLEN_SPAWNED = 27
--- obsolete with Rep
---
--- 28
GameStateFlag.STATE_HEADLESS_HORSEMAN_SPAWNED = 28
---
--- 29
GameStateFlag.STATE_KRAMPUS_SPAWNED = 29
---
--- 30
GameStateFlag.STATE_DONATION_SLOT_BLOWN = 30
---
--- 31
GameStateFlag.STATE_SHOPKEEPER_KILLED = 31
---
--- 32
GameStateFlag.STATE_ULTRAPRIDE_SPAWNED = 32
---
--- 33
GameStateFlag.STATE_BOSSRUSH_DONE = 33
---
--- 34
GameStateFlag.STATE_GREED_SLOT_JAMMED = 34
--- obsolete with Rep
---
--- 35
GameStateFlag.STATE_AFTERBIRTH_BOSS_SWITCHED = 35
--- obsolete with Rep
---
--- 36
GameStateFlag.STATE_BROWNIE_SELECTED = 36
---
--- 37
GameStateFlag.STATE_SUPERBUM_APPEARED = 37
---
--- 38
GameStateFlag.STATE_BOSSRUSH_DOOR_SPAWNED = 38
---
--- 39
GameStateFlag.STATE_BLUEWOMB_DOOR_SPAWNED = 39
---
--- 40
GameStateFlag.STATE_BLUEWOMB_DONE = 40
---
--- 41
GameStateFlag.STATE_HEART_BOMB_COIN_PICKED = 41
--- obsolete with Rep
---
--- 42
GameStateFlag.STATE_ABPLUS_BOSS_SWITCHED = 42
--- obsolete with Rep
---
--- 43
GameStateFlag.STATE_SISTERS_VIS_SELECTED = 43
--- set when reaching 99 coins, used to check for the Golden Razor achievement
---
--- 43
GameStateFlag.STATE_MAX_COINS_OBTAINED = 43
--- set when entering a trapdoor that leads to the alternate path
---
--- 44
GameStateFlag.STATE_SECRET_PATH = 44
--- set when Perfection has dropped from a boss
---
--- 45
GameStateFlag.STATE_PERFECTION_SPAWNED = 45
--- set when Mom's Heart has been killed in the Mausoleum
---
--- 46
GameStateFlag.STATE_MAUSOLEUM_HEART_KILLED = 46
--- set when entering Mausoleum/Gehenna II through the photo door, causes Dad's Note to spawn instead of the Mom boss room
---
--- 47
GameStateFlag.STATE_BACKWARDS_PATH_INIT = 47
--- set during the Ascent
---
--- 48
GameStateFlag.STATE_BACKWARDS_PATH = 48
---
--- 49
GameStateFlag.NUM_STATE_FLAGS = 49

return GameStateFlag
