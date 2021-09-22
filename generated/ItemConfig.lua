---@class ItemConfig @
local ItemConfig = {}

--------------------
-- Functions
--------------------
--- Returns `nil` if no itemconfig to the given ID can be found.
---
---@param ID Card @
---@return ItemConfig.Card @ (const)
function ItemConfig:GetCard(ID)
end

--- - Bug
--- >    Calling Get() in this list does not return usable userdata, rendering it useless for that purpose.
---
---@return CardList @ (const)
function ItemConfig:GetCards()
end

--- Returns the Itemobject of a given CollectibleID. Returns nil of nothing was found.
--- 
--- - example "Example Code"
--- >    This function gets the item config of sad onion.
--- 
---     ```lua
--- >        Isaac.GetItemConfig():GetCollectible(1)
---     ```
---@param ID number @ (int)
---@return ItemConfig.Item @ (const)
function ItemConfig:GetCollectible(ID)
end

--- Returns the List of all Collectibles.
--- 
--- - Bug
--- >    This function is broken and returns userdata.
--- 
--- - example "Example Code"
--- >    This Code gets the highest possible collectible id including modded items.
--- 
---     ```lua
--- >    function GetMaxCollectibleID()
--- >        return Isaac.GetItemConfig():GetCollectibles().Size -1
--- >    end
--- 
---     ```
--- 
--- 
--- - Bug
--- >    Calling Get() in this list does not return usable userdata, rendering it useless for that purpose.
---@return userdata @ (const)
function ItemConfig:GetCollectibles()
end

--- 
--- - Bug
--- >    The list returned by this function is always empty, rendering it useless.
---@return CostumeList @ (const)
function ItemConfig:GetCostumes()
end
--- Returns `nil` if no itemconfig to the given ID can be found.
---
---@param ID number @ (int)
---@return ItemConfig.Item @ (const)
function ItemConfig:GetNullItem(ID)
end

--- - Bug
--- >    Calling Get() in this list does not return usable userdata, rendering it useless for that purpose.
---
---@return ItemList @ (const)
function ItemConfig:GetNullItems()
end
--- Returns `nil` if no itemconfig to the given ID can be found.
---
---@param ID PillEffect @
---@return ItemConfig.PillEffect @ (const)
function ItemConfig:GetPillEffect(ID)
end

--- - Bug
--- >    Calling Get() in this list does not return usable userdata, rendering it useless for that purpose.
---
---@return PillList @ (const)
function ItemConfig:GetPillEffects()
end
--- Returns `nil` if no itemconfig to the given ID can be found.
---
---@param ID number @ (int)
---@return ItemConfig.Item @ (const)
function ItemConfig:GetTrinket(ID)
end

--- - Bug
--- >    Calling Get() in this list does not return usable userdata, rendering it useless for that purpose.
---
---@return ItemList @ (const)
function ItemConfig:GetTrinkets()
end

--- Function to check if a given item id is a valid collectible id (aka. this item exists). Returns **True** when it exists and **False** when it doesn't.
--- 
--- Since this function is a static function, the usage is a bit different. Take a look at the example code for the correct usage
--- 
--- - example "Example Code"
--- >    This Code checks, if the item "Sad Onion" (ID: 1) exists.
---     ```lua
--- >    ItemConfig.Config.IsValidCollectible(1)
--- 
---     ```
--- 
--- 
--- - Bug
--- >    This function returns false for modded items! Use itemConfig:GetCollectible() instead.
---@param ID CollectibleType @
---@return boolean @
function ItemConfig.IsValidCollectible(ID)
end
--- Returns weather a given item config object should add a costume when picking up the associated item.
--- 
--- Since this function is a static function, the usage is a bit different. Take a look at the example code for the correct usage
--- 
--- 
--- - example "Example Code"
--- >    This Code checks, if the item "Sad Onion" (ID: 1) should add a costume on Pickup.
---     ```lua
--- >    local sadOnionItemConfig = Isaac.GetItemConfig():GetCollectible(1)
--- >    ItemConfig.Config.ShouldAddCostumeOnPickup(sadOnionItemConfig) -- returns true
--- 
---     ```
---@param Config ItemConfig.Item @
---@return boolean @
function ItemConfig.ShouldAddCostumeOnPickup(Config)
end
