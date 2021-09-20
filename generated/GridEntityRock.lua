---@class GridEntityRock:GridEntity @
local GridEntityRock = {}

--------------------
-- Functions
--------------------

---@return number @ (int)
function GridEntityRock:GetBigRockFrame()
end

---@return string @
function GridEntityRock:GetRubbleAnim()
end

---@return Sprite @ (const)
function GridEntityRock:GetSprite()
end

---@param Frame number @ (int)
function GridEntityRock:SetBigRockFrame(Frame)
end

function GridEntityRock:UpdateAnimFrame()
end

--------------------
-- Variables
--------------------

---@type string @(member)
GridEntityRock.Anim = nil

---@type number @(member) (int)
GridEntityRock.FrameCnt = nil

---@type string @(member)
GridEntityRock.RubbleAnim = nil
