---@class CS.UnityEngine.Quaternion : CS.System.ValueType
CS.UnityEngine.Quaternion = {}

---@field public CS.UnityEngine.Quaternion.x : CS.System.Single
CS.UnityEngine.Quaternion.x = nil

---@field public CS.UnityEngine.Quaternion.y : CS.System.Single
CS.UnityEngine.Quaternion.y = nil

---@field public CS.UnityEngine.Quaternion.z : CS.System.Single
CS.UnityEngine.Quaternion.z = nil

---@field public CS.UnityEngine.Quaternion.w : CS.System.Single
CS.UnityEngine.Quaternion.w = nil

---@field public CS.UnityEngine.Quaternion.kEpsilon : CS.System.Single
CS.UnityEngine.Quaternion.kEpsilon = nil

---@property readwrite CS.UnityEngine.Quaternion.Item : CS.System.Single
CS.UnityEngine.Quaternion.Item = nil

---@property readonly CS.UnityEngine.Quaternion.identity : CS.UnityEngine.Quaternion
CS.UnityEngine.Quaternion.identity = nil

---@property readwrite CS.UnityEngine.Quaternion.eulerAngles : CS.UnityEngine.Vector3
CS.UnityEngine.Quaternion.eulerAngles = nil

---@property readonly CS.UnityEngine.Quaternion.normalized : CS.UnityEngine.Quaternion
CS.UnityEngine.Quaternion.normalized = nil

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param w : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion(x, y, z, w)
end

---@param fromDirection : CS.UnityEngine.Vector3
---@param toDirection : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.FromToRotation(fromDirection, toDirection)
end

---@param rotation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Inverse(rotation)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@param t : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Slerp(a, b, t)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@param t : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.SlerpUnclamped(a, b, t)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@param t : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@param t : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.LerpUnclamped(a, b, t)
end

---@param angle : CS.System.Single
---@param axis : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.AngleAxis(angle, axis)
end

---@param forward : CS.UnityEngine.Vector3
---@param upwards : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.LookRotation(forward, upwards)
end

---@param forward : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.LookRotation(forward)
end

---@param newX : CS.System.Single
---@param newY : CS.System.Single
---@param newZ : CS.System.Single
---@param newW : CS.System.Single
function CS.UnityEngine.Quaternion:Set(newX, newY, newZ, newW)
end

---@param lhs : CS.UnityEngine.Quaternion
---@param rhs : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.op_Multiply(lhs, rhs)
end

---@param rotation : CS.UnityEngine.Quaternion
---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion.op_Multiply(rotation, point)
end

---@param lhs : CS.UnityEngine.Quaternion
---@param rhs : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Quaternion.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Quaternion
---@param rhs : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Quaternion.op_Inequality(lhs, rhs)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@return CS.System.Single
function CS.UnityEngine.Quaternion.Dot(a, b)
end

---@param view : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:SetLookRotation(view)
end

---@param view : CS.UnityEngine.Vector3
---@param up : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:SetLookRotation(view, up)
end

---@param a : CS.UnityEngine.Quaternion
---@param b : CS.UnityEngine.Quaternion
---@return CS.System.Single
function CS.UnityEngine.Quaternion.Angle(a, b)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Euler(x, y, z)
end

---@param euler : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Euler(euler)
end

---@param angle : CS.System.Single
---@param axis : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:ToAngleAxis(angle, axis)
end

---@param fromDirection : CS.UnityEngine.Vector3
---@param toDirection : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:SetFromToRotation(fromDirection, toDirection)
end

---@param from : CS.UnityEngine.Quaternion
---@param to : CS.UnityEngine.Quaternion
---@param maxDegreesDelta : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.RotateTowards(from, to, maxDegreesDelta)
end

---@param q : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.Normalize(q)
end

function CS.UnityEngine.Quaternion:Normalize()
end

---@return CS.System.Int32
function CS.UnityEngine.Quaternion:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Quaternion:Equals(other)
end

---@param other : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Quaternion:Equals(other)
end

---@return CS.System.String
function CS.UnityEngine.Quaternion:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Quaternion:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Quaternion:ToString(format, formatProvider)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.EulerRotation(x, y, z)
end

---@param euler : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.EulerRotation(euler)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Quaternion:SetEulerRotation(x, y, z)
end

---@param euler : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:SetEulerRotation(euler)
end

---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:ToEuler()
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.EulerAngles(x, y, z)
end

---@param euler : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.EulerAngles(euler)
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Quaternion:ToAxisAngle(axis, angle)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Quaternion:SetEulerAngles(x, y, z)
end

---@param euler : CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:SetEulerAngles(euler)
end

---@param rotation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion.ToEulerAngles(rotation)
end

---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Quaternion:ToEulerAngles()
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Quaternion:SetAxisAngle(axis, angle)
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
---@return CS.UnityEngine.Quaternion
function CS.UnityEngine.Quaternion.AxisAngle(axis, angle)
end