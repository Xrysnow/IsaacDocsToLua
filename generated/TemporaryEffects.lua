---@class TemporaryEffects @
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
---@param Count number @ (int) (default 1)
function TemporaryEffects:AddCollectibleEffect(CollectibleType, AddCostume, Count)
end

---@param NullId ItemConfig.NullItemID @
---@param AddCostume boolean @ (default true)
---@param Count number @ (int) (default 1)
function TemporaryEffects:AddNullEffect(NullId, AddCostume, Count)
end

---@param TrinketType TrinketType @
---@param AddCostume boolean @ (default true)
---@param Count number @ (int) (default 1)
function TemporaryEffects:AddTrinketEffect(TrinketType, AddCostume, Count)
end

function TemporaryEffects:ClearEffects()
end

---@param CollectibleType CollectibleType @
---@return TemporaryEffect @ (const)
function TemporaryEffects:GetCollectibleEffect(CollectibleType)
end

---@param CollectibleType CollectibleType @
---@return number @ (int)
function TemporaryEffects:GetCollectibleEffectNum(CollectibleType)
end

---@return EffectList @ (const)
function TemporaryEffects:GetEffectsList()
end

---@param NullId ItemConfig.NullItemID @
---@return TemporaryEffect @ (const)
function TemporaryEffects:GetNullEffect(NullId)
end

---@param NullId ItemConfig.NullItemID @
---@return number @ (int)
function TemporaryEffects:GetNullEffectNum(NullId)
end

---@param TrinketType TrinketType @
---@return TemporaryEffect @ (const)
function TemporaryEffects:GetTrinketEffect(TrinketType)
end

---@param TrinketType TrinketType @
---@return number @ (int)
function TemporaryEffects:GetTrinketEffectNum(TrinketType)
end

---@param CollectibleType CollectibleType @
---@return boolean @
function TemporaryEffects:HasCollectibleEffect(CollectibleType)
end

---@param NullId ItemConfig.NullItemID @
---@return boolean @
function TemporaryEffects:HasNullEffect(NullId)
end

---@param TrinketType TrinketType @
---@return boolean @
function TemporaryEffects:HasTrinketEffect(TrinketType)
end
--- Count = -1 removes all instances of the effect
---@param CollectibleType CollectibleType @
---@param Count number @ (int) (default 1)
function TemporaryEffects:RemoveCollectibleEffect(CollectibleType, Count)
end
--- Count = -1 removes all instances of the effect
---@param NullId ItemConfig.NullItemID @
---@param Count number @ (int) (default 1)
function TemporaryEffects:RemoveNullEffect(NullId, Count)
end
--- Count = -1 removes all instances of the effect
---@param TrinketType TrinketType @
---@param Count number @ (int) (default 1)
function TemporaryEffects:RemoveTrinketEffect(TrinketType, Count)
end
