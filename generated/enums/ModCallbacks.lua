---@class ModCallbacks @enum
local ModCallbacks = {}

--- ([EntityNPC](../EntityNPC.md))
---
--- 0
ModCallbacks.MC_NPC_UPDATE = 0
--- -
---
--- 1
ModCallbacks.MC_POST_UPDATE = 1
--- -
---
--- 2
ModCallbacks.MC_POST_RENDER = 2
--- ([CollectibleType](CollectibleType.md),<br>[RNG](../RNG.md),<br>[EntityPlayer](../EntityPlayer.md),<br>UseFlags [int],<br>[ActiveSlot](ActiveSlot.md),<br>CustomVarData [int])
---
--- 3
ModCallbacks.MC_USE_ITEM = 3
--- ([EntityPlayer](../EntityPlayer.md))
---
--- 4
ModCallbacks.MC_POST_PEFFECT_UPDATE = 4
--- ([Card](Card.md),<br>[EntityPlayer](../EntityPlayer.md),<br>UseFlags [int])
---
--- 5
ModCallbacks.MC_USE_CARD = 5
--- ([EntityFamiliar](../EntityFamiliar.md))
---
--- 6
ModCallbacks.MC_FAMILIAR_UPDATE = 6
--- ([EntityFamiliar](../EntityFamiliar.md))
---
--- 7
ModCallbacks.MC_FAMILIAR_INIT = 7
--- ([EntityPlayer](../EntityPlayer.md),<br>[CacheFlag](CacheFlag.md))
---
--- 8
ModCallbacks.MC_EVALUATE_CACHE = 8
--- ([EntityPlayer](../EntityPlayer.md))
---
--- 9
ModCallbacks.MC_POST_PLAYER_INIT = 9
--- ([PillEffect](PillEffect.md),<br>[EntityPlayer](../EntityPlayer.md),<br>UseFlags [int])
---
--- 10
ModCallbacks.MC_USE_PILL = 10
--- (TookDamage [[Entity](../Entity.md)],<br>DamageAmount [float],<br>DamageFlags [int],<br>DamageSource [[EntityRef](../EntityRef.md)],<br>DamageCountdownFrames [int])
---
--- 11
ModCallbacks.MC_ENTITY_TAKE_DMG = 11
--- (Curses)
---
--- 12
ModCallbacks.MC_POST_CURSE_EVAL = 12
--- ([Entity](../Entity.md),<br>[InputHook](InputHook.md),<br>[ButtonAction](ButtonAction.md))
---
--- 13
ModCallbacks.MC_INPUT_ACTION = 13
--- -
---
--- 14
ModCallbacks.MC_LEVEL_GENERATOR = 14
--- (IsContinued [bool])
---
--- 15
ModCallbacks.MC_POST_GAME_STARTED = 15
--- (IsGameOver [bool])
---
--- 16
ModCallbacks.MC_POST_GAME_END = 16
--- (ShouldSave [bool])
---
--- 17
ModCallbacks.MC_PRE_GAME_EXIT = 17
--- -
---
--- 18
ModCallbacks.MC_POST_NEW_LEVEL = 18
--- -
---
--- 19
ModCallbacks.MC_POST_NEW_ROOM = 19
--- ([RNG](../RNG.md),<br>[Card](Card.md),<br>IncludePlayingCards [bool],<br>IncludeRunes [bool],<br>OnlyRunes [bool])
---
--- 20
ModCallbacks.MC_GET_CARD = 20
--- (ShaderName [string])
---
--- 21
ModCallbacks.MC_GET_SHADER_PARAMS = 21
--- (CMD [string],<br>Parameters [string])
---
--- 22
ModCallbacks.MC_EXECUTE_CMD = 22
--- ([CollectibleType](CollectibleType.md),<br>[RNG](../RNG.md),<br>[EntityPlayer](../EntityPlayer.md),<br>UseFlags [int],<br>[ActiveSlot](ActiveSlot.md),<br>CustomVarData [int])
---
--- 23
ModCallbacks.MC_PRE_USE_ITEM = 23
--- ([EntityType](EntityType.md),<br>Variant [int],<br>SubType [int],<br>Position [Vector],<br>Velocity [Vector],<br>Spawner [[Entity](../Entity.md)],<br>Seed [int])
---
--- 24
ModCallbacks.MC_PRE_ENTITY_SPAWN = 24
--- ([EntityFamiliar](../EntityFamiliar.md),<br>RenderOffset [Vector])
---
--- 25
ModCallbacks.MC_POST_FAMILIAR_RENDER = 25
--- ([EntityFamiliar](../EntityFamiliar.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 26
ModCallbacks.MC_PRE_FAMILIAR_COLLISION = 26
--- ([EntityNPC](../EntityNPC.md))
---
--- 27
ModCallbacks.MC_POST_NPC_INIT = 27
--- ([EntityNPC](../EntityNPC.md),<br>RenderOffset [Vector])
---
--- 28
ModCallbacks.MC_POST_NPC_RENDER = 28
--- ([EntityNPC](../EntityNPC.md))
---
--- 29
ModCallbacks.MC_POST_NPC_DEATH = 29
--- ([EntityNPC](../EntityNPC.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 30
ModCallbacks.MC_PRE_NPC_COLLISION = 30
--- ([EntityPlayer](../EntityPlayer.md))
---
--- 31
ModCallbacks.MC_POST_PLAYER_UPDATE = 31
--- ([EntityPlayer](../EntityPlayer.md),<br>RenderOffset [Vector])
---
--- 32
ModCallbacks.MC_POST_PLAYER_RENDER = 32
--- ([EntityPlayer](../EntityPlayer.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 33
ModCallbacks.MC_PRE_PLAYER_COLLISION = 33
--- ([EntityPickup](../EntityPickup.md))
---
--- 34
ModCallbacks.MC_POST_PICKUP_INIT = 34
--- ([EntityPickup](../EntityPickup.md))
---
--- 35
ModCallbacks.MC_POST_PICKUP_UPDATE = 35
--- ([EntityPickup](../EntityPickup.md),<br>RenderOffset [Vector])
---
--- 36
ModCallbacks.MC_POST_PICKUP_RENDER = 36
--- ([EntityPickup](../EntityPickup.md),<br>Variant [int],<br>Subtype [int])
---
--- 37
ModCallbacks.MC_POST_PICKUP_SELECTION = 37
--- ([EntityPickup](../EntityPickup.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 38
ModCallbacks.MC_PRE_PICKUP_COLLISION = 38
--- ([EntityTear](../EntityTear.md))
---
--- 39
ModCallbacks.MC_POST_TEAR_INIT = 39
--- ([EntityTear](../EntityTear.md))
---
--- 40
ModCallbacks.MC_POST_TEAR_UPDATE = 40
--- ([EntityTear](../EntityTear.md),<br>RenderOffset [Vector])
---
--- 41
ModCallbacks.MC_POST_TEAR_RENDER = 41
--- ([EntityTear](../EntityTear.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 42
ModCallbacks.MC_PRE_TEAR_COLLISION = 42
--- ([EntityProjectile](../EntityProjectile.md))
---
--- 43
ModCallbacks.MC_POST_PROJECTILE_INIT = 43
--- ([EntityProjectile](../EntityProjectile.md))
---
--- 44
ModCallbacks.MC_POST_PROJECTILE_UPDATE = 44
--- ([EntityProjectile](../EntityProjectile.md),<br>RenderOffset [Vector])
---
--- 45
ModCallbacks.MC_POST_PROJECTILE_RENDER = 45
--- ([EntityProjectile](../EntityProjectile.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 46
ModCallbacks.MC_PRE_PROJECTILE_COLLISION = 46
--- ([EntityLaser](../EntityLaser.md))
---
--- 47
ModCallbacks.MC_POST_LASER_INIT = 47
--- ([EntityLaser](../EntityLaser.md))
---
--- 48
ModCallbacks.MC_POST_LASER_UPDATE = 48
--- ([EntityLaser](../EntityLaser.md),<br>RenderOffset [Vector])
---
--- 49
ModCallbacks.MC_POST_LASER_RENDER = 49
--- ([EntityKnife](../EntityKnife.md))
---
--- 50
ModCallbacks.MC_POST_KNIFE_INIT = 50
--- ([EntityKnife](../EntityKnife.md))
---
--- 51
ModCallbacks.MC_POST_KNIFE_UPDATE = 51
--- ([EntityKnife](../EntityKnife.md),<br>RenderOffset [Vector])
---
--- 52
ModCallbacks.MC_POST_KNIFE_RENDER = 52
--- ([EntityKnife](../EntityKnife.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 53
ModCallbacks.MC_PRE_KNIFE_COLLISION = 53
--- ([EntityEffect](../EntityEffect.md))
---
--- 54
ModCallbacks.MC_POST_EFFECT_INIT = 54
--- ([EntityEffect](../EntityEffect.md))
---
--- 55
ModCallbacks.MC_POST_EFFECT_UPDATE = 55
--- ([EntityEffect](../EntityEffect.md),<br>RenderOffset [Vector])
---
--- 56
ModCallbacks.MC_POST_EFFECT_RENDER = 56
--- ([EntityBomb](../EntityBomb.md))
---
--- 57
ModCallbacks.MC_POST_BOMB_INIT = 57
--- ([EntityBomb](../EntityBomb.md))
---
--- 58
ModCallbacks.MC_POST_BOMB_UPDATE = 58
--- ([EntityBomb](../EntityBomb.md),<br>Offset [Vector])
---
--- 59
ModCallbacks.MC_POST_BOMB_RENDER = 59
--- ([EntityBomb](../EntityBomb.md),<br>Collider [[Entity](../Entity.md)],<br>Low [bool])
---
--- 60
ModCallbacks.MC_PRE_BOMB_COLLISION = 60
--- ([EntityTear](../EntityTear.md))
---
--- 61
ModCallbacks.MC_POST_FIRE_TEAR = 61
--- ([ItemPoolType](ItemPoolType.md),<br>Decrease [bool],<br>Seed [int])
---
--- 62
ModCallbacks.MC_PRE_GET_COLLECTIBLE = 62
--- (SelectedCollectible [[CollectibleType](CollectibleType.md)],<br>[ItemPoolType](ItemPoolType.md),<br>Decrease [bool],<br>Seed [int])
---
--- 63
ModCallbacks.MC_POST_GET_COLLECTIBLE = 63
--- (Seed [int])
---
--- 64
ModCallbacks.MC_GET_PILL_COLOR = 64
--- (SelectedPillEffect [[PillEffect](PillEffect.md)],<br>PillColor)
---
--- 65
ModCallbacks.MC_GET_PILL_EFFECT = 65
--- (SelectedTrinket [[TrinketType](TrinketType.md)],<br>[RNG](../RNG.md))
---
--- 66
ModCallbacks.MC_GET_TRINKET = 66
--- ([Entity](../Entity.md))
---
--- 67
ModCallbacks.MC_POST_ENTITY_REMOVE = 67
--- ([Entity](../Entity.md))
---
--- 68
ModCallbacks.MC_POST_ENTITY_KILL = 68
--- ([EntityNPC](../EntityNPC.md))
---
--- 69
ModCallbacks.MC_PRE_NPC_UPDATE = 69
--- ([RNG](../RNG.md),<br>SpawnPosition [Vector])
---
--- 70
ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD = 70
--- ([EntityType](EntityType.md),<br>Variant [int],<br>SubType [int],<br>GridIndex [int],<br>Seed [int])
---
--- 71
ModCallbacks.MC_PRE_ROOM_ENTITY_SPAWN = 71

return ModCallbacks
