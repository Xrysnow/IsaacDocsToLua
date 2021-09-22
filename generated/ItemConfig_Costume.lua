---@class ItemConfig.Costume @
local Costume = {}

--------------------
-- Variables
--------------------

---@type string @(member)
Costume.Anm2Path = nil

---@type boolean @(member)
Costume.HasOverlay = nil

---@type boolean @(member)
Costume.HasSkinAlt = nil

---@type number @(member) (int)
Costume.ID = nil

---@type boolean @(member)
Costume.IsFlying = nil

---@type boolean @(member)
Costume.OverwriteColor = nil

---@type number @(member) (int)
Costume.Priority = nil
--- - Bug
--- >    Since it returns UserData, this function is unusable and therefore broken.
---
---@type SkinColor @(member)
Costume.SkinColor = nil
