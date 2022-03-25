---@class CS.UnityEngine.Vector3 : CS.System.ValueType
CS.UnityEngine.Vector3 = {}

---@field public CS.UnityEngine.Vector3.kEpsilon : CS.System.Single
CS.UnityEngine.Vector3.kEpsilon = nil

---@field public CS.UnityEngine.Vector3.kEpsilonNormalSqrt : CS.System.Single
CS.UnityEngine.Vector3.kEpsilonNormalSqrt = nil

---@field public CS.UnityEngine.Vector3.x : CS.System.Single
CS.UnityEngine.Vector3.x = nil

---@field public CS.UnityEngine.Vector3.y : CS.System.Single
CS.UnityEngine.Vector3.y = nil

---@field public CS.UnityEngine.Vector3.z : CS.System.Single
CS.UnityEngine.Vector3.z = nil

---@property readwrite CS.UnityEngine.Vector3.Item : CS.System.Single
CS.UnityEngine.Vector3.Item = nil

---@property readonly CS.UnityEngine.Vector3.normalized : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.normalized = nil

---@property readonly CS.UnityEngine.Vector3.magnitude : CS.System.Single
CS.UnityEngine.Vector3.magnitude = nil

---@property readonly CS.UnityEngine.Vector3.sqrMagnitude : CS.System.Single
CS.UnityEngine.Vector3.sqrMagnitude = nil

---@property readonly CS.UnityEngine.Vector3.zero : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.zero = nil

---@property readonly CS.UnityEngine.Vector3.one : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.one = nil

---@property readonly CS.UnityEngine.Vector3.forward : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.forward = nil

---@property readonly CS.UnityEngine.Vector3.back : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.back = nil

---@property readonly CS.UnityEngine.Vector3.up : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.up = nil

---@property readonly CS.UnityEngine.Vector3.down : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.down = nil

---@property readonly CS.UnityEngine.Vector3.left : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.left = nil

---@property readonly CS.UnityEngine.Vector3.right : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.right = nil

---@property readonly CS.UnityEngine.Vector3.positiveInfinity : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.positiveInfinity = nil

---@property readonly CS.UnityEngine.Vector3.negativeInfinity : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.negativeInfinity = nil

---@property readonly CS.UnityEngine.Vector3.fwd : CS.UnityEngine.Vector3
CS.UnityEngine.Vector3.fwd = nil

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3(x, y, z)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3(x, y)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Slerp(a, b, t)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.SlerpUnclamped(a, b, t)
end

---@param normal : CS.UnityEngine.Vector3
---@param tangent : CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.OrthoNormalize(normal, tangent)
end

---@param normal : CS.UnityEngine.Vector3
---@param tangent : CS.UnityEngine.Vector3
---@param binormal : CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.OrthoNormalize(normal, tangent, binormal)
end

---@param current : CS.UnityEngine.Vector3
---@param target : CS.UnityEngine.Vector3
---@param maxRadiansDelta : CS.System.Single
---@param maxMagnitudeDelta : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.LerpUnclamped(a, b, t)
end

---@param current : CS.UnityEngine.Vector3
---@param target : CS.UnityEngine.Vector3
---@param maxDistanceDelta : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.MoveTowards(current, target, maxDistanceDelta)
end

---@param current : CS.UnityEngine.Vector3
---@param target : CS.UnityEngine.Vector3
---@param currentVelocity : CS.UnityEngine.Vector3
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current : CS.UnityEngine.Vector3
---@param target : CS.UnityEngine.Vector3
---@param currentVelocity : CS.UnityEngine.Vector3
---@param smoothTime : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current : CS.UnityEngine.Vector3
---@param target : CS.UnityEngine.Vector3
---@param currentVelocity : CS.UnityEngine.Vector3
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@param deltaTime : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param newX : CS.System.Single
---@param newY : CS.System.Single
---@param newZ : CS.System.Single
function CS.UnityEngine.Vector3:Set(newX, newY, newZ)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Scale(a, b)
end

---@param scale : CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3:Scale(scale)
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Cross(lhs, rhs)
end

---@return CS.System.Int32
function CS.UnityEngine.Vector3:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Vector3:Equals(other)
end

---@param other : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Vector3:Equals(other)
end

---@param inDirection : CS.UnityEngine.Vector3
---@param inNormal : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Reflect(inDirection, inNormal)
end

---@param value : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Normalize(value)
end

function CS.UnityEngine.Vector3:Normalize()
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.Dot(lhs, rhs)
end

---@param vector : CS.UnityEngine.Vector3
---@param onNormal : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Project(vector, onNormal)
end

---@param vector : CS.UnityEngine.Vector3
---@param planeNormal : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.ProjectOnPlane(vector, planeNormal)
end

---@param from : CS.UnityEngine.Vector3
---@param to : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.Angle(from, to)
end

---@param from : CS.UnityEngine.Vector3
---@param to : CS.UnityEngine.Vector3
---@param axis : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.SignedAngle(from, to, axis)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.Distance(a, b)
end

---@param vector : CS.UnityEngine.Vector3
---@param maxLength : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.ClampMagnitude(vector, maxLength)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.Magnitude(vector)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.SqrMagnitude(vector)
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Min(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Max(lhs, rhs)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_UnaryNegation(a)
end

---@param a : CS.UnityEngine.Vector3
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_Multiply(a, d)
end

---@param d : CS.System.Single
---@param a : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_Multiply(d, a)
end

---@param a : CS.UnityEngine.Vector3
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.op_Division(a, d)
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Vector3.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector3
---@param rhs : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Vector3.op_Inequality(lhs, rhs)
end

---@return CS.System.String
function CS.UnityEngine.Vector3:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Vector3:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Vector3:ToString(format, formatProvider)
end

---@param from : CS.UnityEngine.Vector3
---@param to : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Vector3.AngleBetween(from, to)
end

---@param excludeThis : CS.UnityEngine.Vector3
---@param fromThat : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3.Exclude(excludeThis, fromThat)
end