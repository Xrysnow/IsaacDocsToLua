---@class CppContainer.ArrayProxy.RoomDescriptor
local RoomDescriptor = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of rooms in the list.
---
---@return number @ (int)
function RoomDescriptor:__len()
end

--------------------
-- Functions
--------------------

--- Returns a [RoomDescriptor](RoomDescriptor.md) at the index of the list provided.
---
---@return RoomDescriptor @
function RoomDescriptor:Get()
end

--------------------
-- Variables
--------------------

--- The amount of rooms in the list.
---
---@type number @(member) (int)
RoomDescriptor.Size = nil
