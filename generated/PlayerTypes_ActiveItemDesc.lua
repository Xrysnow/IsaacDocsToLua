---@class PlayerTypes.ActiveItemDesc
local ActiveItemDesc = {}

--------------------
-- Variables
--------------------

---@type number @(member) (int)
ActiveItemDesc.BatteryCharge = nil
--- For items like Jars this holds the number of flies/hearts.
---@type number @(member) (int)
ActiveItemDesc.Charge = nil

---@type CollectibleType @(member)
ActiveItemDesc.Item = nil
--- How close the item is to gaining another charge (0-1 range, used by 4.5 Volt)
---@type number @(member) (float)
ActiveItemDesc.PartialCharge = nil
--- Number of frames before an item with a timed cooldown can recharge again (used by Spin To Win to pause its recharge after fully discharging it)
---@type number @(member) (int)
ActiveItemDesc.TimedRechargeCooldown = nil
--- Holds extra information for some active items (such as the number of uses for Jar of Wisps)
---@type number @(member) (int)
ActiveItemDesc.VarData = nil
