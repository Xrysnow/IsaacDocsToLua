---@class Sprite @
local Sprite = {}

--------------------
-- Constructors
--------------------


--------------------
-- Functions
--------------------
--- Return the name of the currently played animation.
---
---@return string @
function Sprite:GetAnimation()
end
--- This function returns the name of the "Default" animation of a given sprite based on its .anm2 file.
--- 
--- - Info
--- >    This function seems to be the same as `GetDefaultAnimationName()`.
--- 
--- - example "Example Code"
--- >    This code print the default animation name "WalkDown" of the player sprite.
--- 
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    local sprite = player:GetSprite()
--- >    print(sprite:GetDefaultAnimation()) -- this prints "WalkDown"
---     ```
---@return string @
function Sprite:GetDefaultAnimation()
end
--- This function returns the name of the "Default" animation of a given sprite based on its .anm2 file.
--- 
--- - Info
--- >    This function seems to be the same as `GetDefaultAnimation()`.
--- 
--- - example "Example Code"
--- >    This code print the default animation name "WalkDown" of the player sprite.
--- 
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    local sprite = player:GetSprite()
--- >    print(sprite:GetDefaultAnimationName()) -- this prints "WalkDown"
---     ```
---
---@return string @
function Sprite:GetDefaultAnimationName()
end
--- This function returns the path to the .anm2 file used by the sprite.
--- 
--- - example "Example Code"
--- >    This code print the .anm2 path of the player sprite.
--- 
---     ```lua
--- >    local player = Isaac.GetPlayer(0)
--- >    local sprite = player:GetSprite()
--- >    print(sprite:GetFilename()) -- this prints "gfx/001.000_Player.anm2"
---     ```
---
---@return string @
function Sprite:GetFilename()
end
--- Returns the currently rendered Frame of the given Sprite.
---@return number @ (int)
function Sprite:GetFrame()
end
--- Returns the number of layers of the .anm2 file of the sprite. All Animations use the same amount of Layers.
---@return number @ (int)
function Sprite:GetLayerCount()
end
--- Return the name of the currently played overlay animation.
---
---@return string @
function Sprite:GetOverlayAnimation()
end
--- Returns the currently rendered Frame of the Overlay of the given Sprite. It acts independent from the normal Frame count.
---@return number @ (int)
function Sprite:GetOverlayFrame()
end
--- Returns the color of the pixel of the Sprite at the given sample position. RenderPos can be neglected and set to a null vector
---@param SamplePos Vector @
---@param RenderPos Vector @
---@param AlphaThreshold number @ (float)
---@param LayerID number @ (int) (default 0)
---@return Color @
function Sprite:GetTexel(SamplePos, RenderPos, AlphaThreshold, LayerID)
end

---@param EventName string @
---@return boolean @
function Sprite:IsEventTriggered(EventName)
end

---@param AnimationName string @
---@return boolean @
function Sprite:IsFinished(AnimationName)
end

---@return boolean @
function Sprite:IsLoaded()
end

---@param AnimationName string @
---@return boolean @
function Sprite:IsOverlayFinished(AnimationName)
end

---@param AnimationName string @
---@return boolean @
function Sprite:IsOverlayPlaying(AnimationName)
end

---@param AnimationName string @
---@return boolean @
function Sprite:IsPlaying(AnimationName)
end
--- Loads a given ".anm2" file. The filepath is relative to the "resources" folder. The boolean can be used to load the graphics (.png files) as well, without calling the [LoadGraphics()](#LoadGraphics) function.
--- 
--- - example "Example Code"
--- >    This code creates a new sprite object, loads an .anm2 file and renders it on the screen.
--- 
---     ```lua
--- 	local mySprite = Sprite()
--- 	mySprite:Load("gfx/myCoolAnimation.anm2", true)
--- >    mySprite:Render(Vector(75,75), Vector(0,0), Vector(0,0))
---     ```
---@param Filename string @
---@param LoadGraphics boolean @
function Sprite:Load(Filename, LoadGraphics)
end
--- Loads and applies assosiated graphic-objects like ".png" files.
--- 
--- - example "Example Code"
--- >    This code creates a new sprite object and replaces the spritesheet of layer 0 of a sprite object with a different spritesheet.
--- 
---     ```lua
--- 	local mySprite = Sprite()
--- 	mySprite:Load("gfx/myCoolAnimation.anm2", true)
--- 	mySprite:ReplaceSpritesheet(0, "gfx/my_new_spritesheet.png")
--- 	mySprite:LoadGraphics()
---     ```
function Sprite:LoadGraphics()
end

---@param AnimationName string @
---@param Force boolean @
function Sprite:Play(AnimationName, Force)
end

---@param AnimationName string @
---@param Force boolean @
function Sprite:PlayOverlay(AnimationName, Force)
end

---@param Seed number @ (int)
function Sprite:PlayRandom(Seed)
end

function Sprite:Reload()
end

function Sprite:RemoveOverlay()
end

---@param Pos Vector @
---@param TopLeftClamp Vector @
---@param BottomRightClamp Vector @
function Sprite:Render(Pos, TopLeftClamp, BottomRightClamp)
end

---@param LayerId number @ (int)
---@param Pos Vector @
---@param TopLeftClamp Vector @ (default Vector.Zero)
---@param BottomRightClamp Vector @ (default Vector.Zero)
function Sprite:RenderLayer(LayerId, Pos, TopLeftClamp, BottomRightClamp)
end
--- Changes the ".png" file assosiated to a specific layer of a sprite.
--- 
--- + note "Notes"
--- >    The effect is only applied after calling the [LoadGraphics()](#LoadGraphics) function afterwards.
--- 
--- - example "Example Code"
--- >    This code creates a new sprite object and replaces the spritesheet of layer 0 of a sprite object with a different spritesheet.
--- 
---     ```lua
--- 	local mySprite = Sprite()
--- 	mySprite:Load("gfx/myCoolAnimation.anm2", true)
--- 	mySprite:ReplaceSpritesheet(0, "gfx/my_new_spritesheet.png")
--- 	mySprite:LoadGraphics()
---     ```
---@param LayerId number @ (int)
---@param PngFilename string @
function Sprite:ReplaceSpritesheet(LayerId, PngFilename)
end

function Sprite:Reset()
end

--- + note "Notes"
--- >    Passing Reset as false will continue the animation from the current frame. This is a really good tool for familiars that alternate between different FloatDirection animations dynamically and other entities that follow similar behaviors.
---
---@param AnimationName string @
---@param Reset boolean @ (default true)
---@return boolean @
function Sprite:SetAnimation(AnimationName, Reset)
end

---
---@param AnimationName string @
---@param FrameNum number @ (int)
function Sprite:SetFrame(AnimationName, FrameNum)
end

function Sprite:SetLastFrame()
end

---@param LayerId number @ (int)
---@param FrameNum number @ (int)
function Sprite:SetLayerFrame(LayerId, FrameNum)
end

---@param AnimationName string @
---@return boolean @
function Sprite:SetOverlayAnimation(AnimationName)
end

---@param AnimationName string @
---@param FrameNum number @ (int)
function Sprite:SetOverlayFrame(AnimationName, FrameNum)
end

---@param RenderFirst boolean @
function Sprite:SetOverlayRenderPriority(RenderFirst)
end

function Sprite:Stop()
end

function Sprite:Update()
end

---@param EventName string @
---@return boolean @
function Sprite:WasEventTriggered(EventName)
end

--------------------
-- Variables
--------------------

---@type Color @(member)
Sprite.Color = nil

---@type boolean @(member)
Sprite.FlipX = nil

---@type boolean @(member)
Sprite.FlipY = nil

---@type Vector @(member)
Sprite.Offset = nil

---@type number @(member) (float)
Sprite.PlaybackSpeed = nil

---@type number @(member) (float)
Sprite.Rotation = nil

---@type Vector @(member)
Sprite.Scale = nil
