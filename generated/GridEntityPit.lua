---@class GridEntityPit:GridEntity
local GridEntityPit = {}

--------------------
-- Functions
--------------------
--- parentEntity can be `nil` to use the default texture as the bridge
function GridEntityPit:MakeBridge()
end

function GridEntityPit:SetLadder()
end

function GridEntityPit:UpdateCollision()
end

--------------------
-- Variables
--------------------

---@type boolean @(member)
GridEntityPit.HasLadder = nil
