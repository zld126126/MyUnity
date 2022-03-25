---@class CS.UnityEngine.Vector4 : CS.System.ValueType
CS.UnityEngine.Vector4 = {}

---@field public CS.UnityEngine.Vector4.kEpsilon : CS.System.Single
CS.UnityEngine.Vector4.kEpsilon = nil

---@field public CS.UnityEngine.Vector4.x : CS.System.Single
CS.UnityEngine.Vector4.x = nil

---@field public CS.UnityEngine.Vector4.y : CS.System.Single
CS.UnityEngine.Vector4.y = nil

---@field public CS.UnityEngine.Vector4.z : CS.System.Single
CS.UnityEngine.Vector4.z = nil

---@field public CS.UnityEngine.Vector4.w : CS.System.Single
CS.UnityEngine.Vector4.w = nil

---@property readwrite CS.UnityEngine.Vector4.Item : CS.System.Single
CS.UnityEngine.Vector4.Item = nil

---@property readonly CS.UnityEngine.Vector4.normalized : CS.UnityEngine.Vector4
CS.UnityEngine.Vector4.normalized = nil

---@property readonly CS.UnityEngine.Vector4.magnitude : CS.System.Single
CS.UnityEngine.Vector4.magnitude = nil

---@property readonly CS.UnityEngine.Vector4.sqrMagnitude : CS.System.Single
CS.UnityEngine.Vector4.sqrMagnitude = nil

---@property readonly CS.UnityEngine.Vector4.zero : CS.UnityEngine.Vector4
CS.UnityEngine.Vector4.zero = nil

---@property readonly CS.UnityEngine.Vector4.one : CS.UnityEngine.Vector4
CS.UnityEngine.Vector4.one = nil

---@property readonly CS.UnityEngine.Vector4.positiveInfinity : CS.UnityEngine.Vector4
CS.UnityEngine.Vector4.positiveInfinity = nil

---@property readonly CS.UnityEngine.Vector4.negativeInfinity : CS.UnityEngine.Vector4
CS.UnityEngine.Vector4.negativeInfinity = nil

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param w : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4(x, y, z, w)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4(x, y, z)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4(x, y)
end

---@param newX : CS.System.Single
---@param newY : CS.System.Single
---@param newZ : CS.System.Single
---@param newW : CS.System.Single
function CS.UnityEngine.Vector4:Set(newX, newY, newZ, newW)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@param t : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.LerpUnclamped(a, b, t)
end

---@param current : CS.UnityEngine.Vector4
---@param target : CS.UnityEngine.Vector4
---@param maxDistanceDelta : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.MoveTowards(current, target, maxDistanceDelta)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Scale(a, b)
end

---@param scale : CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4:Scale(scale)
end

---@return CS.System.Int32
function CS.UnityEngine.Vector4:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Vector4:Equals(other)
end

---@param other : CS.UnityEngine.Vector4
---@return CS.System.Boolean
function CS.UnityEngine.Vector4:Equals(other)
end

---@param a : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Normalize(a)
end

function CS.UnityEngine.Vector4:Normalize()
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.System.Single
function CS.UnityEngine.Vector4.Dot(a, b)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Project(a, b)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.System.Single
function CS.UnityEngine.Vector4.Distance(a, b)
end

---@param a : CS.UnityEngine.Vector4
---@return CS.System.Single
function CS.UnityEngine.Vector4.Magnitude(a)
end

---@param lhs : CS.UnityEngine.Vector4
---@param rhs : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Min(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector4
---@param rhs : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.Max(lhs, rhs)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Vector4
---@param b : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_UnaryNegation(a)
end

---@param a : CS.UnityEngine.Vector4
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Multiply(a, d)
end

---@param d : CS.System.Single
---@param a : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Multiply(d, a)
end

---@param a : CS.UnityEngine.Vector4
---@param d : CS.System.Single
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Division(a, d)
end

---@param lhs : CS.UnityEngine.Vector4
---@param rhs : CS.UnityEngine.Vector4
---@return CS.System.Boolean
function CS.UnityEngine.Vector4.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector4
---@param rhs : CS.UnityEngine.Vector4
---@return CS.System.Boolean
function CS.UnityEngine.Vector4.op_Inequality(lhs, rhs)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector4.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Vector4.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector4.op_Implicit(v)
end

---@return CS.System.String
function CS.UnityEngine.Vector4:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Vector4:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Vector4:ToString(format, formatProvider)
end

---@param a : CS.UnityEngine.Vector4
---@return CS.System.Single
function CS.UnityEngine.Vector4.SqrMagnitude(a)
end

---@return CS.System.Single
function CS.UnityEngine.Vector4:SqrMagnitude()
end