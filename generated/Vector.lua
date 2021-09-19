---@class Vector
local Vector = {}

--------------------
-- Constructors
--------------------

---@param x number @ (float)
---@param y number @ (float)
---@return Vector @
function Vector:Vector(x, y)
end

--------------------
-- Constants
--------------------
--- 
---@type Vector @(constant)
Vector.Zero = nil
--- 
---@type Vector @(constant)
Vector.One = nil

--------------------
-- Operators
--------------------
--- Defines the Addition of two Vector objects using the `+` operator.
--- 
--- - example "Example Code"
---     ```lua
---     local vec1 = Vector(2,1)
---     local vec2 = Vector(5,3)
---     local result = vec1+vec2 -- result equals Vector(7,4) now
---     ```
---@return Vector @
function Vector:__add()
end
--- Defines the Division of two Vector objects using the `/` operator.
--- 
--- - example "Example Code"
---     ```lua
---     local vec1 = Vector(6,4)
---     local vec2 = Vector(2,4)
---     local result = vec1/vec2 -- result equals Vector(3,1) now
---     ```
---@return Vector @
function Vector:__div()
end
--- Defines the Multiplication of two Vector objects using the `*` operator.
--- 
--- - example "Example Code"
---     ```lua
---     local vec1 = Vector(2,3)
---     local vec2 = Vector(5,3)
---     local result = vec1*vec2 -- result equals Vector(10,9) now
---     ```
---@return Vector @
function Vector:__mul()
end
--- Defines the Subtraction of two Vector objects using the `-` operator.
--- 
--- - example "Example Code"
---     ```lua
---     local vec1 = Vector(2,1)
---     local vec2 = Vector(5,3)
---     local result = vec1-vec2 -- result equals Vector(-3,-2) now
---     ```
---@return Vector @
function Vector:__sub()
end
--- Defines the inversion of a Vector object using the `-` operator.
--- 
--- - example "Example Code"
---     ```lua
---     local vec1 = Vector(2,1)
---     local result = -vec1 -- result equals Vector(-2,-1) now
---     ```
---
---@return Vector @
function Vector:__unm()
end

--------------------
-- Functions
--------------------
--- Clamps the vector based on left, top, right, bottom boundings. Doesn't keep direction
---@param MinX number @ (float)
---@param MinY number @ (float)
---@param MaxX number @ (float)
function Vector:Clamp(MinX, MinY, MaxX)
end
--- Returns a clamped version of the vector.
---@param MinX number @ (float)
---@param MinY number @ (float)
---@param MaxX number @ (float)
---@return Vector @
function Vector:Clamped(MinX, MinY, MaxX)
end
--- Cross product this is the 2x2 matrix determinant or the resulting z value for their 3D versions with z=0
---@return number @ (float)
function Vector:Cross()
end
--- Returns distance between two vectors
--- 
--- - example "Example Code"
---     ```lua
---     local sqtDist = Vector(2,0):Distance(Vector(4,0))) --sqtDist = 2
--- 
---     ```
---
---@param first Vector @
---@return number @ (float)
function Vector:Distance(first)
end
--- Returns squared distance between two vectors
--- 
--- - example "Example Code"
---     ```lua
---     local sqtDist = Vector(2,0):DistanceSquared(Vector(4,0))) --sqtDist = 4
--- 
---     ```
---
---@param first Vector @
---@return number @ (float)
function Vector:DistanceSquared(first)
end
--- Dot product
---@return number @ (float)
function Vector:Dot()
end
--- Build a [Vector](Vector.md) from an angle, returns a normalized vector. Angle 0 will result in (1, 0). Angle 90 will result in (0, 1).
--- 
--- - example "Example Code"
---     This code returns a vector that has a 45 degree angle
---     ```lua
---     local vec = Vector.FromAngle(45)) --vec is now Vector(0.70711,0.70711)
--- 
---     ```
---@return Vector @
function Vector.FromAngle()
end

--- Returns the angle the vector is facing. The vector (1, 0) will be at 0 degrees. The vector (0, 1) will be at 90 degrees.
--- 
--- Practically, this means:
--- 
--- - Right: 0
--- - Up: -90
--- - Left: 180
--- - Down: 90
--- 
--- - example "Example Code"
---     This code returns the angle between two positions.
---     ```lua
---     local v1 = Vector(1,0) -- has angle 0.0
---     local v2 = Vector(0,1) -- has angle 90.0
---     local v3 = v2-v1 -- subtraction of 2 points is a vector connecting the two points
---     print(v3:GetAngleDegrees()) -- prints 45.0
--- 
---     ```
---
---@return number @ (float)
function Vector:GetAngleDegrees()
end
--- Returns the length of the vector
---@return number @ (float)
function Vector:Length()
end
--- Returns the length squared of the vector
---@return number @ (float)
function Vector:LengthSquared()
end

--- Linear interpolation between two vectors. For t = 0 it returns the first Vector, for t = 1 it returns the second.
--- 
--- - example "Alternate Function example"
---     This function does the same as Lerp, but will not alter the input vectors.
---     ```lua
---     function Lerp(vec1, vec2, percent)
---         return vec1 * (1 - percent) + vec2 * percent
---     end
---     ```
--- 
--- - example "Example Code"
---     This code will make v1 the vector 50% in between v1 and v2
---     ```lua
---     local v1 = Vector(0,0)
---     local v2 = Vector(1,1)
---     v1:Lerp(v2,0.5) -- v1 equals  Vector(0.5,0.5)  now
--- 
---     ```
---@param first Vector @
---@param second Vector @
---@return Vector @
function Vector:Lerp(first, second)
end
--- Normalizes this vector
function Vector:Normalize()
end
--- Returns a normalized version of this vector
---@return Vector @
function Vector:Normalized()
end
--- Resizes the vector length.
function Vector:Resize()
end
--- Returns a resized version of the vector.
---@return Vector @
function Vector:Resized()
end
--- Returns a rotated version of the vector by AngleDegrees
---@return Vector @
function Vector:Rotated()
end

--------------------
-- Variables
--------------------
--- Components of vector.
---@type number @(member) (float)
Vector.X = nil

---@type number @(member) (float)
Vector.Y = nil
