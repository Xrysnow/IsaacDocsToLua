---@class KColor @
local KColor = {}

--------------------
-- Constructors
--------------------

--- Constructor for the "KColor" class.
--- Notes: "KColor" is only used in the [Font](Font.md) class. For most other situations you will need to use the [Color()](Color.md) constructor.
---@param red number @ (float)
---@param green number @ (float)
---@param blue number @ (float)
---@param alpha number @ (float)
---@return KColor @
function KColor:KColor(red, green, blue, alpha)
end

--------------------
-- Variables
--------------------

---@type number @(member) (float)
KColor.Alpha = nil

---@type number @(member) (float)
KColor.Blue = nil

---@type number @(member) (float)
KColor.Green = nil

---@type number @(member) (float)
KColor.Red = nil
