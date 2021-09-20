---@class PathFinder @
local PathFinder = {}

--------------------
-- Functions
--------------------

---@param TargetPos Vector @
function PathFinder:EvadeTarget(TargetPos)
end

---@param Pos Vector @
---@param Speed number @ (float)
---@param PathMarker number @ (int)
---@param UseDirectPath boolean @
function PathFinder:FindGridPath(Pos, Speed, PathMarker, UseDirectPath)
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
---@param IgnorePoop boolean @
---@return boolean @
function PathFinder:HasPathToPos(Pos, IgnorePoop)
end

---@param IgnoreStatusEffects boolean @
---@return boolean @
function PathFinder:MoveRandomly(IgnoreStatusEffects)
end

---@param Speed number @ (float)
---@param IgnoreStatusEffects boolean @
function PathFinder:MoveRandomlyAxisAligned(Speed, IgnoreStatusEffects)
end

---@param IgnoreStatusEffects boolean @
function PathFinder:MoveRandomlyBoss(IgnoreStatusEffects)
end

function PathFinder:Reset()
end

function PathFinder:ResetMovementTarget()
end

---@param value boolean @
function PathFinder:SetCanCrushRocks(value)
end

function PathFinder:UpdateGridIndex()
end
