---@class SortingLayer @enum
local SortingLayer = {}

--- Background level, behind grid entities (creep, pitfalls)
---
--- 0
SortingLayer.SORTING_BACKGROUND = 0
--- Used by door Xray animation
---
--- 1
SortingLayer.SORTING_DOOR = 1
--- Uses Y position to determine Z sorting
---
--- 2
SortingLayer.SORTING_NORMAL = 2

return SortingLayer
