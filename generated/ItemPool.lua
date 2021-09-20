---@class ItemPool @
local ItemPool = {}

--------------------
-- Functions
--------------------

---@param Add number @ (int)
---@param PoolType ItemPoolType @
function ItemPool:AddBibleUpgrade(Add, PoolType)
end
--- Adds a given item to the blacklist. This item can no longer be chosen from itempools while the player is inside the current room. This effectively prevents the item from appearing.
--- 
--- When the player changes the room, the Blacklist gets reset.
---
---@param Item CollectibleType @
function ItemPool:AddRoomBlacklist(Item)
end
--- Forces a pill effect to be in the pool, usually for challenges, returns PillColor for that effect.
---@param ID PillEffect @
---@return PillColor @
function ItemPool:ForceAddPillEffect(ID)
end

---@param Seed number @ (int)
---@param Playing boolean @
---@param Rune boolean @
---@param OnlyRunes boolean @
---@return Card @
function ItemPool:GetCard(Seed, Playing, Rune, OnlyRunes)
end

---@param PoolType ItemPoolType @
---@param Decrease boolean @ (default false)
---@param Seed number @ (int) (default Random()
---@param DefaultItem CollectibleType @ (default CollectibleType.COLLECTIBLE_NULL)
---@return CollectibleType @
function ItemPool:GetCollectible(PoolType, Decrease, Seed, DefaultItem)
end

---@return ItemPoolType @
function ItemPool:GetLastPool()
end

---@param Seed number @ (int)
---@return PillColor @
function ItemPool:GetPill(Seed)
end

---@param PillColor PillColor @
---@param Player EntityPlayer @ (default nil)
---@return PillEffect @
function ItemPool:GetPillEffect(PillColor, Player)
end

---@param RoomType RoomType @
---@param Seed number @ (int)
---@return ItemPoolType @
function ItemPool:GetPoolForRoom(RoomType, Seed)
end

---@param DontAdvanceRNG boolean @ (default false)
---@return TrinketType @
function ItemPool:GetTrinket(DontAdvanceRNG)
end

---@param PillColor PillColor @
function ItemPool:IdentifyPill(PillColor)
end

---@param PillColor PillColor @
---@return boolean @
function ItemPool:IsPillIdentified(PillColor)
end
--- Removes a collectible from the itempool. Returns true if given item did exist in the pool before.
---
---@param Collectible CollectibleType @
---@return boolean @
function ItemPool:RemoveCollectible(Collectible)
end

---@param Trinket TrinketType @
---@return boolean @
function ItemPool:RemoveTrinket(Trinket)
end
--- Clears the current item black list.
--- 
--- When the player changes the room, this function gets called automatically.
---
function ItemPool:ResetRoomBlacklist()
end

function ItemPool:ResetTrinkets()
end
