---@class CS.UnityEngine.Vector2 : CS.System.ValueType
CS.UnityEngine.Vector2 = {}

---@field public CS.UnityEngine.Vector2.x : CS.System.Single
CS.UnityEngine.Vector2.x = nil

---@field public CS.UnityEngine.Vector2.y : CS.System.Single
CS.UnityEngine.Vector2.y = nil

---@field public CS.UnityEngine.Vector2.kEpsilon : CS.System.Single
CS.UnityEngine.Vector2.kEpsilon = nil

---@field public CS.UnityEngine.Vector2.kEpsilonNormalSqrt : CS.System.Single
CS.UnityEngine.Vector2.kEpsilonNormalSqrt = nil

---@property readwrite CS.UnityEngine.Vector2.Item : CS.System.Single
CS.UnityEngine.Vector2.Item = nil

---@property readonly CS.UnityEngine.Vector2.normalized : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.normalized = nil

---@property readonly CS.UnityEngine.Vector2.magnitude : CS.System.Single
CS.UnityEngine.Vector2.magnitude = nil

---@property readonly CS.UnityEngine.Vector2.sqrMagnitude : CS.System.Single
CS.UnityEngine.Vector2.sqrMagnitude = nil

---@property readonly CS.UnityEngine.Vector2.zero : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.zero = nil

---@property readonly CS.UnityEngine.Vector2.one : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.one = nil

---@property readonly CS.UnityEngine.Vector2.up : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.up = nil

---@property readonly CS.UnityEngine.Vector2.down : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.down = nil

---@property readonly CS.UnityEngine.Vector2.left : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.left = nil

---@property readonly CS.UnityEngine.Vector2.right : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.right = nil

---@property readonly CS.UnityEngine.Vector2.positiveInfinity : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.positiveInfinity = nil

---@property readonly CS.UnityEngine.Vector2.negativeInfinity : CS.UnityEngine.Vector2
CS.UnityEngine.Vector2.negativeInfinity = nil

---@param x : CS.System.Single
---@param y : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2(x, y)
end

---@param newX : CS.System.Single
---@param newY : CS.System.Single
function CS.UnityEngine.Vector2:Set(newX, newY)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.LerpUnclamped(a, b, t)
end

---@param current : CS.UnityEngine.Vector2
---@param target : CS.UnityEngine.Vector2
---@param maxDistanceDelta : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.MoveTowards(current, target, maxDistanceDelta)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Scale(a, b)
end

---@param scale : CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2:Scale(scale)
end

function CS.UnityEngine.Vector2:Normalize()
end

---@return CS.System.String
function CS.UnityEngine.Vector2:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Vector2:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Vector2:ToString(format, formatProvider)
end

---@return CS.System.Int32
function CS.UnityEngine.Vector2:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Vector2:Equals(other)
end

---@param other : CS.UnityEngine.Vector2
---@return CS.System.Boolean
function CS.UnityEngine.Vector2:Equals(other)
end

---@param inDirection : CS.UnityEngine.Vector2
---@param inNormal : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Reflect(inDirection, inNormal)
end

---@param inDirection : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Perpendicular(inDirection)
end

---@param lhs : CS.UnityEngine.Vector2
---@param rhs : CS.UnityEngine.Vector2
---@return CS.System.Single
function CS.UnityEngine.Vector2.Dot(lhs, rhs)
end

---@param from : CS.UnityEngine.Vector2
---@param to : CS.UnityEngine.Vector2
---@return CS.System.Single
function CS.UnityEngine.Vector2.Angle(from, to)
end

---@param from : CS.UnityEngine.Vector2
---@param to : CS.UnityEngine.Vector2
---@return CS.System.Single
function CS.UnityEngine.Vector2.SignedAngle(from, to)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.System.Single
function CS.UnityEngine.Vector2.Distance(a, b)
end

---@param vector : CS.UnityEngine.Vector2
---@param maxLength : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.ClampMagnitude(vector, maxLength)
end

---@param a : CS.UnityEngine.Vector2
---@return CS.System.Single
function CS.UnityEngine.Vector2.SqrMagnitude(a)
end

---@return CS.System.Single
function CS.UnityEngine.Vector2:SqrMagnitude()
end

---@param lhs : CS.UnityEngine.Vector2
---@param rhs : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Min(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector2
---@param rhs : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.Max(lhs, rhs)
end

---@param current : CS.UnityEngine.Vector2
---@param target : CS.UnityEngine.Vector2
---@param currentVelocity : CS.UnityEngine.Vector2
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current : CS.UnityEngine.Vector2
---@param target : CS.UnityEngine.Vector2
---@param currentVelocity : CS.UnityEngine.Vector2
---@param smoothTime : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current : CS.UnityEngine.Vector2
---@param target : CS.UnityEngine.Vector2
---@param currentVelocity : CS.UnityEngine.Vector2
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@param deltaTime : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Vector2
---@param b : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Division(a, b)
end

---@param a : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_UnaryNegation(a)
end

---@param a : CS.UnityEngine.Vector2
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Multiply(a, d)
end

---@param d : CS.System.Single
---@param a : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Multiply(d, a)
end

---@param a : CS.UnityEngine.Vector2
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Division(a, d)
end

---@param lhs : CS.UnityEngine.Vector2
---@param rhs : CS.UnityEngine.Vector2
---@return CS.System.Boolean
function CS.UnityEngine.Vector2.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector2
---@param rhs : CS.UnityEngine.Vector2
---@return CS.System.Boolean
function CS.UnityEngine.Vector2.op_Inequality(lhs, rhs)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector2.op_Implicit(v)
end