---@class ItemConfig.Item
local Item = {}

--------------------
-- Functions
--------------------

---@return boolean @
function Item:HasTags()
end

---@return boolean @
function Item:IsCollectible()
end

---@return boolean @
function Item:IsNull()
end

---@return boolean @
function Item:IsTrinket()
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
Item.AchievementID = nil

---@type number @(member) (int)
Item.AddBlackHearts = nil

---@type number @(member) (int)
Item.AddBombs = nil

---@type number @(member) (int)
Item.AddCoins = nil

---@type number @(member) (int)
Item.AddHearts = nil

---@type number @(member) (int)
Item.AddKeys = nil

---@type number @(member) (int)
Item.AddMaxHearts = nil

---@type number @(member) (int)
Item.AddSoulHearts = nil

---@type number @(member) (int)
Item.CacheFlags = nil

---@type number @(member) (int)
Item.ChargeType = nil

---@type boolean @(member)
Item.ClearEffectsOnRemove = nil

---@type Costume @(member)
Item.Costume = nil

---@type string @(member)
Item.Description = nil

---@type number @(member) (int)
Item.DevilPrice = nil

---@type boolean @(member)
Item.Discharged = nil

---@type string @(member)
Item.GfxFileName = nil

---@type boolean @(member)
Item.Hidden = nil

---@type number @(member) (int)
Item.ID = nil

---@type number @(member) (int)
Item.InitCharge = nil

---@type number @(member) (int)
Item.MaxCharges = nil

---@type number @(member) (int)
Item.MaxCooldown = nil

---@type string @(member)
Item.Name = nil

---@type boolean @(member)
Item.PassiveCache = nil

---@type boolean @(member)
Item.PersistentEffect = nil

---@type number @(member) (int)
Item.Quality = nil

---@type number @(member) (int)
Item.ShopPrice = nil

---@type boolean @(member)
Item.Special = nil

---@type number @(member) (int)
Item.Tags = nil
--- mostly for Lua so it will not make a copy
---@type ItemType @(member)
Item.Type = nil
