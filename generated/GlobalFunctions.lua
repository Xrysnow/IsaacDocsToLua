--

--------------------
-- Constructors
--------------------

--- Constructor for the "[Color](Color.md)" class.
--- 
--- When using the [Font](Font.md) class, use [KColor()](KColor.md) instead.
--- 
--- Colors are made of three separate components, tint, colorize and offset. Tint acts like a color multiplicator. Offset is a color which is added after the tint is applied. Colorize is complicated. See the `SetColorize()` function for a detailed description.
--- 
--- R, G, B and A accept numbers between 0 and 1.
--- 
--- RO, GO and BO accept numbers between -255 and 255.
---@param R number @ (float)
---@param G number @ (float)
---@param B number @ (float)
---@param A number @ (float)
---@param RO number @ (int)
---@param GO number @ (int)
---@param BO number @ (int)
---@return Color @
function Color(R, G, B, A, RO, GO, BO)
end

---@param entity Entity @
---@return EntityPtr @
function EntityPtr(entity)
end

---@param entity Entity @
---@return EntityRef @
function EntityRef(entity)
end

--- Constructor for the "[Font](Font.md)" class.
--- 
--- - example "Example Code"
---     Example usage.
---     ```lua
---     local f = Font() -- init font object
---     f:Load("font/terminus.fnt") -- load a font into the font object
---     f:DrawString("Hello World!",60,50,KColor(1,1,1,1),0,true) -- render string with loaded font on position 60x50y
--- 
---     ```
---
---@return Font @
function Font()
end

--- Returns a [Game](Game.md) object.
--- 
--- - example "Example Code"
---     Example usage:
---     ```lua
---     Game():IsPaused()
---     --returns true if the game is paused
--- 
---     ```
---@return Game @
function Game()
end

--- Constructor for the "[KColor](KColor.md)" class.
--- Notes: "[KColor](KColor.md)" is only used in the [Font](Font.md) class. For most other situations you will need to use the [Color()](Color.md) constructor.
---@param red number @ (float)
---@param green number @ (float)
---@param blue number @ (float)
---@param alpha number @ (float)
---@return KColor @
function KColor(red, green, blue, alpha)
end

--- Returns a [MusicManager](MusicManager.md) object.
--- 
--- - example "Example Code"
---     Example usage:
---     ```lua
---     MusicManager():Disable()
--- 
---     ```
---@return MusicManager @
function MusicManager()
end

---@return ProjectileParams @
function ProjectileParams()
end

--- Method to define a mod in the game. This needs to be defined to handle callbacks and save data in your mod.
--- 
--- Returns a table which acts as the [Mod Reference](ModReference.md).
--- 
--- - example "Example Code"
---     ```lua
---     local yourMod = RegisterMod("someMod", 1)
--- 
---     ```
---
---@param modName string @
---@param apiVersion number @ (int)
---@return Mod.Reference @
function RegisterMod(modName, apiVersion)
end

---@return RNG @
function RNG()
end

---@return Sprite @
function Sprite()
end

--- Returns a [SFXManager](SFXManager.md) object.
--- 
--- - example "Example Code"
---     Example usage:
---     ```lua
---     SFXManager():Stop(SoundEffect.SOUND_1UP)
--- 
---     ```
---@return SFXManager @
function SFXManager()
end

---@param x number @ (float)
---@param y number @ (float)
---@return Vector @
function Vector(x, y)
end

--------------------
-- Functions
--------------------
--- Returns a hash-value of the pointer given as an input value. Valid inputs are any Isaac object, including `Entity`, `Room`, `RNG`, `Sprite`, `Game` etc.
--- 
--- It can be used to easily compare two entities, making equality checks very easy.
--- 
--- **Example:**
--- 
--- If you spawn a certain entity, save it in a variable and then compare it to the `entity` parameter in `MC_ENTITY_TAKE_DMG`, this comparison will never be true even if both variables refer to the exact same entity in the game. `GetPtrHash()` turns pointer into a fixed number, which makes comparisons easier.
--- 
--- - example "Example Code"
---     Example on check if two entities saved in different variables are the same.
---     ```lua
---     -- don't do it like this
---     if entity1 == entity2 then
---         -- this will always be false, because two different references on a pointer are not equal
---     end
---     -- use GetPtrHash() to compare them
---     if GetPtrHash(entity1) == GetPtrHash(entity2) then
---         -- this will be true, when the pointer of both variables point to the same object.
---     end
--- 
---     ```
---
---@param object Object @
---@return number @ (int)
function GetPtrHash(object)
end
--- Returns a random integer. (0 to 2^32)
---@return number @ (int)
function Random()
end
--- Returns a random vector with length 1. Multiply this vector by a number for larger random vectors.
---@return Vector @
function RandomVector()
end
