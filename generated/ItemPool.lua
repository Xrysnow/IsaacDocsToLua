---@class ItemPool
local ItemPool = {}

--------------------
-- Functions
--------------------

---@param Add number @ (int)
function ItemPool:AddBibleUpgrade(Add)
end
--- Adds a given item to the blacklist. This item can no longer be chosen from itempools while the player is inside the current room. This effectively prevents the item from appearing.
--- 
--- When the player changes the room, the Blacklist gets reset.
---
function ItemPool:AddRoomBlacklist()
end
--- Forces a pill effect to be in the pool, usually for challenges, returns PillColor for that effect.
---@return PillColor @
function ItemPool:ForceAddPillEffect()
end

---@param Seed number @ (int)
---@param Playing boolean @
---@param Rune boolean @
---@return Card @
function ItemPool:GetCard(Seed, Playing, Rune)
end

---@param PoolType ItemPoolType @
---@param Decrease boolean @ (default false)
---@param Seed number @ (int) (default Random()
---@return CollectibleType @
function ItemPool:GetCollectible(PoolType, Decrease, Seed)
end

---@return ItemPoolType @
function ItemPool:GetLastPool()
end

---@return PillColor @
function ItemPool:GetPill()
end

---@param PillColor PillColor @
---@return PillEffect @
function ItemPool:GetPillEffect(PillColor)
end

---@param RoomType RoomType @
---@return ItemPoolType @
function ItemPool:GetPoolForRoom(RoomType)
end

---@return TrinketType @
function ItemPool:GetTrinket()
end

function ItemPool:IdentifyPill()
end

---@return boolean @
function ItemPool:IsPillIdentified()
end
--- Removes a collectible from the itempool. Returns true if given item did exist in the pool before.
---
---@return boolean @
function ItemPool:RemoveCollectible()
end

---@return boolean @
function ItemPool:RemoveTrinket()
end
--- Clears the current item black list.
--- 
--- When the player changes the room, this function gets called automatically.
---
function ItemPool:ResetRoomBlacklist()
end

function ItemPool:ResetTrinkets()
end
