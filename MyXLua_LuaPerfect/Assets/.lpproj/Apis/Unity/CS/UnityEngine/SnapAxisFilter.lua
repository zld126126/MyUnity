---@class CS.UnityEngine.SnapAxisFilter : CS.System.ValueType
CS.UnityEngine.SnapAxisFilter = {}

---@field public CS.UnityEngine.SnapAxisFilter.all : CS.UnityEngine.SnapAxisFilter
CS.UnityEngine.SnapAxisFilter.all = nil

---@property readonly CS.UnityEngine.SnapAxisFilter.x : CS.System.Single
CS.UnityEngine.SnapAxisFilter.x = nil

---@property readonly CS.UnityEngine.SnapAxisFilter.y : CS.System.Single
CS.UnityEngine.SnapAxisFilter.y = nil

---@property readonly CS.UnityEngine.SnapAxisFilter.z : CS.System.Single
CS.UnityEngine.SnapAxisFilter.z = nil

---@property readonly CS.UnityEngine.SnapAxisFilter.active : CS.System.Int32
CS.UnityEngine.SnapAxisFilter.active = nil

---@property readwrite CS.UnityEngine.SnapAxisFilter.Item : CS.System.Single
CS.UnityEngine.SnapAxisFilter.Item = nil

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter(v)
end

---@param axis : CS.UnityEngine.SnapAxis
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter(axis)
end

---@return CS.System.String
function CS.UnityEngine.SnapAxisFilter:ToString()
end

---@param mask : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.SnapAxisFilter.op_Implicit(mask)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter.op_Explicit(v)
end

---@param mask : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.SnapAxis
function CS.UnityEngine.SnapAxisFilter.op_Explicit(mask)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter.op_BitwiseOr(left, right)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter.op_BitwiseAnd(left, right)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter.op_ExclusiveOr(left, right)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.SnapAxisFilter
function CS.UnityEngine.SnapAxisFilter.op_OnesComplement(left)
end

---@param mask : CS.UnityEngine.SnapAxisFilter
---@param value : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.SnapAxisFilter.op_Multiply(mask, value)
end

---@param mask : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.SnapAxisFilter.op_Multiply(mask, right)
end

---@param rotation : CS.UnityEngine.Quaternion
---@param mask : CS.UnityEngine.SnapAxisFilter
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.SnapAxisFilter.op_Multiply(rotation, mask)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.SnapAxisFilter
---@return CS.System.Boolean
function CS.UnityEngine.SnapAxisFilter.op_Equality(left, right)
end

---@param left : CS.UnityEngine.SnapAxisFilter
---@param right : CS.UnityEngine.SnapAxisFilter
---@return CS.System.Boolean
function CS.UnityEngine.SnapAxisFilter.op_Inequality(left, right)
end

---@param other : CS.UnityEngine.SnapAxisFilter
---@return CS.System.Boolean
function CS.UnityEngine.SnapAxisFilter:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.SnapAxisFilter:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.SnapAxisFilter:GetHashCode()
end