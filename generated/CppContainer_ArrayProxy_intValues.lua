---@class CppContainer.ArrayProxy.intValues @
local intValues = {}

--------------------
-- Operators
--------------------

--- The length (#) operation. Returns the size of this list.
---
---@return number @ (int)
function intValues:__len()
end

--------------------
-- Functions
--------------------

---@param idx number @ (int)
---@return userdata @
function intValues:Get(idx)
end

--------------------
-- Variables
--------------------

---@type number @(member) (int)
intValues.Size = nil
