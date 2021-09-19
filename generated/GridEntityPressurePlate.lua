---@class GridEntityPressurePlate:GridEntity
local GridEntityPressurePlate = {}

--------------------
-- Functions
--------------------
--- Triggers the spawning of the reward as if the plate would be pressed, without actually pressing it.
--- 
--- - info "Greed mode behavior"
---     When in greedmode and used on the Greedmode-pressureplate, it has multiple effects:
--- 
---     When no wave is active, it will spawn a random reward analog to the normal pressure plate pool.
--- 
---     When a wave is active, it will spawn a wave, wihtout increasing the wave counter.
---
function GridEntityPressurePlate:Reward()
end

--------------------
-- Variables
--------------------
--- RNG object that determines the RNG of anything GreedMode related.
---
---@type RNG @(member)
GridEntityPressurePlate.GreedModeRNG = nil
--- Defines the animation that the greed-mode pressureplate should play. This effect is only visual!
--- 
--- Every Animation defined in the "grid_pressureplate.anm2" file can be used as an input. Any other input will crash the game!
---
---@type string @(member)
GridEntityPressurePlate.NextGreedAnimation = nil
--- Reference to the Sprite of the Timerplate beneath the pressureplate in Greed mode.
---
---@type Sprite @(member)
GridEntityPressurePlate.TimerPlate = nil
