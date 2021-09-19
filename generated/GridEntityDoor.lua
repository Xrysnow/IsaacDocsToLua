---@class GridEntityDoor:GridEntity
local GridEntityDoor = {}

--------------------
-- Functions
--------------------

function GridEntityDoor:Bar()
end

---@return boolean @
function GridEntityDoor:CanBlowOpen()
end

function GridEntityDoor:Close()
end

---@return Vector @ (const)
function GridEntityDoor:GetSpriteOffset()
end

---@return boolean @
function GridEntityDoor:IsBusted()
end

---@return boolean @
function GridEntityDoor:IsKeyFamiliarTarget()
end

---@return boolean @
function GridEntityDoor:IsLocked()
end

---@return boolean @
function GridEntityDoor:IsOpen()
end

---@return boolean @
function GridEntityDoor:IsRoomType()
end

---@return boolean @
function GridEntityDoor:IsTargetRoomArcade()
end

function GridEntityDoor:Open()
end

function GridEntityDoor:SetLocked()
end

---@param CurrentRoomType RoomType @
function GridEntityDoor:SetRoomTypes(CurrentRoomType)
end

function GridEntityDoor:SpawnDust()
end
--- try to open the door by explosive force, true for success
---@param FromExplosion boolean @
---@return boolean @
function GridEntityDoor:TryBlowOpen(FromExplosion)
end
--- try to unlock the door using a key, true for success
---@param player boolean_TryUnlock_([EntityPlayer](EntityPlayer.md @
---@return boolean_TryUnlock_([EntityPlayer](EntityPlayer.md)_player,_boolean_Force @
function GridEntityDoor:TryUnlock(player)
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
GridEntityDoor.Busted = nil

---@type string @(member)
GridEntityDoor.CloseAnimation = nil

---@type RoomType @(member)
GridEntityDoor.CurrentRoomType = nil

---@type Direction @(member)
GridEntityDoor.Direction = nil
--- Additional sprite used for the door. Examples for extra sprites are: bars, chains, wooden boards, etc.
---@type Sprite @(member)
GridEntityDoor.ExtraSprite = nil
--- Toggles the visibility of the extra sprite. Examples for extra sprites are: bars, chains, wooden boards, etc.
---@type boolean @(member)
GridEntityDoor.ExtraVisible = nil

---@type string @(member)
GridEntityDoor.LockedAnimation = nil

---@type string @(member)
GridEntityDoor.OpenAnimation = nil

---@type string @(member)
GridEntityDoor.OpenLockedAnimation = nil

---@type number @(member) (int)
GridEntityDoor.PreviousState = nil

---@type number @(member) (int)
GridEntityDoor.PreviousVariant = nil

---@type DoorSlot @(member)
GridEntityDoor.Slot = nil
--- Note: this value only affects the room transition animation and does not actually change the target room.
---
---@type number @(member) (int)
GridEntityDoor.TargetRoomIndex = nil

---@type RoomType @(member)
GridEntityDoor.TargetRoomType = nil
