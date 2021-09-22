---@class GridEntity @
local GridEntity = {}

--------------------
-- Functions
--------------------

---@param Immediate boolean @
---@return boolean @
function GridEntity:Destroy(Immediate)
end

---@return number @ (int)
function GridEntity:GetGridIndex()
end

---@return RNG @
function GridEntity:GetRNG()
end

---@return GridEntityDesc @
function GridEntity:GetSaveState()
end

---@return Sprite @
function GridEntity:GetSprite()
end

---@return GridEntityType @
function GridEntity:GetType()
end

---@return number @ (int)
function GridEntity:GetVariant()
end

---@param Damage number @ (int)
---@return boolean @
function GridEntity:Hurt(Damage)
end

---@param Seed number @ (int)
function GridEntity:Init(Seed)
end

function GridEntity:PostInit()
end

---@param Offset Vector @
function GridEntity:Render(Offset)
end

---@param Type GridEntityType @
function GridEntity:SetType(Type)
end

---@param Variant number @ (int)
function GridEntity:SetVariant(Variant)
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityDoor @
function GridEntity:ToDoor()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityPit @
function GridEntity:ToPit()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityPoop @
function GridEntity:ToPoop()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityPressurePlate @
function GridEntity:ToPressurePlate()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityRock @
function GridEntity:ToRock()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntitySpikes @
function GridEntity:ToSpikes()
end

--- + note "Return behavior"
--- >    If the conversion is not successful, this function returns `nil`.
---@return GridEntityTNT @
function GridEntity:ToTNT()
end

function GridEntity:Update()
end

--------------------
-- Variables
--------------------

---@type GridCollisionClass @(member)
GridEntity.CollisionClass = nil

---@type GridEntityDesc @(member)
GridEntity.Desc = nil
--- Returns the position of the grid cell's center point
---@type Vector @(member)
GridEntity.Position = nil
--- Used for various different usecases.
--- 
--- - example "Example States"
---     ```
--- >    Rocks with state = 2 are destroyed rocks (The rubble is the rock basically)
---     ```
---@type number @(member) (int)
GridEntity.State = nil
--- A Variable that stores some entity-specific data. The content can have completely different effects for different GridEntities.
--- 
--- - example "Example Code"
--- >    This code spawns a functioning Void Portal into the center of the room. This will teleport you to the floor "The Void" and will have the same appearance as the vanilla portal:
---     ```lua
--- >    -- get grid in center of room
--- >    local spawnPos = Game():GetRoom():GetGridPosition(67)
--- >    -- spawn Trapdoor
--- >    local portalEntity = Isaac.GridSpawn(GridEntityType.GRID_TRAPDOOR, 0, spawnPos, true)
--- >    -- set VoidPortal behavior (Teleport to void and Pulse effect shader)
--- >    portalEntity.VarData = 1
--- >    -- Replace spritesheet of trapdoor to look like a Void Portal
--- >    local sprite = portalEntity.Sprite
--- >    sprite:ReplaceSpritesheet(0, "gfx/grid/voidtrapdoor.png")
--- >    sprite:LoadGraphics()
--- >    sprite:Load("gfx/grid/voidtrapdoor.anm2", true)
--- >    portalEntity.Sprite = sprite
---     ```
---
---@type number @(member) (int)
GridEntity.VarData = nil
