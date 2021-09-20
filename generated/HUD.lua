---@class HUD @
local HUD = {}

--------------------
-- Functions
--------------------
--- Refreshes the HUD (e.g. Characters that have Parent specified no longer show their health in the main HUD).
function HUD:AssignPlayerHUDs()
end
--- Chargebar flashes as if item was actually charged.
---@param Player EntityPlayer @
---@param ActiveSlot ActiveSlot @
function HUD:FlashChargeBar(Player, ActiveSlot)
end
--- 
---@param Player EntityPlayer @
---@param ActiveSlot ActiveSlot @
function HUD:InvalidateActiveItem(Player, ActiveSlot)
end
--- 
---@param Player EntityPlayer @
function HUD:InvalidateCraftingItem(Player)
end
--- Returns false if HUD is invisible and true otherwise.
---@return boolean @
function HUD:IsVisible()
end
--- Allows to display fortune streak with text. Accepts unlimited amount of arguments.
---@param MainString string @
---@param SecondaryString string @
---@param ...  @
function HUD:ShowFortuneText(MainString, SecondaryString, ...)
end
--- 
---@param MainString string @
---@param SecondaryString string @
---@param IsCurseDisplay boolean @ (default false)
function HUD:ShowItemText(MainString, SecondaryString, IsCurseDisplay)
end
--- Allows to display an item splash text without picking it up.
---@param Player EntityPlayer @
---@param Item Item @
function HUD:ShowItemText(Player, Item)
end
