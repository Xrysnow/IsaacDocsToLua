---@class MusicManager @
local MusicManager = {}

--------------------
-- Constructors
--------------------

--- Returns a [MusicManager](MusicManager.md) object.
--- 
--- - example "Example Code"
---     Example usage:
---     ```lua
---     MusicManager():Disable()
--- 
---     ```
---@return MusicManager @
function MusicManager:MusicManager()
end

--------------------
-- Functions
--------------------

---@param ID MusicManager @
---@param FadeRate number @ (float) (default 0.08)
function MusicManager:Crossfade(ID, FadeRate)
end

function MusicManager:Disable()
end

---@param LayerId number @ (int) (default 0)
function MusicManager:DisableLayer(LayerId)
end

function MusicManager:Enable()
end

---@param LayerId number @ (int) (default 0)
---@param Instant boolean @ (default false)
function MusicManager:EnableLayer(LayerId, Instant)
end

---@param ID MusicManager @
---@param Volume number @ (float) (default 1)
---@param FadeRate number @ (float) (default 0.08)
function MusicManager:Fadein(ID, Volume, FadeRate)
end

---@param FadeRate number @ (float) (default 0.08)
function MusicManager:Fadeout(FadeRate)
end

---@return MusicManager @
function MusicManager:GetCurrentMusicID()
end
--- if nothing is queued, return the current music id
---@return MusicManager @
function MusicManager:GetQueuedMusicID()
end

---@return boolean @
function MusicManager:IsEnabled()
end

---@param LayerId number @ (int) (default 0)
---@return boolean @
function MusicManager:IsLayerEnabled(LayerId)
end

function MusicManager:Pause()
end

---@param TargetPitch number @ (float)
function MusicManager:PitchSlide(TargetPitch)
end

---@param ID MusicManager @
---@param Volume number @ (float)
function MusicManager:Play(ID, Volume)
end

---@param ID MusicManager @
function MusicManager:Queue(ID)
end

function MusicManager:ResetPitch()
end

function MusicManager:Resume()
end

--- This function sets the music volume to the volume defined in the options menu.
function MusicManager:UpdateVolume()
end

---@param TargetVolume number @ (float)
---@param FadeRate number @ (float) (default 0.08)
function MusicManager:VolumeSlide(TargetVolume, FadeRate)
end
