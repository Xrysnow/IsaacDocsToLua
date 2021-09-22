---@class RNG @
local RNG = {}

--------------------
-- Constructors
--------------------


--------------------
-- Functions
--------------------
--- Returns the current seed of the RNG object.
---@return number @ (int)
function RNG:GetSeed()
end

---@return number @ (int)
function RNG:Next()
end
--- Returns a number between 0 and 1. This includes 0, but excludes 1.
--- 
--- + example "Example code"
---     ```lua
--- >    local myRNG = RNG()
--- >    myRNG:SetSeed(Random(), 1)
--- >    myRNG:RandomFloat()  -- will generate a number between 0 and 1
---     ```
---@return number @ (float)
function RNG:RandomFloat()
end
--- Returns a number between 0 and the max value, excluding the max value.
--- 
--- + example "Example code"
---     ```lua
--- >    local myRNG = RNG()
--- >    myRNG:SetSeed(Random(), 1)
--- >    myRNG:RandomInt(4)  -- will generate 0, 1, 2, or 3.
---     ```
---@param Max number @ (int)
---@return number @ (int)
function RNG:RandomInt(Max)
end
--- Set the seed of a given RNG object.
--- 
--- - Bug
--- >    If the seed of an RNG object is set to 0, the game will crash after invoking a method like `Next()`, `RandomInt()`, etc.
--- 
--- 
--- + example "Example code"
---     ```lua
--- >    local myRNG = RNG()
--- >    myRNG:SetSeed(Random(), 1)
---     ```
--- 
--- Shift index table can be found here: https://gist.github.com/bladecoding/17b341ed08ff94d2deb704ebda8ffc5f
---@param Seed number @ (int)
---@param ShiftIdx number @ (int)
function RNG:SetSeed(Seed, ShiftIdx)
end
