---@class GridEntityPit:GridEntity @
local GridEntityPit = {}

--------------------
-- Functions
--------------------
--- parentEntity can be `nil` to use the default texture as the bridge
---@param parentEntity GridEntity @
function GridEntityPit:MakeBridge(parentEntity)
end

---@param Value boolean @
function GridEntityPit:SetLadder(Value)
end

function GridEntityPit:UpdateCollision()
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
GridEntityPit.HasLadder = nil
