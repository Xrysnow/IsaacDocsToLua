---@class TemporaryEffects
local TemporaryEffects = {}

--------------------
-- Functions
--------------------
--- Adds the effect of a collectible to the player, without actually giving him the assosiated item.
--- 
--- + bug
---     This function does only work for some collectibles, but not all. For example, it doesnt work for "Chocolate milk".
--- 
--- - example "Example Code"
---     This code applies the effect and costume of the item "Sad Onion" to the player.
--- 
---     ```lua
---     local player = Isaac.GetPlayer(0)
---     player:GetEffects():AddCollectibleEffect(CollectibleType.COLLECTIBLE_SAD_ONION, true)
---     ```
---@param CollectibleType CollectibleType @
---@param AddCostume boolean @ (default true)
function TemporaryEffects:AddCollectibleEffect(CollectibleType, AddCostume)
end

---@param NullId ItemConfig::NullItemID @
---@param AddCostume boolean @ (default true)
function TemporaryEffects:AddNullEffect(NullId, AddCostume)
end

---@param TrinketType TrinketType @
---@param AddCostume boolean @ (default true)
function TemporaryEffects:AddTrinketEffect(TrinketType, AddCostume)
end

function TemporaryEffects:ClearEffects()
end

---@return TemporaryEffect @ (const)
function TemporaryEffects:GetCollectibleEffect()
end

---@return number @ (int)
function TemporaryEffects:GetCollectibleEffectNum()
end

---@return EffectList @ (const)
function TemporaryEffects:GetEffectsList()
end

---@return TemporaryEffect @ (const)
function TemporaryEffects:GetNullEffect()
end

---@return number @ (int)
function TemporaryEffects:GetNullEffectNum()
end

---@return TemporaryEffect @ (const)
function TemporaryEffects:GetTrinketEffect()
end

---@return number @ (int)
function TemporaryEffects:GetTrinketEffectNum()
end

---@return boolean @
function TemporaryEffects:HasCollectibleEffect()
end

---@return boolean @
function TemporaryEffects:HasNullEffect()
end

---@return boolean @
function TemporaryEffects:HasTrinketEffect()
end
--- Count = -1 removes all instances of the effect
---@param CollectibleType CollectibleType @
function TemporaryEffects:RemoveCollectibleEffect(CollectibleType)
end
--- Count = -1 removes all instances of the effect
---@param NullId ItemConfig::NullItemID @
function TemporaryEffects:RemoveNullEffect(NullId)
end
--- Count = -1 removes all instances of the effect
---@param TrinketType TrinketType @
function TemporaryEffects:RemoveTrinketEffect(TrinketType)
end
