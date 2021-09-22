---@class SFXManager @
local SFXManager = {}

--------------------
-- Constructors
--------------------


--------------------
-- Functions
--------------------
--- mostly useful for repeating sounds
---@param ID SoundEffect @
---@param Pitch number @ (float)
function SFXManager:AdjustPitch(ID, Pitch)
end
--- mostly useful for repeating sounds
---@param ID SoundEffect @
---@param Volume number @ (float)
function SFXManager:AdjustVolume(ID, Volume)
end

---@param ID SoundEffect @
---@return number @ (float)
function SFXManager:GetAmbientSoundVolume(ID)
end

---@param ID SoundEffect @
---@return boolean @
function SFXManager:IsPlaying(ID)
end

---@param ID SoundEffect @
---@param Volume number @ (float) (default 1)
---@param FrameDelay number @ (int) (default 2)
---@param Loop boolean @ (default false)
---@param Pitch number @ (float) (default 1)
---@param Pan number @ (float) (default 0)
function SFXManager:Play(ID, Volume, FrameDelay, Loop, Pitch, Pan)
end

---@param ID SoundEffect @
function SFXManager:Preload(ID)
end

---@param ID SoundEffect @
---@param Volume number @ (float)
---@param Pitch number @ (float)
function SFXManager:SetAmbientSound(ID, Volume, Pitch)
end

---@param ID SoundEffect @
function SFXManager:Stop(ID)
end

function SFXManager:StopLoopingSounds()
end
