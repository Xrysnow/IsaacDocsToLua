---@class SFXManager
local SFXManager = {}

--------------------
-- Constructors
--------------------

--- Returns a [SFXManager](SFXManager.md) object.
--- 
--- - example "Example Code"
---     Example usage:
---     ```lua
---     SFXManager():Stop(SoundEffect.SOUND_1UP)
--- 
---     ```
---@return SFXManager @
function SFXManager:SFXManager()
end

--------------------
-- Functions
--------------------
--- mostly useful for repeating sounds
---@param ID SoundEffect @
function SFXManager:AdjustPitch(ID)
end
--- mostly useful for repeating sounds
---@param ID SoundEffect @
function SFXManager:AdjustVolume(ID)
end

---@return number @ (float)
function SFXManager:GetAmbientSoundVolume()
end

---@return boolean @
function SFXManager:IsPlaying()
end

---@param ID SoundEffect @
---@param Volume number @ (float) (default 1)
---@param FrameDelay number @ (int) (default 2)
---@param Loop boolean @ (default false)
---@param Pitch number @ (float) (default 1)
function SFXManager:Play(ID, Volume, FrameDelay, Loop, Pitch)
end

function SFXManager:Preload()
end

---@param ID SoundEffect @
---@param Volume number @ (float)
function SFXManager:SetAmbientSound(ID, Volume)
end

function SFXManager:Stop()
end

function SFXManager:StopLoopingSounds()
end
