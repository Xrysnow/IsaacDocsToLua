---@class CppContainer.Vector.EffectList
local EffectList = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the amount of [TemporaryEffects](TemporaryEffects.md) in the list.
---
---@return number @ (int)
function EffectList:__len()
end

--------------------
-- Functions
--------------------

--- Returns the [TemporaryEffect](TemporaryEffect.md) at the index of the list provided.
---
---@return TemporaryEffect @
function EffectList:Get()
end

--------------------
-- Variables
--------------------

--- The amount of [TemporaryEffects](TemporaryEffects.md) in the list.
---
---@type number @(member) (int)
EffectList.Size = nil
