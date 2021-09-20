---@class EntityPickup:Entity @
local EntityPickup = {}

--------------------
-- Functions
--------------------

function EntityPickup:AppearFast()
end

---@return boolean @
function EntityPickup:CanReroll()
end
--- If this is a coin, return its face value, else zero.
---@return number @ (int)
function EntityPickup:GetCoinValue()
end

---@return boolean @
function EntityPickup:IsShopItem()
end
--- **KeepSeed**: If set to true, keeps the initial RNG seed of the pickup instead of rerolling it
--- 
--- **IgnoreModifiers**: If set to true, ignores item effects that might turn this pickup into something other than the specificed variant and subtype
---@param Type EntityType @
---@param Variant number @ (int)
---@param SubType number @ (int)
---@param KeepPrice boolean @ (default false)
---@param KeepSeed boolean @ (default false)
---@param IgnoreModifiers boolean @ (default false)
function EntityPickup:Morph(Type, Variant, SubType, KeepPrice, KeepSeed, IgnoreModifiers)
end

function EntityPickup:PlayDropSound()
end

function EntityPickup:PlayPickupSound()
end
--- **Player**: The player that opened this chest
---@param Player EntityPlayer @ (default nil)
---@return boolean @
function EntityPickup:TryOpenChest(Player)
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
EntityPickup.AutoUpdatePrice = nil

---@type number @(member) (int)
EntityPickup.Charge = nil
--- Any non-zero value causes the item to form an option group with any other item with the same OptionsPickupIndex value.
--- 
--- When an item belonging to an option group is picked up, all other items belonging to the same group disappear.
--- 
--- 0 is the default value and means the item doesn't belong to any group.
---@type number @(member) (int)
EntityPickup.OptionsPickupIndex = nil

---@type number @(member) (int)
EntityPickup.Price = nil

--- If in a shop, this value describes which slot the item is for sale in. For example, if the shop has 6 things for sale, the pickups in the room will have shop item IDs of 0, 1, 2, 3, 4, and 5.
--- 
--- When spawning a new collectible item, the ShopItemId will be 0 by default. This has a side effect of making the D6 roll the collectible into a red heart. By setting shop item id to -1, it will fix this behavior such that the collectible will properly roll into another collectible.
---
---@type number @(member) (int)
EntityPickup.ShopItemId = nil

---@type number @(member) (int)
EntityPickup.State = nil

---@type number @(member) (int)
EntityPickup.Timeout = nil

---@type boolean @(member)
EntityPickup.Touched = nil

---@type number @(member) (int)
EntityPickup.Wait = nil
