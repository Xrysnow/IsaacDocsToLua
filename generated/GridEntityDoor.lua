---@class GridEntityDoor:GridEntity @
local GridEntityDoor = {}

--------------------
-- Functions
--------------------

function GridEntityDoor:Bar()
end

---@return boolean @
function GridEntityDoor:CanBlowOpen()
end

---@param Force boolean @
function GridEntityDoor:Close(Force)
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

---@param Type RoomType @
---@return boolean @
function GridEntityDoor:IsRoomType(Type)
end

---@return boolean @
function GridEntityDoor:IsTargetRoomArcade()
end

function GridEntityDoor:Open()
end

---@param Locked boolean @
function GridEntityDoor:SetLocked(Locked)
end

---@param CurrentRoomType RoomType @
---@param TargetRoomType RoomType @
function GridEntityDoor:SetRoomTypes(CurrentRoomType, TargetRoomType)
end

function GridEntityDoor:SpawnDust()
end
--- try to open the door by explosive force, true for success
---@param FromExplosion boolean @
---@param source Entity @
---@return boolean @
function GridEntityDoor:TryBlowOpen(FromExplosion, source)
end
--- try to unlock the door using a key, true for success
---@param player boolean_TryUnlock_([EntityPlayer](EntityPlayer.md @
---@param Force boolean @
---@return boolean_TryUnlock_([EntityPlayer](EntityPlayer.md)_player,_boolean_Force @
function GridEntityDoor:TryUnlock(player, Force)
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
