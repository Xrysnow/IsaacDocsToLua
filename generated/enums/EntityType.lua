---@class EntityType @enum
local EntityType = {}

---
--- 0
EntityType.ENTITY_NULL = 0
--- 1 player
---
--- 1
EntityType.ENTITY_PLAYER = 1
--- 2 tear projectile
---
--- 2
EntityType.ENTITY_TEAR = 2
--- 3 familiar
---
--- 3
EntityType.ENTITY_FAMILIAR = 3
--- 4 bomb drop
---
--- 4
EntityType.ENTITY_BOMBDROP = 4
--- 5 pickup item
---
--- 5
EntityType.ENTITY_PICKUP = 5
--- 6 slot machine
---
--- 6
EntityType.ENTITY_SLOT = 6
--- 7 laser beam
---
--- 7
EntityType.ENTITY_LASER = 7
--- 8 mom's knife
---
--- 8
EntityType.ENTITY_KNIFE = 8
--- 9 blood projectile
---
--- 9
EntityType.ENTITY_PROJECTILE = 9
--- 10 enemy: Gaper
---
--- 10
EntityType.ENTITY_GAPER = 10
--- 11 enemy: Gusher
---
--- 11
EntityType.ENTITY_GUSHER = 11
--- 12 enemy: Horf
---
--- 12
EntityType.ENTITY_HORF = 12
--- 13 enemy: Fly
---
--- 13
EntityType.ENTITY_FLY = 13
--- 14 enemy: Pooter
---
--- 14
EntityType.ENTITY_POOTER = 14
--- 15 enemy: Clotty
---
--- 15
EntityType.ENTITY_CLOTTY = 15
--- 16 enemy: Mulligan
---
--- 16
EntityType.ENTITY_MULLIGAN = 16
---
--- 17
EntityType.ENTITY_SHOPKEEPER = 17
--- 18 enemy: Attack Fly
---
--- 18
EntityType.ENTITY_ATTACKFLY = 18
--- 19 boss: Larry Jr./Hollow
---
--- 19
EntityType.ENTITY_LARRYJR = 19
--- 20 boss: Monstro
---
--- 20
EntityType.ENTITY_MONSTRO = 20
---
--- 21
EntityType.ENTITY_MAGGOT = 21
---
--- 22
EntityType.ENTITY_HIVE = 22
---
--- 23
EntityType.ENTITY_CHARGER = 23
---
--- 24
EntityType.ENTITY_GLOBIN = 24
---
--- 25
EntityType.ENTITY_BOOMFLY = 25
---
--- 26
EntityType.ENTITY_MAW = 26
---
--- 27
EntityType.ENTITY_HOST = 27
---
--- 28
EntityType.ENTITY_CHUB = 28
--- 29 enemy: Hopper
---
--- 29
EntityType.ENTITY_HOPPER = 29
--- 30 enemy: Boil, variants: 1 - Gut, 2 - Sack
---
--- 30
EntityType.ENTITY_BOIL = 30
---
--- 31
EntityType.ENTITY_SPITY = 31
---
--- 32
EntityType.ENTITY_BRAIN = 32
---
--- 33
EntityType.ENTITY_FIREPLACE = 33
---
--- 34
EntityType.ENTITY_LEAPER = 34
---
--- 35
EntityType.ENTITY_MRMAW = 35
---
--- 36
EntityType.ENTITY_GURDY = 36
---
--- 38
EntityType.ENTITY_BABY = 38
---
--- 39
EntityType.ENTITY_VIS = 39
---
--- 40
EntityType.ENTITY_GUTS = 40
---
--- 41
EntityType.ENTITY_KNIGHT = 41
---
--- 42
EntityType.ENTITY_STONEHEAD = 42
---
--- 43
EntityType.ENTITY_MONSTRO2 = 43
---
--- 44
EntityType.ENTITY_POKY = 44
---
--- 45
EntityType.ENTITY_MOM = 45
--- 46 miniboss: Sloth
---
--- 46
EntityType.ENTITY_SLOTH = 46
--- 47 miniboss: Lust
---
--- 47
EntityType.ENTITY_LUST = 47
--- 48 miniboss: Wrath
---
--- 48
EntityType.ENTITY_WRATH = 48
--- 49 miniboss: Gluttony
---
--- 49
EntityType.ENTITY_GLUTTONY = 49
--- 50 miniboss: Greed
---
--- 50
EntityType.ENTITY_GREED = 50
--- 51 miniboss: Envy
---
--- 51
EntityType.ENTITY_ENVY = 51
--- 52 miniboss: Pride
---
--- 52
EntityType.ENTITY_PRIDE = 52
---
--- 53
EntityType.ENTITY_DOPLE = 53
--- 54 enemy: Flaming Hopper
---
--- 54
EntityType.ENTITY_FLAMINGHOPPER = 54
---
--- 55
EntityType.ENTITY_LEECH = 55
---
--- 56
EntityType.ENTITY_LUMP = 56
--- 57 enemy: Membrain and Mama Guts
---
--- 57
EntityType.ENTITY_MEMBRAIN = 57
---
--- 58
EntityType.ENTITY_PARA_BITE = 58
---
--- 59
EntityType.ENTITY_FRED = 59
---
--- 60
EntityType.ENTITY_EYE = 60
--- 61 enemy: Sucker
---
--- 61
EntityType.ENTITY_SUCKER = 61
--- 62 boss: Pin
---
--- 62
EntityType.ENTITY_PIN = 62
---
--- 63
EntityType.ENTITY_FAMINE = 63
---
--- 64
EntityType.ENTITY_PESTILENCE = 64
--- variant 1: Conquest
---
--- 65
EntityType.ENTITY_WAR = 65
---
--- 66
EntityType.ENTITY_DEATH = 66
--- 67 boss: Duke of Flies/Husk
---
--- 67
EntityType.ENTITY_DUKE = 67
---
--- 68
EntityType.ENTITY_PEEP = 68
---
--- 69
EntityType.ENTITY_LOKI = 69
---
--- 71
EntityType.ENTITY_FISTULA_BIG = 71
---
--- 72
EntityType.ENTITY_FISTULA_MEDIUM = 72
---
--- 73
EntityType.ENTITY_FISTULA_SMALL = 73
--- 74 boss: Blastocyst
---
--- 74
EntityType.ENTITY_BLASTOCYST_BIG = 74
---
--- 75
EntityType.ENTITY_BLASTOCYST_MEDIUM = 75
---
--- 76
EntityType.ENTITY_BLASTOCYST_SMALL = 76
---
--- 77
EntityType.ENTITY_EMBRYO = 77
---
--- 78
EntityType.ENTITY_MOMS_HEART = 78
--- 79 boss: Gemini
---
--- 79
EntityType.ENTITY_GEMINI = 79
--- 80 enemy: Moter
---
--- 80
EntityType.ENTITY_MOTER = 80
--- variant 1: Krampus
---
--- 81
EntityType.ENTITY_FALLEN = 81
--- Headless Horseman
---
--- 82
EntityType.ENTITY_HEADLESS_HORSEMAN = 82
--- Head for Headless Horseman
---
--- 83
EntityType.ENTITY_HORSEMAN_HEAD = 83
---
--- 84
EntityType.ENTITY_SATAN = 84
--- 85 enemy: Spider
---
--- 85
EntityType.ENTITY_SPIDER = 85
---
--- 86
EntityType.ENTITY_KEEPER = 86
---
--- 87
EntityType.ENTITY_GURGLE = 87
--- ai for WalkingBoil, WalkingGut and WalkingSack
---
--- 88
EntityType.ENTITY_WALKINGBOIL = 88
---
--- 89
EntityType.ENTITY_BUTTLICKER = 89
--- 90 enemy: Hanger
---
--- 90
EntityType.ENTITY_HANGER = 90
---
--- 91
EntityType.ENTITY_SWARMER = 91
---
--- 92
EntityType.ENTITY_HEART = 92
---
--- 93
EntityType.ENTITY_MASK = 93
---
--- 94
EntityType.ENTITY_BIGSPIDER = 94
--- 96 enemy: Eternal Fly
---
--- 96
EntityType.ENTITY_ETERNALFLY = 96
---
--- 97
EntityType.ENTITY_MASK_OF_INFAMY = 97
---
--- 98
EntityType.ENTITY_HEART_OF_INFAMY = 98
--- 99 enemy: Gurdy Jr.
---
--- 99
EntityType.ENTITY_GURDY_JR = 99
---
--- 100
EntityType.ENTITY_WIDOW = 100
---
--- 101
EntityType.ENTITY_DADDYLONGLEGS = 101
---
--- 102
EntityType.ENTITY_ISAAC = 102
--- Rebirth enemies
---
--- 201
EntityType.ENTITY_STONE_EYE = 201
---
--- 202
EntityType.ENTITY_CONSTANT_STONE_SHOOTER = 202
---
--- 203
EntityType.ENTITY_BRIMSTONE_HEAD = 203
---
--- 204
EntityType.ENTITY_MOBILE_HOST = 204
---
--- 205
EntityType.ENTITY_NEST = 205
---
--- 206
EntityType.ENTITY_BABY_LONG_LEGS = 206
---
--- 207
EntityType.ENTITY_CRAZY_LONG_LEGS = 207
---
--- 208
EntityType.ENTITY_FATTY = 208
---
--- 209
EntityType.ENTITY_FAT_SACK = 209
---
--- 210
EntityType.ENTITY_BLUBBER = 210
---
--- 211
EntityType.ENTITY_HALF_SACK = 211
---
--- 212
EntityType.ENTITY_DEATHS_HEAD = 212
---
--- 213
EntityType.ENTITY_MOMS_HAND = 213
---
--- 214
EntityType.ENTITY_FLY_L2 = 214
---
--- 215
EntityType.ENTITY_SPIDER_L2 = 215
---
--- 216
EntityType.ENTITY_SWINGER = 216
---
--- 217
EntityType.ENTITY_DIP = 217
---
--- 218
EntityType.ENTITY_WALL_HUGGER = 218
---
--- 219
EntityType.ENTITY_WIZOOB = 219
---
--- 220
EntityType.ENTITY_SQUIRT = 220
---
--- 221
EntityType.ENTITY_COD_WORM = 221
---
--- 222
EntityType.ENTITY_RING_OF_FLIES = 222
---
--- 223
EntityType.ENTITY_DINGA = 223
---
--- 224
EntityType.ENTITY_OOB = 224
---
--- 225
EntityType.ENTITY_BLACK_MAW = 225
---
--- 226
EntityType.ENTITY_SKINNY = 226
---
--- 227
EntityType.ENTITY_BONY = 227
---
--- 228
EntityType.ENTITY_HOMUNCULUS = 228
---
--- 229
EntityType.ENTITY_TUMOR = 229
---
--- 230
EntityType.ENTITY_CAMILLO_JR = 230
---
--- 231
EntityType.ENTITY_NERVE_ENDING = 231
---
--- 232
EntityType.ENTITY_SKINBALL = 232
---
--- 233
EntityType.ENTITY_MOM_HEAD = 233
---
--- 234
EntityType.ENTITY_ONE_TOOTH = 234
---
--- 235
EntityType.ENTITY_GAPING_MAW = 235
---
--- 236
EntityType.ENTITY_BROKEN_GAPING_MAW = 236
---
--- 237
EntityType.ENTITY_GURGLING = 237
---
--- 238
EntityType.ENTITY_SPLASHER = 238
---
--- 239
EntityType.ENTITY_GRUB = 239
---
--- 240
EntityType.ENTITY_WALL_CREEP = 240
---
--- 241
EntityType.ENTITY_RAGE_CREEP = 241
---
--- 242
EntityType.ENTITY_BLIND_CREEP = 242
---
--- 243
EntityType.ENTITY_CONJOINED_SPITTY = 243
---
--- 244
EntityType.ENTITY_ROUND_WORM = 244
---
--- 245
EntityType.ENTITY_POOP = 245
---
--- 246
EntityType.ENTITY_RAGLING = 246
---
--- 247
EntityType.ENTITY_FLESH_MOBILE_HOST = 247
---
--- 248
EntityType.ENTITY_PSY_HORF = 248
---
--- 249
EntityType.ENTITY_FULL_FLY = 249
---
--- 250
EntityType.ENTITY_TICKING_SPIDER = 250
---
--- 251
EntityType.ENTITY_BEGOTTEN = 251
---
--- 252
EntityType.ENTITY_NULLS = 252
---
--- 253
EntityType.ENTITY_PSY_TUMOR = 253
---
--- 254
EntityType.ENTITY_FLOATING_KNIGHT = 254
---
--- 255
EntityType.ENTITY_NIGHT_CRAWLER = 255
--- Afterbirth
---
--- 256
EntityType.ENTITY_DART_FLY = 256
---
--- 257
EntityType.ENTITY_CONJOINED_FATTY = 257
---
--- 258
EntityType.ENTITY_FAT_BAT = 258
---
--- 259
EntityType.ENTITY_IMP = 259
--- Rebirth bosses
---
--- 260
EntityType.ENTITY_THE_HAUNT = 260
---
--- 261
EntityType.ENTITY_DINGLE = 261
---
--- 262
EntityType.ENTITY_MEGA_MAW = 262
---
--- 263
EntityType.ENTITY_GATE = 263
---
--- 264
EntityType.ENTITY_MEGA_FATTY = 264
---
--- 265
EntityType.ENTITY_CAGE = 265
---
--- 266
EntityType.ENTITY_MAMA_GURDY = 266
---
--- 267
EntityType.ENTITY_DARK_ONE = 267
---
--- 268
EntityType.ENTITY_ADVERSARY = 268
---
--- 269
EntityType.ENTITY_POLYCEPHALUS = 269
---
--- 270
EntityType.ENTITY_MR_FRED = 270
---
--- 271
EntityType.ENTITY_URIEL = 271
---
--- 272
EntityType.ENTITY_GABRIEL = 272
---
--- 273
EntityType.ENTITY_THE_LAMB = 273
---
--- 274
EntityType.ENTITY_MEGA_SATAN = 274
---
--- 275
EntityType.ENTITY_MEGA_SATAN_2 = 275
--- Afterbirth #2
---
--- 276
EntityType.ENTITY_ROUNDY = 276
---
--- 277
EntityType.ENTITY_BLACK_BONY = 277
---
--- 278
EntityType.ENTITY_BLACK_GLOBIN = 278
---
--- 279
EntityType.ENTITY_BLACK_GLOBIN_HEAD = 279
---
--- 280
EntityType.ENTITY_BLACK_GLOBIN_BODY = 280
---
--- 281
EntityType.ENTITY_SWARM = 281
---
--- 282
EntityType.ENTITY_MEGA_CLOTTY = 282
---
--- 283
EntityType.ENTITY_BONE_KNIGHT = 283
---
--- 284
EntityType.ENTITY_CYCLOPIA = 284
---
--- 285
EntityType.ENTITY_RED_GHOST = 285
---
--- 286
EntityType.ENTITY_FLESH_DEATHS_HEAD = 286
---
--- 287
EntityType.ENTITY_MOMS_DEAD_HAND = 287
---
--- 288
EntityType.ENTITY_DUKIE = 288
---
--- 289
EntityType.ENTITY_ULCER = 289
---
--- 290
EntityType.ENTITY_MEATBALL = 290
---
--- 291
EntityType.ENTITY_PITFALL = 291
---
--- 292
EntityType.ENTITY_MOVABLE_TNT = 292
---
--- 293
EntityType.ENTITY_ULTRA_COIN = 293
---
--- 294
EntityType.ENTITY_ULTRA_DOOR = 294
---
--- 295
EntityType.ENTITY_CORN_MINE = 295
---
--- 296
EntityType.ENTITY_HUSH_FLY = 296
---
--- 297
EntityType.ENTITY_HUSH_GAPER = 297
---
--- 298
EntityType.ENTITY_HUSH_BOIL = 298
---
--- 299
EntityType.ENTITY_GREED_GAPER = 299
---
--- 300
EntityType.ENTITY_MUSHROOM = 300
---
--- 301
EntityType.ENTITY_POISON_MIND = 301
---
--- 302
EntityType.ENTITY_STONEY = 302
---
--- 303
EntityType.ENTITY_BLISTER = 303
---
--- 304
EntityType.ENTITY_THE_THING = 304
---
--- 305
EntityType.ENTITY_MINISTRO = 305
---
--- 306
EntityType.ENTITY_PORTAL = 306
--- Booster enemies
---
--- 307
EntityType.ENTITY_TARBOY = 307
---
--- 308
EntityType.ENTITY_FISTULOID = 308
---
--- 309
EntityType.ENTITY_GUSH = 309
---
--- 310
EntityType.ENTITY_LEPER = 310
--- Afterbirth bosses
---
--- 401
EntityType.ENTITY_STAIN = 401
---
--- 402
EntityType.ENTITY_BROWNIE = 402
---
--- 403
EntityType.ENTITY_FORSAKEN = 403
---
--- 404
EntityType.ENTITY_LITTLE_HORN = 404
---
--- 405
EntityType.ENTITY_RAG_MAN = 405
---
--- 406
EntityType.ENTITY_ULTRA_GREED = 406
---
--- 407
EntityType.ENTITY_HUSH = 407
---
--- 408
EntityType.ENTITY_HUSH_SKINLESS = 408
---
--- 409
EntityType.ENTITY_RAG_MEGA = 409
---
--- 410
EntityType.ENTITY_SISTERS_VIS = 410
---
--- 411
EntityType.ENTITY_BIG_HORN = 411
---
--- 412
EntityType.ENTITY_DELIRIUM = 412
---
--- 413
EntityType.ENTITY_MATRIARCH = 413
---
--- 801
EntityType.ENTITY_BONE_WORM = 801
---
--- 802
EntityType.ENTITY_BLOOD_PUPPY = 802
---
--- 804
EntityType.ENTITY_QUAKE_GRIMACE = 804
---
--- 805
EntityType.ENTITY_BISHOP = 805
---
--- 806
EntityType.ENTITY_BUBBLES = 806
---
--- 807
EntityType.ENTITY_WRAITH = 807
---
--- 808
EntityType.ENTITY_WILLO = 808
---
--- 809
EntityType.ENTITY_BOMB_GRIMACE = 809
---
--- 810
EntityType.ENTITY_SMALL_LEECH = 810
---
--- 811
EntityType.ENTITY_DEEP_GAPER = 811
---
--- 812
EntityType.ENTITY_SUB_HORF = 812
---
--- 813
EntityType.ENTITY_BLURB = 813
---
--- 814
EntityType.ENTITY_STRIDER = 814
---
--- 815
EntityType.ENTITY_FISSURE = 815
---
--- 816
EntityType.ENTITY_POLTY = 816
---
--- 817
EntityType.ENTITY_PREY = 817
---
--- 818
EntityType.ENTITY_ROCK_SPIDER = 818
---
--- 819
EntityType.ENTITY_FLY_BOMB = 819
---
--- 820
EntityType.ENTITY_DANNY = 820
---
--- 821
EntityType.ENTITY_BLASTER = 821
---
--- 822
EntityType.ENTITY_BOUNCER = 822
---
--- 823
EntityType.ENTITY_QUAKEY = 823
---
--- 824
EntityType.ENTITY_GYRO = 824
---
--- 825
EntityType.ENTITY_FIRE_WORM = 825
---
--- 826
EntityType.ENTITY_HARDY = 826
---
--- 827
EntityType.ENTITY_FACELESS = 827
---
--- 828
EntityType.ENTITY_NECRO = 828
---
--- 829
EntityType.ENTITY_MOLE = 829
---
--- 830
EntityType.ENTITY_BIG_BONY = 830
---
--- 831
EntityType.ENTITY_GUTTED_FATTY = 831
---
--- 832
EntityType.ENTITY_EXORCIST = 832
---
--- 833
EntityType.ENTITY_CANDLER = 833
---
--- 834
EntityType.ENTITY_WHIPPER = 834
---
--- 835
EntityType.ENTITY_PEEPER_FATTY = 835
---
--- 836
EntityType.ENTITY_VIS_VERSA = 836
---
--- 837
EntityType.ENTITY_HENRY = 837
---
--- 838
EntityType.ENTITY_WILLO_L2 = 838
---
--- 840
EntityType.ENTITY_PON = 840
---
--- 841
EntityType.ENTITY_REVENANT = 841
---
--- 844
EntityType.ENTITY_BOMBGAGGER = 844
---
--- 850
EntityType.ENTITY_GAPER_L2 = 850
---
--- 851
EntityType.ENTITY_TWITCHY = 851
---
--- 852
EntityType.ENTITY_SPIKEBALL = 852
---
--- 853
EntityType.ENTITY_SMALL_MAGGOT = 853
---
--- 854
EntityType.ENTITY_ADULT_LEECH = 854
---
--- 855
EntityType.ENTITY_CHARGER_L2 = 855
---
--- 856
EntityType.ENTITY_GASBAG = 856
---
--- 857
EntityType.ENTITY_COHORT = 857
---
--- 859
EntityType.ENTITY_FLOATING_HOST = 859
---
--- 860
EntityType.ENTITY_UNBORN = 860
---
--- 861
EntityType.ENTITY_PUSTULE = 861
---
--- 862
EntityType.ENTITY_CYST = 862
---
--- 863
EntityType.ENTITY_MORNINGSTAR = 863
---
--- 864
EntityType.ENTITY_MOCKULUS = 864
---
--- 865
EntityType.ENTITY_EVIS = 865
---
--- 866
EntityType.ENTITY_DARK_ESAU = 866
---
--- 867
EntityType.ENTITY_MOTHERS_SHADOW = 867
---
--- 868
EntityType.ENTITY_ARMYFLY = 868
---
--- 869
EntityType.ENTITY_MIGRAINE = 869
---
--- 870
EntityType.ENTITY_DRIP = 870
---
--- 871
EntityType.ENTITY_SPLURT = 871
---
--- 872
EntityType.ENTITY_CLOGGY = 872
---
--- 873
EntityType.ENTITY_FLY_TRAP = 873
---
--- 874
EntityType.ENTITY_FARTIGAN = 874
---
--- 875
EntityType.ENTITY_POOT_MINE = 875
---
--- 876
EntityType.ENTITY_DUMP = 876
---
--- 877
EntityType.ENTITY_GRUDGE = 877
---
--- 878
EntityType.ENTITY_BUTT_SLICKER = 878
---
--- 879
EntityType.ENTITY_BLOATY = 879
---
--- 880
EntityType.ENTITY_FLESH_MAIDEN = 880
---
--- 881
EntityType.ENTITY_NEEDLE = 881
---
--- 882
EntityType.ENTITY_DUST = 882
---
--- 883
EntityType.ENTITY_BABY_BEGOTTEN = 883
---
--- 884
EntityType.ENTITY_SWARM_SPIDER = 884
---
--- 885
EntityType.ENTITY_CULTIST = 885
---
--- 886
EntityType.ENTITY_VIS_FATTY = 886
---
--- 887
EntityType.ENTITY_DUSTY_DEATHS_HEAD = 887
---
--- 888
EntityType.ENTITY_SHADY = 888
---
--- 889
EntityType.ENTITY_CLICKETY_CLACK = 889
---
--- 890
EntityType.ENTITY_MAZE_ROAMER = 890
---
--- 891
EntityType.ENTITY_GOAT = 891
---
--- 892
EntityType.ENTITY_POOFER = 892
---
--- 893
EntityType.ENTITY_BALL_AND_CHAIN = 893
---
--- 900
EntityType.ENTITY_REAP_CREEP = 900
---
--- 901
EntityType.ENTITY_LIL_BLUB = 901
---
--- 902
EntityType.ENTITY_RAINMAKER = 902
---
--- 903
EntityType.ENTITY_VISAGE = 903
---
--- 904
EntityType.ENTITY_SIREN = 904
---
--- 905
EntityType.ENTITY_HERETIC = 905
---
--- 906
EntityType.ENTITY_HORNFEL = 906
---
--- 907
EntityType.ENTITY_GIDEON = 907
---
--- 908
EntityType.ENTITY_BABY_PLUM = 908
---
--- 909
EntityType.ENTITY_SCOURGE = 909
---
--- 910
EntityType.ENTITY_CHIMERA = 910
---
--- 911
EntityType.ENTITY_ROTGUT = 911
---
--- 912
EntityType.ENTITY_MOTHER = 912
---
--- 913
EntityType.ENTITY_MIN_MIN = 913
---
--- 914
EntityType.ENTITY_CLOG = 914
---
--- 915
EntityType.ENTITY_SINGE = 915
---
--- 916
EntityType.ENTITY_BUMBINO = 916
---
--- 917
EntityType.ENTITY_COLOSTOMIA = 917
---
--- 918
EntityType.ENTITY_TURDLET = 918
--- currently unused
---
--- 919
EntityType.ENTITY_RAGLICH = 919
---
--- 920
EntityType.ENTITY_HORNY_BOYS = 920
--- currently unused
---
--- 921
EntityType.ENTITY_CLUTCH = 921
---
--- 922
EntityType.ENTITY_CADAVRA = 922
---
--- 950
EntityType.ENTITY_DOGMA = 950
---
--- 951
EntityType.ENTITY_BEAST = 951
---
--- 960
EntityType.ENTITY_GENERIC_PROP = 960
---
--- 963
EntityType.ENTITY_FROZEN_ENEMY = 963
---
--- 964
EntityType.ENTITY_DUMMY = 964
---
--- 965
EntityType.ENTITY_MINECART = 965
---
--- 966
EntityType.ENTITY_SIREN_HELPER = 966
---
--- 967
EntityType.ENTITY_HORNFEL_DOOR = 967
---
--- 969
EntityType.ENTITY_TRIGGER_OUTPUT = 969
---
--- 970
EntityType.ENTITY_ENVIRONMENT = 970
--- 1000 special effects
---
--- 1000
EntityType.ENTITY_EFFECT = 1000
---
--- 9001
EntityType.ENTITY_TEXT = 9001

return EntityType
