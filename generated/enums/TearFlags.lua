---@class TearFlags @enum
local TearFlags = {}

--- Default tear (no special effects)
---
--- `Color(1, 1, 1, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(255, 255, 255, 255, 0, 0, 0)`
---
--- BitSet128(0,0)
TearFlags.TEAR_NORMAL = BitSet128(0,0)
--- Ouija board type tear (goes thru obstacles)
---
--- `Color(1.5, 2, 2, 0.5, 0, 0, 0)`<br> Range 0-255: <br>`Color(382, 510, 510, 127, 0, 0, 0)`
---
--- TEARFLAG(0)
TearFlags.TEAR_SPECTRAL = TEARFLAG(0)
--- Cupid's arrow type tear (goes thru enemy)
---
--- No changes
---
--- TEARFLAG(1)
TearFlags.TEAR_PIERCING = TEARFLAG(1)
--- Spoon bender type tear (homes to enemy)
---
--- `Color(0.4, 0.15, 0.38, 1, 0.27843, 0, 0.4549)` <br> Range 0-255: <br>`Color(102, 38, 97, 255, 71, 0, 116)`
---
--- TEARFLAG(2)
TearFlags.TEAR_HOMING = TEARFLAG(2)
--- Spider bite type tear (slows on contact)
---
--- `Color(2, 2, 2, 1, 0.196, 0.196, 0.196)` <br> Range 0-255: <br>`Color(510, 510, 510, 255, 50, 50, 50)`
---
--- TEARFLAG(3)
TearFlags.TEAR_SLOW = TEARFLAG(3)
--- Common cold type tear (poisons on contact)
---
--- `Color(0.4, 0.97, 0.5, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(102, 247, 127, 255, 0, 0, 0)`
---
--- TEARFLAG(4)
TearFlags.TEAR_POISON = TEARFLAG(4)
--- Mom's contact type tear (freezes on contact)
---
--- `Color(1.25, 0.05, 0.15, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(318, 13, 38, 255, 0, 0, 0)`
---
--- TEARFLAG(5)
TearFlags.TEAR_FREEZE = TEARFLAG(5)
--- Parasite type tear (splits on collision)
---
--- `Color(0.9, 0.3, 0.08, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(229, 76, 20, 255, 0, 0, 0)`
---
--- TEARFLAG(6)
TearFlags.TEAR_SPLIT = TEARFLAG(6)
--- Lump of coal type tear (grows by range)
---
--- `Color(0.2, 0.09, 0.06, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(51, 23, 17, 255, 0, 0, 0)`
---
--- TEARFLAG(7)
TearFlags.TEAR_GROW = TEARFLAG(7)
--- My reflection type tear (returns back)
---
--- No changes
---
--- TEARFLAG(8)
TearFlags.TEAR_BOOMERANG = TEARFLAG(8)
--- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage)
---
--- No changes
---
--- TEARFLAG(9)
TearFlags.TEAR_PERSISTENT = TEARFLAG(9)
--- Wiggle worm type tear (wiggles)
---
--- No changes
---
--- TEARFLAG(10)
TearFlags.TEAR_WIGGLE = TEARFLAG(10)
--- Mulligan type tear (creates fly on hit) <br> (ab+: TearFlags.TEAR_MIGAN)
---
--- No changes
---
--- TEARFLAG(11)
TearFlags.TEAR_MULLIGAN = TEARFLAG(11)
--- IPECAC type tear (explodes on hit)
---
--- `Color(0.5, 0.9, 0.4, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(127, 229, 102, 255, 0, 0, 0)`
---
--- TEARFLAG(12)
TearFlags.TEAR_EXPLOSIVE = TEARFLAG(12)
--- Mom's Eyeshadow tear
---
--- `Color(1, 0, 1, 1, 0.196, 0, 0)`<br> Range 0-255: <br>`Color(255, 0, 255, 255, 50, 0, 0)`
---
--- TEARFLAG(13)
TearFlags.TEAR_CHARM = TEARFLAG(13)
--- Iron Bar tear
---
--- `Color(0.5, 0.5, 0.5, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(127, 127, 127, 255, 0, 0, 0)`
---
--- TEARFLAG(14)
TearFlags.TEAR_CONFUSION = TEARFLAG(14)
--- These tears cause enemy to drop hearts if killed (33% chance)
---
--- No changes
---
--- TEARFLAG(15)
TearFlags.TEAR_HP_DROP = TEARFLAG(15)
--- Used for Little Planet (orbit arounds the player)
---
--- No changes
---
--- TEARFLAG(16)
TearFlags.TEAR_ORBIT = TEARFLAG(16)
--- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
---
--- No changes
---
--- TEARFLAG(17)
TearFlags.TEAR_WAIT = TEARFLAG(17)
--- Cricket's Body type tear. Splits into 4 smaller tears if it hits the ground
---
--- No changes
---
--- TEARFLAG(18)
TearFlags.TEAR_QUADSPLIT = TEARFLAG(18)
--- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
---
--- `Color(1, 1, 0.8, 1, 0.1, 0.1, 0.1)`<br> Range 0-255: <br>`Color(255, 255, 204, 255, 25, 25, 25)`
---
--- TEARFLAG(19)
TearFlags.TEAR_BOUNCE = TEARFLAG(19)
--- Mom's Perfume type tear of fear (fear on contact)
---
--- `Color(1, 1, 0.455, 1, 0.169, 0.145, 0)`<br> Range 0-255: <br>`Color(255, 255, 116, 255, 43, 37, 0)`
---
--- TEARFLAG(20)
TearFlags.TEAR_FEAR = TEARFLAG(20)
--- Proptosis tears start large and shrink
---
--- No changes
---
--- TEARFLAG(21)
TearFlags.TEAR_SHRINK = TEARFLAG(21)
--- Fire Mind tears cause Burn effect on enemies
---
--- `Color(1, 1, 1, 1, 0.3, 0, 0)`<br> Range 0-255: <br>`Color(255, 255, 255, 255, 76, 0, 0)`
---
--- TEARFLAG(22)
TearFlags.TEAR_BURN = TEARFLAG(22)
--- Attracts enemies and pickups
---
--- No changes
---
--- TEARFLAG(23)
TearFlags.TEAR_ATTRACTOR = TEARFLAG(23)
--- Tear impact pushes enemies back further
---
--- No changes
---
--- TEARFLAG(24)
TearFlags.TEAR_KNOCKBACK = TEARFLAG(24)
--- Makes the tear pulse
---
--- No changes
---
--- TEARFLAG(25)
TearFlags.TEAR_PULSE = TEARFLAG(25)
--- Makes the tear path spiral
---
--- No changes
---
--- TEARFLAG(26)
TearFlags.TEAR_SPIRAL = TEARFLAG(26)
--- Makes the tear oval in the direction of travel
---
--- No changes
---
--- TEARFLAG(27)
TearFlags.TEAR_FLAT = TEARFLAG(27)
--- Used by Bombs (Sad Bomb)
---
--- No changes
---
--- TEARFLAG(28)
TearFlags.TEAR_SAD_BOMB = TEARFLAG(28)
--- Used by Bombs (Butt Bomb)
---
--- No changes
---
--- TEARFLAG(29)
TearFlags.TEAR_BUTT_BOMB = TEARFLAG(29)
--- Used for Hook Worm
---
--- No changes
---
--- TEARFLAG(30)
TearFlags.TEAR_SQUARE = TEARFLAG(30)
--- Used for GodHead (they will have a glow around them)
---
--- No changes
---
--- TEARFLAG(31)
TearFlags.TEAR_GLOW = TEARFLAG(31)
--- Used for Gish player tears (to color enemy black on slowing)
---
--- `Color(0.15, 0.15, 0.15, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(38, 38, 38, 255, 0, 0, 0)`
---
--- TEARFLAG(32)
TearFlags.TEAR_GISH = TEARFLAG(32)
--- Mysterious Liquid tears spawn damaging green creep when hit
---
--- `Color(1, 1, 1, 1, 0, 0.2, 0)`<br> Range 0-255: <br>`Color(255, 255, 255, 255, 0, 51, 0)`
---
--- TEARFLAG(33)
TearFlags.TEAR_MYSTERIOUS_LIQUID_CREEP = TEARFLAG(33)
--- Lost Contact tears, block enemy projectiles
---
--- No changes
---
--- TEARFLAG(34)
TearFlags.TEAR_SHIELDED = TEARFLAG(34)
--- Used by Bombs (Glitter Bomb)
---
--- No changes
---
--- TEARFLAG(35)
TearFlags.TEAR_GLITTER_BOMB = TEARFLAG(35)
--- Used for Scatter bombs
---
--- No changes
---
--- TEARFLAG(36)
TearFlags.TEAR_SCATTER_BOMB = TEARFLAG(36)
--- Used for Sticky bombs and Explosivo tears
---
--- No changes
---
--- TEARFLAG(37)
TearFlags.TEAR_STICKY = TEARFLAG(37)
--- Tears loop around the screen
---
--- Initializes with either <br>`Color(1, 1, 1, 1, 0, 0, 0)`<br>or<br>`Color(0, 0, 0, 1, 0, 0, 0)`<br> the purple color is handled on the fly by the game
---
--- TEARFLAG(38)
TearFlags.TEAR_CONTINUUM = TEARFLAG(38)
--- Create damaging light beam on hit
---
--- No changes
---
--- TEARFLAG(39)
TearFlags.TEAR_LIGHT_FROM_HEAVEN = TEARFLAG(39)
--- Used by Bumbo, spawns a coin when tear hits
---
--- No changes
---
--- TEARFLAG(40)
TearFlags.TEAR_COIN_DROP = TEARFLAG(40)
--- Enemy drops a black hp when dies
---
--- No changes
---
--- TEARFLAG(41)
TearFlags.TEAR_BLACK_HP_DROP = TEARFLAG(41)
--- Tear with this flag will follow parent player's beam
---
--- No changes
---
--- TEARFLAG(42)
TearFlags.TEAR_TRACTOR_BEAM = TEARFLAG(42)
--- God's flesh flag to minimize enemies
---
--- No changes
---
--- TEARFLAG(43)
TearFlags.TEAR_GODS_FLESH = TEARFLAG(43)
--- Greed coin tears that has a chance to generate a coin when hit
---
--- No changes
---
--- TEARFLAG(44)
TearFlags.TEAR_GREED_COIN = TEARFLAG(44)
--- Bomber Boy
---
--- No changes
---
--- TEARFLAG(45)
TearFlags.TEAR_CROSS_BOMB = TEARFLAG(45)
--- Ouroboros Worm, big radius oscilating tears
---
--- No changes
---
--- TEARFLAG(46)
TearFlags.TEAR_BIG_SPIRAL = TEARFLAG(46)
--- Glaucoma tears, permanently confuses enemies
---
--- No changes
---
--- TEARFLAG(47)
TearFlags.TEAR_PERMANENT_CONFUSION = TEARFLAG(47)
--- Booger tears, stick and do damage over time
---
--- No changes
---
--- TEARFLAG(48)
TearFlags.TEAR_BOOGER = TEARFLAG(48)
--- Egg tears, leave creep and spawns spiders or flies
---
--- No changes
---
--- TEARFLAG(49)
TearFlags.TEAR_EGG = TEARFLAG(49)
--- Sulfuric Acid tears, can break grid entities
---
--- No changes
---
--- TEARFLAG(50)
TearFlags.TEAR_ACID = TEARFLAG(50)
--- Bone tears, splits in 2
---
--- No changes
---
--- TEARFLAG(51)
TearFlags.TEAR_BONE = TEARFLAG(51)
--- Belial tears, piecing tears gets double damage + homing
---
--- No changes
---
--- TEARFLAG(52)
TearFlags.TEAR_BELIAL = TEARFLAG(52)
--- Midas touch tears
---
--- No changes
---
--- TEARFLAG(53)
TearFlags.TEAR_MIDAS = TEARFLAG(53)
--- Needle tears
---
--- No changes
---
--- TEARFLAG(54)
TearFlags.TEAR_NEEDLE = TEARFLAG(54)
--- Jacobs ladder tears
---
--- No changes
---
--- TEARFLAG(55)
TearFlags.TEAR_JACOBS = TEARFLAG(55)
--- Little Horn tears
---
--- `Color(0, 0, 0, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(0, 0, 0, 255, 0, 0, 0)`
---
--- TEARFLAG(56)
TearFlags.TEAR_HORN = TEARFLAG(56)
--- Technology Zero
---
--- No changes
---
--- TEARFLAG(57)
TearFlags.TEAR_LASER = TEARFLAG(57)
--- Pop!
---
--- No changes
---
--- TEARFLAG(58)
TearFlags.TEAR_POP = TEARFLAG(58)
--- Lachryphagy like tears. Hungry Tears
---
--- No changes
---
--- TEARFLAG(59)
TearFlags.TEAR_ABSORB = TEARFLAG(59)
--- Trisagion, generates a laser on top of the tear
---
--- No changes
---
--- TEARFLAG(60)
TearFlags.TEAR_LASERSHOT = TEARFLAG(60)
--- Flat Stone
---
--- No changes
---
--- TEARFLAG(61)
TearFlags.TEAR_HYDROBOUNCE = TEARFLAG(61)
--- Haemolacria
---
--- No changes
---
--- TEARFLAG(62)
TearFlags.TEAR_BURSTSPLIT = TEARFLAG(62)
--- Bob's Bladder
---
--- No changes
---
--- TEARFLAG(63)
TearFlags.TEAR_CREEP_TRAIL = TEARFLAG(63)
--- Knockout Drops
---
--- No changes
---
--- TEARFLAG(64)
TearFlags.TEAR_PUNCH = TEARFLAG(64)
--- Uranus
---
--- No changes
---
--- TEARFLAG(65)
TearFlags.TEAR_ICE = TEARFLAG(65)
--- Lodestone
---
--- No changes
---
--- TEARFLAG(66)
TearFlags.TEAR_MAGNETIZE = TEARFLAG(66)
--- Rotten Tomato
---
--- `Color(0.7, 0.14, 0.1, 1, 0.3, 0, 0)`<br> Range 0-255: <br>`Color(178, 35, 25, 255, 76, 0, 0)`
---
--- TEARFLAG(67)
TearFlags.TEAR_BAIT = TEARFLAG(67)
--- Eye of the Occult
---
--- No changes
---
--- TEARFLAG(68)
TearFlags.TEAR_OCCULT = TEARFLAG(68)
--- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
---
--- No changes
---
--- TEARFLAG(69)
TearFlags.TEAR_ORBIT_ADVANCED = TEARFLAG(69)
--- Rock tears, chance to break rocks, deal extra damage to rock type enemies
---
--- No changes
---
--- TEARFLAG(70)
TearFlags.TEAR_ROCK = TEARFLAG(70)
--- Brain Worm, tears turn and go horizontally when moving past an enemy
---
--- No changes
---
--- TEARFLAG(71)
TearFlags.TEAR_TURN_HORIZONTAL = TEARFLAG(71)
--- Blood Bombs, leave blood creep on the ground
---
--- No changes
---
--- TEARFLAG(72)
TearFlags.TEAR_BLOOD_BOMB = TEARFLAG(72)
--- E. Coli tears, turn enemies into poop
---
--- No changes
---
--- TEARFLAG(73)
TearFlags.TEAR_ECOLI = TEARFLAG(73)
--- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
---
--- No changes
---
--- TEARFLAG(74)
TearFlags.TEAR_COIN_DROP_DEATH = TEARFLAG(74)
--- Brimstone Bombs, explosion creates a brimstone cross
---
--- No changes
---
--- TEARFLAG(75)
TearFlags.TEAR_BRIMSTONE_BOMB = TEARFLAG(75)
--- Rift tears, creates a black hole on impact
---
--- `Color(0, 0, 0, 1, 0, 0, 0)`<br> Range 0-255: <br>`Color(0, 0, 0, 255, 0, 0, 0)`
---
--- TEARFLAG(76)
TearFlags.TEAR_RIFT = TEARFLAG(76)
--- Spore tears, stick to enemies and multiply on enemy death
---
--- No changes
---
--- TEARFLAG(77)
TearFlags.TEAR_SPORE = TEARFLAG(77)
--- Ghost bombs
---
--- No changes
---
--- TEARFLAG(78)
TearFlags.TEAR_GHOST_BOMB = TEARFLAG(78)
--- Killed enemies will drop a random tarot card
---
--- No changes
---
--- TEARFLAG(79)
TearFlags.TEAR_CARD_DROP_DEATH = TEARFLAG(79)
--- Killed enemies will drop a random rune
---
--- No changes
---
--- TEARFLAG(80)
TearFlags.TEAR_RUNE_DROP_DEATH = TEARFLAG(80)
--- Hit enemies will teleport to a different part of the room
---
--- No changes
---
--- TEARFLAG(81)
TearFlags.TEAR_TELEPORT = TEARFLAG(81)
--- 
---
--- No changes
---
--- 82
TearFlags.TEAR_EFFECT_COUNT = 82

return TearFlags
