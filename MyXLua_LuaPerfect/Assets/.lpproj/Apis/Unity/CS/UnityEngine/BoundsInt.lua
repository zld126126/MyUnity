---@class CS.UnityEngine.BoundsInt : CS.System.ValueType
CS.UnityEngine.BoundsInt = {}

---@property readwrite CS.UnityEngine.BoundsInt.x : CS.System.Int32
CS.UnityEngine.BoundsInt.x = nil

---@property readwrite CS.UnityEngine.BoundsInt.y : CS.System.Int32
CS.UnityEngine.BoundsInt.y = nil

---@property readwrite CS.UnityEngine.BoundsInt.z : CS.System.Int32
CS.UnityEngine.BoundsInt.z = nil

---@property readonly CS.UnityEngine.BoundsInt.center : CS.UnityEngine.Vector3
CS.UnityEngine.BoundsInt.center = nil

---@property readwrite CS.UnityEngine.BoundsInt.min : CS.UnityEngine.Vector3Int
CS.UnityEngine.BoundsInt.min = nil

---@property readwrite CS.UnityEngine.BoundsInt.max : CS.UnityEngine.Vector3Int
CS.UnityEngine.BoundsInt.max = nil

---@property readwrite CS.UnityEngine.BoundsInt.xMin : CS.System.Int32
CS.UnityEngine.BoundsInt.xMin = nil

---@property readwrite CS.UnityEngine.BoundsInt.yMin : CS.System.Int32
CS.UnityEngine.BoundsInt.yMin = nil

---@property readwrite CS.UnityEngine.BoundsInt.zMin : CS.System.Int32
CS.UnityEngine.BoundsInt.zMin = nil

---@property readwrite CS.UnityEngine.BoundsInt.xMax : CS.System.Int32
CS.UnityEngine.BoundsInt.xMax = nil

---@property readwrite CS.UnityEngine.BoundsInt.yMax : CS.System.Int32
CS.UnityEngine.BoundsInt.yMax = nil

---@property readwrite CS.UnityEngine.BoundsInt.zMax : CS.System.Int32
CS.UnityEngine.BoundsInt.zMax = nil

---@property readwrite CS.UnityEngine.BoundsInt.position : CS.UnityEngine.Vector3Int
CS.UnityEngine.BoundsInt.position = nil

---@property readwrite CS.UnityEngine.BoundsInt.size : CS.UnityEngine.Vector3Int
CS.UnityEngine.BoundsInt.size = nil

---@property readonly CS.UnityEngine.BoundsInt.allPositionsWithin : CS.UnityEngine.PositionEnumerator
CS.UnityEngine.BoundsInt.allPositionsWithin = nil

---@param xMin : CS.System.Int32
---@param yMin : CS.System.Int32
---@param zMin : CS.System.Int32
---@param sizeX : CS.System.Int32
---@param sizeY : CS.System.Int32
---@param sizeZ : CS.System.Int32
---@return CS.UnityEngine.BoundsInt
function CS.UnityEngine.BoundsInt(xMin, yMin, zMin, sizeX, sizeY, sizeZ)
end

---@param position : CS.UnityEngine.Vector3Int
---@param size : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.BoundsInt
function CS.UnityEngine.BoundsInt(position, size)
end

---@param minPosition : CS.UnityEngine.Vector3Int
---@param maxPosition : CS.UnityEngine.Vector3Int
function CS.UnityEngine.BoundsInt:SetMinMax(minPosition, maxPosition)
end

---@param bounds : CS.UnityEngine.BoundsInt
function CS.UnityEngine.BoundsInt:ClampToBounds(bounds)
end

---@param position : CS.UnityEngine.Vector3Int
---@return CS.System.Boolean
function CS.UnityEngine.BoundsInt:Contains(position)
end

---@return CS.System.String
function CS.UnityEngine.BoundsInt:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.BoundsInt:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.BoundsInt:ToString(format, formatProvider)
end

---@param lhs : CS.UnityEngine.BoundsInt
---@param rhs : CS.UnityEngine.BoundsInt
---@return CS.System.Boolean
function CS.UnityEngine.BoundsInt.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.BoundsInt
---@param rhs : CS.UnityEngine.BoundsInt
---@return CS.System.Boolean
function CS.UnityEngine.BoundsInt.op_Inequality(lhs, rhs)
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.BoundsInt:Equals(other)
end

---@param other : CS.UnityEngine.BoundsInt
---@return CS.System.Boolean
function CS.UnityEngine.BoundsInt:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.BoundsInt:GetHashCode()
end