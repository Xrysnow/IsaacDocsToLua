---@class PathFinder
local PathFinder = {}

--------------------
-- Functions
--------------------

function PathFinder:EvadeTarget()
end

---@param Pos Vector @
---@param Speed number @ (float)
---@param PathMarker number @ (int)
function PathFinder:FindGridPath(Pos, Speed, PathMarker)
end

---@return number @ (int)
function PathFinder:GetEvadeMovementCountdown()
end

---@return number @ (int)
function PathFinder:GetGridIndex()
end

---@return boolean @
function PathFinder:HasDirectPath()
end
--- Used for safe check if any NPC is behind rocks/pits, doesn't disturb class members.
---@param Pos Vector @
---@return boolean @
function PathFinder:HasPathToPos(Pos)
end

---@return boolean @
function PathFinder:MoveRandomly()
end

---@param Speed number @ (float)
function PathFinder:MoveRandomlyAxisAligned(Speed)
end

function PathFinder:MoveRandomlyBoss()
end

function PathFinder:Reset()
end

function PathFinder:ResetMovementTarget()
end

function PathFinder:SetCanCrushRocks()
end

function PathFinder:UpdateGridIndex()
end
