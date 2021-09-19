---@class HUD
local HUD = {}

--------------------
-- Functions
--------------------
--- Refreshes the HUD (e.g. Characters that have Parent specified no longer show their health in the main HUD).
function HUD:AssignPlayerHUDs()
end
--- Chargebar flashes as if item was actually charged.
---@param Player EntityPlayer @
function HUD:FlashChargeBar(Player)
end
--- 
---@param Player EntityPlayer @
function HUD:InvalidateActiveItem(Player)
end
--- 
function HUD:InvalidateCraftingItem()
end
--- Returns false if HUD is invisible and true otherwise.
---@return boolean @
function HUD:IsVisible()
end
--- Allows to display fortune streak with text. Accepts unlimited amount of arguments.
---@param MainString string @
---@param SecondaryString string @
function HUD:ShowFortuneText(MainString, SecondaryString)
end
--- 
---@param MainString string @
---@param SecondaryString string @
function HUD:ShowItemText(MainString, SecondaryString)
end
--- Allows to display an item splash text without picking it up.
---@param Player EntityPlayer @
function HUD:ShowItemText(Player)
end
