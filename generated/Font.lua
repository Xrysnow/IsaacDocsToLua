---@class Font
local Font = {}

--------------------
-- Constructors
--------------------

--- Constructor for the "Font" class.
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
function Font:Font()
end

--------------------
-- Functions
--------------------
--- Draws a string of text to the screen
--- Converts UTF8 to UTF16, then draws the string.
--- Notes: The BoxWidth and Center parameters can be used for aligning the text: If BoxWidth is zero, the text will be left aligned and the center parameter will be ignored If BoxWidth is NOT zero, and the Center parameter is FALSE, then the text will be right aligned inside the BoxWidth size If BoxWidth is NOT zero, and the center parameter is TRUE, then the text will be centered inside the BoxWidth size
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
---@param String string @
---@param PositionX number @ (float)
---@param PositionY number @ (float)
---@param RenderColor KColor @
---@param BoxWidth number @ (int) (default 0)
function Font:DrawString(String, PositionX, PositionY, RenderColor, BoxWidth)
end
--- Draws a scaled string of text on the screen.
--- Converts UTF8 to UTF16, then draws the string.
--- 
--- - example "Example Code"
---     Example usage.
---     ```lua
---     local f = Font() -- init font object
---     f:Load("font/terminus.fnt") -- load a font into the font object
---     f:DrawStringScaled("Hello World!",60,50,0.5,0.5,KColor(1,1,1,1),0,true) -- render string with loaded font on position 60x50y
--- 
---     ```
---
---@param String string @
---@param PositionX number @ (float)
---@param PositionY number @ (float)
---@param ScaleX number @ (float)
---@param ScaleY number @ (float)
---@param RenderColor KColor @
---@param BoxWidth number @ (int) (default 0)
function Font:DrawStringScaled(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth)
end
--- Draws a scaled string of Unicode text on the screen.
--- 
--- - example "Example Code"
---     Example usage.
---     ```lua
---     local f = Font() -- init font object
---     f:Load("font/terminus.fnt") -- load a font into the font object
---     f:DrawStringScaledUTF8("Hello World!",60,50,0.5,0.5,KColor(1,1,1,1),0,true) -- render string with loaded font on position 60x50y
--- 
---     ```
---
---@param String string @
---@param PositionX number @ (float)
---@param PositionY number @ (float)
---@param ScaleX number @ (float)
---@param ScaleY number @ (float)
---@param RenderColor KColor @
---@param BoxWidth number @ (int) (default 0)
function Font:DrawStringScaledUTF8(String, PositionX, PositionY, ScaleX, ScaleY, RenderColor, BoxWidth)
end
--- Draws a string of Unicode text to the screen
--- Notes: The BoxWidth and Center parameters can be used for aligning the text: If BoxWidth is zero, the text will be left aligned and the center parameter will be ignored If BoxWidth is NOT zero, and the Center parameter is FALSE, then the text will be right aligned inside the BoxWidth size If BoxWidth is NOT zero, and the center parameter is TRUE, then the text will be centered inside the BoxWidth size
--- 
--- - example "Example Code"
---     Example usage.
---     ```lua
---     local f = Font() -- init font object
---     f:Load("font/terminus.fnt") -- load a font into the font object
---     f:DrawStringUTF8("Hello World!",60,50,KColor(1,1,1,1),0,true) -- render string with loaded font on position 60x50y
--- 
---     ```
---
---@param String string @
---@param PositionX number @ (float)
---@param PositionY number @ (float)
---@param RenderColor KColor @
---@param BoxWidth number @ (int) (default 0)
function Font:DrawStringUTF8(String, PositionX, PositionY, RenderColor, BoxWidth)
end
--- Get the number of pixels from the absolute top of the line to the base of the characters
---@return number @ (int)
function Font:GetBaselineHeight()
end
--- Returns the width of a specific character
---@return number @ (int)
function Font:GetCharacterWidth()
end
--- Get the distance in pixels between each line of text
---@return number @ (int)
function Font:GetLineHeight()
end
--- Converts UTF8 to UTF16 and returns string width
---@return number @ (int)
function Font:GetStringWidth()
end
--- returns string width of a Unicode text.
---@return number @ (int)
function Font:GetStringWidthUTF8()
end
--- Returns whether a font is loaded or not.
---@return boolean @
function Font:IsLoaded()
end
--- Loads a font.
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
---@return boolean @
function Font:Load()
end
--- Converts UTF8 to UTF16, then draws
--- Sets the missing character to be used by the font (the character used when missing characters are encountered)
function Font:SetMissingCharacter()
end
--- Unloads all our data from memory
function Font:Unload()
end
