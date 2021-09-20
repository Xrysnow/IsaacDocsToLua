---@class ProjectileFlags @enum
local ProjectileFlags = {}

--- follow player
---
--- 1
ProjectileFlags.SMART = 1
--- explode on impact
---
--- 1<<1
ProjectileFlags.EXPLODE = 2^1
--- acid splat on impact
---
--- 1<<2
ProjectileFlags.ACID_GREEN = 2^2
--- goo splat on impact
---
--- 1<<3
ProjectileFlags.GOO = 2^3
--- slide through solid entities
---
--- 1<<4
ProjectileFlags.GHOST = 2^4
---
--- 1<<5
ProjectileFlags.WIGGLE = 2^5
--- come back
---
--- 1<<6
ProjectileFlags.BOOMERANG = 2^6
--- can hit enemies
---
--- 1<<7
ProjectileFlags.HIT_ENEMIES = 2^7
--- blood acid
---
--- 1<<8
ProjectileFlags.ACID_RED = 2^8
--- Greed projectiles have same effect as Greed enemy's bullets.
---
--- 1<<9
ProjectileFlags.GREED = 2^9
--- Bullet leaves a red creep
---
--- 1<<10
ProjectileFlags.RED_CREEP = 2^10
--- Bullet orbits a point clockwise and passes through walls similar to Tiny Planet
---
--- 1<<11
ProjectileFlags.ORBIT_CW = 2^11
--- Bullet orbits a point counter-clockwise and passes through walls similar to Tiny Planet
---
--- 1<<12
ProjectileFlags.ORBIT_CCW = 2^12
---
--- 1<<13
ProjectileFlags.NO_WALL_COLLIDE = 2^13
--- Bullet leaves a brown creep
---
--- 1<<14
ProjectileFlags.CREEP_BROWN = 2^14
--- Projectile was cast by a fireplace
---
--- 1<<15
ProjectileFlags.FIRE = 2^15
--- Bursts into more bullets
---
--- 1<<16
ProjectileFlags.BURST = 2^16
--- Bullets that can hit at any height
---
--- 1<<17
ProjectileFlags.ANY_HEIGHT_ENTITY_HIT = 2^17
--- Bullets curve slightly on a circular path
---
--- 1<<18
ProjectileFlags.CURVE_LEFT = 2^18
--- Bullets curve slightly on a circular path
---
--- 1<<19
ProjectileFlags.CURVE_RIGHT = 2^19
--- Bullets turn and go horizontally and increase in speed when they pass the const static uint64_t player on either side
---
--- 1<<20
ProjectileFlags.TURN_HORIZONTAL = 2^20
--- Bullet velocity varies over time as a function of a wave
---
--- 1<<21
ProjectileFlags.SINE_VELOCITY = 2^21
--- Like wiggle worm but the wiggling increases in amplitude over time
---
--- 1<<22
ProjectileFlags.MEGA_WIGGLE = 2^22
--- Bullets travel on a sawtooth shaped path
---
--- 1<<23
ProjectileFlags.SAWTOOTH_WIGGLE = 2^23
---
--- 1<<24
ProjectileFlags.SLOWED = 2^24
---
--- 1<<25
ProjectileFlags.TRIANGLE = 2^25
---
--- 1<<26
ProjectileFlags.MOVE_TO_PARENT = 2^26
---
--- 1<<27
ProjectileFlags.ACCELERATE = 2^27
---
--- 1<<28
ProjectileFlags.DECELERATE = 2^28
---
--- 1<<29
ProjectileFlags.BURST3 = 2^29
--- Bullets reappear from the opposite side as they leave the screen
---
--- 1<<30
ProjectileFlags.CONTINUUM = 2^30
---
--- 1<<31
ProjectileFlags.CANT_HIT_PLAYER = 2^31
--- "Change" flags will change the bullet's behavior after a timeout. change m_ProjectileFlags to m_TimeoutProjectileFlags.
---
--- 1<<32
ProjectileFlags.CHANGE_FLAGS_AFTER_TIMEOUT = 2^32
--- "Change" flags will change the bullet's behavior after a timeout.
---
--- 1<<33
ProjectileFlags.CHANGE_VELOCITY_AFTER_TIMEOUT = 2^33
---
--- 1<<34
ProjectileFlags.STASIS = 2^34
---
--- 1<<35
ProjectileFlags.FIRE_WAVE = 2^35
---
--- 1<<36
ProjectileFlags.FIRE_WAVE_X = 2^36
---
--- 1<<37
ProjectileFlags.ACCELERATE_EX = 2^37
---
--- 1<<38
ProjectileFlags.BURST8 = 2^38
---
--- 1<<39
ProjectileFlags.FIRE_SPAWN = 2^39
---
--- 1<<40
ProjectileFlags.ANTI_GRAVITY = 2^40
---
--- 1<<41
ProjectileFlags.TRACTOR_BEAM = 2^41
---
--- 1<<42
ProjectileFlags.BOUNCE = 2^42
---
--- 1<<43
ProjectileFlags.BOUNCE_FLOOR = 2^43
---
--- 1<<44
ProjectileFlags.SHIELDED = 2^44
---
--- 1<<45
ProjectileFlags.BLUE_FIRE_SPAWN = 2^45
---
--- 1<<46
ProjectileFlags.LASER_SHOT = 2^46
---
--- 1<<47
ProjectileFlags.GODHEAD = 2^47
---
--- 1<<48
ProjectileFlags.SMART_PERFECT = 2^48
---
--- 1<<49
ProjectileFlags.BURSTSPLIT = 2^49
---
--- 1<<50
ProjectileFlags.WIGGLE_ROTGUT = 2^50
---
--- 1<<51
ProjectileFlags.FREEZE = 2^51
---
--- 1<<52
ProjectileFlags.ACCELERATE_TO_POSITION = 2^52
---
--- 1<<53
ProjectileFlags.BROCCOLI = 2^53
---
--- 1<<54
ProjectileFlags.BACKSPLIT = 2^54
---
--- 1<<55
ProjectileFlags.SIDEWAVE = 2^55
---
--- 1<<56
ProjectileFlags.ORBIT_PARENT = 2^56
---
--- 1<<57
ProjectileFlags.FADEOUT = 2^57

return ProjectileFlags
