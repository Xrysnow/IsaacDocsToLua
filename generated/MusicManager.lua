---@class MusicManager
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
function MusicManager:Crossfade(ID)
end

function MusicManager:Disable()
end

function MusicManager:DisableLayer()
end

function MusicManager:Enable()
end

---@param LayerId number @ (int) (default 0)
function MusicManager:EnableLayer(LayerId)
end

---@param ID MusicManager @
---@param Volume number @ (float) (default 1)
function MusicManager:Fadein(ID, Volume)
end

function MusicManager:Fadeout()
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

---@return boolean @
function MusicManager:IsLayerEnabled()
end

function MusicManager:Pause()
end

function MusicManager:PitchSlide()
end

---@param ID MusicManager @
function MusicManager:Play(ID)
end

function MusicManager:Queue()
end

function MusicManager:ResetPitch()
end

function MusicManager:Resume()
end

--- This function sets the music volume to the volume defined in the options menu.
function MusicManager:UpdateVolume()
end

---@param TargetVolume number @ (float)
function MusicManager:VolumeSlide(TargetVolume)
end
