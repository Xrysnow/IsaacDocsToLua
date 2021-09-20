---@class EntityFlag @enum
local EntityFlag = {}

--- prevent freeze/poison/slow/charm/confusion/fear/burn
---
--- 1
EntityFlag.FLAG_NO_STATUS_EFFECTS = 1
--- do not interpolate position
---
--- 1<<1
EntityFlag.FLAG_NO_INTERPOLATE = 2^1
--- play appear animation after Init
---
--- 1<<2
EntityFlag.FLAG_APPEAR = 2^2
--- will be rendered to floor texture
---
--- 1<<3
EntityFlag.FLAG_RENDER_FLOOR = 2^3
--- will not be a target of NPCs or familiars
---
--- 1<<4
EntityFlag.FLAG_NO_TARGET = 2^4
--- freezing effect
---
--- 1<<5
EntityFlag.FLAG_FREEZE = 2^5
--- poison effect
---
--- 1<<6
EntityFlag.FLAG_POISON = 2^6
--- slowing (velocity)
---
--- 1<<7
EntityFlag.FLAG_SLOW = 2^7
--- Charmed
---
--- 1<<8
EntityFlag.FLAG_CHARM = 2^8
--- Confused
---
--- 1<<9
EntityFlag.FLAG_CONFUSION = 2^9
--- Midas frozen
---
--- 1<<10
EntityFlag.FLAG_MIDAS_FREEZE = 2^10
--- Fleeing in Fear (like Mom's Pad)
---
--- 1<<11
EntityFlag.FLAG_FEAR = 2^11
--- Caused by Fire Mind tears, works like poison except with Red color effect.
---
--- 1<<12
EntityFlag.FLAG_BURN = 2^12
--- will be rendered to wall texture
---
--- 1<<13
EntityFlag.FLAG_RENDER_WALL = 2^13
--- entity is updating at 60 fps, and this is an odd frame
---
--- 1<<14
EntityFlag.FLAG_INTERPOLATION_UPDATE = 2^14
--- In sidescrolling room, this indicates that we're in a gravity zone.
---
--- 1<<15
EntityFlag.FLAG_APPLY_GRAVITY = 2^15
---
--- 1<<16
EntityFlag.FLAG_NO_BLOOD_SPLASH = 2^16
--- for FLAG_RENDER_FLOOR and FLAG_RENDER_WALL
---
--- 1<<17
EntityFlag.FLAG_NO_REMOVE_ON_TEX_RENDER = 2^17
---
--- 1<<18
EntityFlag.FLAG_NO_DEATH_TRIGGER = 2^18
--- EntityNPC: shouldn't take any damage from spikes
---
--- 1<<19
EntityFlag.FLAG_NO_SPIKE_DAMAGE = 2^19
--- EntityTear: Pop tear fired by a laser, should decelerate very quickly for the first few frames
---
--- 1<<19
EntityFlag.FLAG_LASER_POP = 2^19
--- EntityPickup: item pedestal affected by Damocles, will be duplicated at the end of the current frame
---
--- 1<<19
EntityFlag.FLAG_ITEM_SHOULD_DUPLICATE = 2^19
---
--- 1<<20
EntityFlag.FLAG_BOSSDEATH_TRIGGERED = 2^20
--- Used in entityfactory to not remove this entity if there is no space left for new entity
---
--- 1<<21
EntityFlag.FLAG_DONT_OVERWRITE = 2^21
--- Used by Sticky bombs to generate spiders on death
---
--- 1<<22
EntityFlag.FLAG_SPAWN_STICKY_SPIDERS = 2^22
--- Used by black hp drop tear flag to drop a black hp on enemy death
---
--- 1<<23
EntityFlag.FLAG_SPAWN_BLACK_HP = 2^23
--- God's flesh effect
---
--- 1<<24
EntityFlag.FLAG_SHRINK = 2^24
--- Entity will not flash red when damaged
---
--- 1<<25
EntityFlag.FLAG_NO_FLASH_ON_DAMAGE = 2^25
--- Bombs and farts have no knockback effects
---
--- 1<<26
EntityFlag.FLAG_NO_KNOCKBACK = 2^26
--- Standing on a slippery surface
---
--- 1<<27
EntityFlag.FLAG_SLIPPERY_PHYSICS = 2^27
--- Adds a fly to the jar when killed
---
--- 1<<28
EntityFlag.FLAG_ADD_JAR_FLY = 2^28
--- Charmed and m_CharmCountdown<0
---
--- 1<<29
EntityFlag.FLAG_FRIENDLY = 2^29
--- No knockback from general collisions
---
--- 1<<30
EntityFlag.FLAG_NO_PHYSICS_KNOCKBACK = 2^30
--- Do not count boss hp. If all boss entities have this tag, the boss hp bar is hidden
---
--- 1<<31
EntityFlag.FLAG_DONT_COUNT_BOSS_HP = 2^31
--- Do not update sprite animation
---
--- 1<<32
EntityFlag.FLAG_NO_SPRITE_UPDATE = 2^32
--- Used for Contagious item (if the enemy is infected)
---
--- 1<<33
EntityFlag.FLAG_CONTAGIOUS = 2^33
--- Used for Mom's Razor
---
--- 1<<34
EntityFlag.FLAG_BLEED_OUT = 2^34
--- Hides the Spider Mod hp bar of an EntityNPC
---
--- 1<<35
EntityFlag.FLAG_HIDE_HP_BAR = 2^35
--- Player was given a short period of invulnerability by something other than damage, don't blink
---
--- 1<<36
EntityFlag.FLAG_NO_DAMAGE_BLINK = 2^36
--- The entity will persists between rooms. (It will appear in every room, as opposed to the game remembering the specific room that it was spawned in.)
---
--- 1<<37
EntityFlag.FLAG_PERSISTENT = 2^37
--- Was spawned as a backdrop decoration, should be deleted if the current backdrop changes (due to Delirium)
---
--- 1<<38
EntityFlag.FLAG_BACKDROP_DETAIL = 2^38
--- Enemy was spawned by some sort of ambush (Greed Mode, challenge rooms), don't collide with the player for a few frames
---
--- 1<<39
EntityFlag.FLAG_AMBUSH = 2^39
--- Glitched out, has different effects depending on the entity
---
--- 1<<40
EntityFlag.FLAG_GLITCH = 2^40
--- Used by Spin to Win, causes a familiar to rapidly spin around its owner
---
--- 1<<41
EntityFlag.FLAG_SPIN = 2^41
--- Doesn't spawn any kind of reward on death
---
--- 1<<42
EntityFlag.FLAG_NO_REWARD = 2^42
--- Spawn less gibs on death
---
--- 1<<43
EntityFlag.FLAG_REDUCE_GIBS = 2^43
--- Updates during room/stage transitions
---
--- 1<<44
EntityFlag.FLAG_TRANSITION_UPDATE = 2^44
--- Cannot be controlled by players
---
--- 1<<45
EntityFlag.FLAG_NO_PLAYER_CONTROL = 2^45
--- Hide from query results
---
--- 1<<46
EntityFlag.FLAG_NO_QUERY = 2^46
--- Strong knockback: Forcefy moved in a specified direction for a short duration
---
--- 1<<47
EntityFlag.FLAG_KNOCKED_BACK = 2^47
--- Inflicts damage upon colliding with enemies, takes damage when colliding with walls
---
--- 1<<48
EntityFlag.FLAG_APPLY_IMPACT_DAMAGE = 2^48
--- Frozen solid
---
--- 1<<49
EntityFlag.FLAG_ICE_FROZEN = 2^49
--- Flagged to become frozen on death
---
--- 1<<50
EntityFlag.FLAG_ICE = 2^50
--- Magnetized: Attracts nearby enemies, projectiles and pickups
---
--- 1<<51
EntityFlag.FLAG_MAGNETIZED = 2^51
--- Baited: Is targeted by nearby enemies
---
--- 1<<52
EntityFlag.FLAG_BAITED = 2^52
--- Killed by a killswitch
---
--- 1<<53
EntityFlag.FLAG_KILLSWITCH = 2^53
--- Weakness effect from Reverse Strength
---
--- 1<<54
EntityFlag.FLAG_WEAKNESS = 2^54
--- Spawns more gibs on death
---
--- 1<<55
EntityFlag.FLAG_EXTRA_GORE = 2^55
--- Marked by Azazel B, takes extra damage from Brimstone attacks
---
--- 1<<56
EntityFlag.FLAG_BRIMSTONE_MARKED = 2^56
--- Picked up by a player
---
--- 1<<57
EntityFlag.FLAG_HELD = 2^57
--- Thrown by a player
---
--- 1<<58
EntityFlag.FLAG_THROWN = 2^58
--- Used to detect enemies spawned by Friendly Ball
---
--- 1<<59
EntityFlag.FLAG_FRIENDLY_BALL = 2^59

return EntityFlag
