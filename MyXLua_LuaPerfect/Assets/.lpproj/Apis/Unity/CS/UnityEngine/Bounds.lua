---@class CS.UnityEngine.Bounds : CS.System.ValueType
CS.UnityEngine.Bounds = {}

---@property readwrite CS.UnityEngine.Bounds.center : CS.UnityEngine.Vector3
CS.UnityEngine.Bounds.center = nil

---@property readwrite CS.UnityEngine.Bounds.size : CS.UnityEngine.Vector3
CS.UnityEngine.Bounds.size = nil

---@property readwrite CS.UnityEngine.Bounds.extents : CS.UnityEngine.Vector3
CS.UnityEngine.Bounds.extents = nil

---@property readwrite CS.UnityEngine.Bounds.min : CS.UnityEngine.Vector3
CS.UnityEngine.Bounds.min = nil

---@property readwrite CS.UnityEngine.Bounds.max : CS.UnityEngine.Vector3
CS.UnityEngine.Bounds.max = nil

---@param center : CS.UnityEngine.Vector3
---@param size : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Bounds
function CS.UnityEngine.Bounds(center, size)
end

---@return CS.System.Int32
function CS.UnityEngine.Bounds:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:Equals(other)
end

---@param other : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:Equals(other)
end

---@param lhs : CS.UnityEngine.Bounds
---@param rhs : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.Bounds.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Bounds
---@param rhs : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.Bounds.op_Inequality(lhs, rhs)
end

---@param min : CS.UnityEngine.Vector3
---@param max : CS.UnityEngine.Vector3
function CS.UnityEngine.Bounds:SetMinMax(min, max)
end

---@param point : CS.UnityEngine.Vector3
function CS.UnityEngine.Bounds:Encapsulate(point)
end

---@param bounds : CS.UnityEngine.Bounds
function CS.UnityEngine.Bounds:Encapsulate(bounds)
end

---@param amount : CS.System.Single
function CS.UnityEngine.Bounds:Expand(amount)
end

---@param amount : CS.UnityEngine.Vector3
function CS.UnityEngine.Bounds:Expand(amount)
end

---@param bounds : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:Intersects(bounds)
end

---@param ray : CS.UnityEngine.Ray
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:IntersectRay(ray)
end

---@param ray : CS.UnityEngine.Ray
---@param distance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:IntersectRay(ray, distance)
end

---@return CS.System.String
function CS.UnityEngine.Bounds:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Bounds:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Bounds:ToString(format, formatProvider)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Bounds:Contains(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Bounds:SqrDistance(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Bounds:ClosestPoint(point)
end