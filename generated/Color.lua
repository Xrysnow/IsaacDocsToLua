---@class Color @
local Color = {}

--------------------
-- Constructors
--------------------

--- Constructor for the "Color" class.
--- 
--- When using the [Font](Font.md) class, use [KColor()](KColor.md) instead.
--- 
--- Colors are made of three separate components, tint, colorize and offset. Tint acts like a color multiplicator. Offset is a color which is added after the tint is applied. Colorize is complicated. See the `SetColorize()` function for a detailed description.
--- 
--- R, G, B, A, RO, GO and BO accept numbers between 0 and 1.
---@param R number @ (float)
---@param G number @ (float)
---@param B number @ (float)
---@param A number @ (float) (default 1)
---@param RO number @ (float) (default 0)
---@param GO number @ (float) (default 0)
---@param BO number @ (float) (default 0)
---@return Color @
function Color:Color(R, G, B, A, RO, GO, BO)
end

--------------------
-- Operators
--------------------

--- Defines the multiplication of two [Color](Color.md) objects using the `*` operator.
---@param right Color @
---@return Color @
function Color:__mul(right)
end

--------------------
-- Constants
--------------------
--- 
---@type Color @(constant)
Color.Default = nil

--------------------
-- Functions
--------------------

--- Linear Interpolation between two colors. `t` is the "progress" of the interpolation. Setting `t = 0.5` means that the color in the middle of m1 and m2 will be returned.
---@param m1 Color @
---@param m2 Color @
---@param t number @ (float)
---@return Color @
function Color.Lerp(m1, m2, t)
end

function Color:Reset()
end

--- The colorize function can be used to change the color of sprites. Its the best for that purpose, since it does not affect existing coloranimations like the flashing of creep.
--- 
--- The values can be between 0 and 1 for normal coloration. if you use higher numbers the color gets more vibrant.
--- 
--- - note "Notes"
---     The alpha component determines how much colorization must be applied. The function takes the original color, converts it to grayscale, multiplies it by the RGB components and then blends it back with the original color. The alpha value determines the blending factor.
---     Colorization is applied after the tint and before the offset function.
--- 
--- - example "Example Code"
---     - `SetColorize(1, 1, 1, 1)` will turn the sprite into grayscale.
---     - `SetColorize(1, 0, 0, 1)` will turn it red but not as a red tint but as shades of red.
---     - `SetColorize(1, 1, 1, 2)` will invert the sprite without touching its luminosity.
--- 
---     This code changes the color of red Creep to be purple
---     ```lua
---     mod:AddCallback(ModCallbacks.MC_POST_EFFECT_INIT, function(_, effect)
---       if effect.Variant == EffectVariant.CREEP_RED then
---         local color = Color(1, 1, 1, 1, 0, 0, 0)
---         color:SetColorize(4, 0, 4, 1)
---         local sprite = effect:GetSprite()
---         sprite.Color = color
---       end
---     end)
---     ```
---
---@param Red number @ (float)
---@param Green number @ (float)
---@param Blue number @ (float)
---@param Amount number @ (float)
function Color:SetColorize(Red, Green, Blue, Amount)
end

--- Offset is a color that gets added to the sprite after the Tint was applied.
---@param RedOffset number @ (float)
---@param GreenOffset number @ (float)
---@param BlueOffset number @ (float)
function Color:SetOffset(RedOffset, GreenOffset, BlueOffset)
end

--- Tint acts like a color multiplicator.
---@param RedTint number @ (float)
---@param GreenTint number @ (float)
---@param BlueTint number @ (float)
---@param AlphaTint number @ (float)
function Color:SetTint(RedTint, GreenTint, BlueTint, AlphaTint)
end

--------------------
-- Variables
--------------------
--- Alpha value of the color, where 0 is fully transparent, 1 is fully opaque.
---@type number @(member) (float)
Color.A = nil
--- Blue value of the color. Number between 0 and 1.
---@type number @(member) (float)
Color.B = nil
--- Blue-Offset value of the color. Number can be positive or negative.
---
---@type number @(member) (float)
Color.BO = nil
--- Green value of the color. Number between 0 and 1.
---
---@type number @(member) (float)
Color.G = nil
--- Green-Offset value of the color. Number can be positive or negative.
---
---@type number @(member) (float)
Color.GO = nil
--- Red value of the color. Number between 0 and 1.
---
---@type number @(member) (float)
Color.R = nil
