---@class CS.UnityEngine.RectInt : CS.System.ValueType
CS.UnityEngine.RectInt = {}

---@property readwrite CS.UnityEngine.RectInt.x : CS.System.Int32
CS.UnityEngine.RectInt.x = nil

---@property readwrite CS.UnityEngine.RectInt.y : CS.System.Int32
CS.UnityEngine.RectInt.y = nil

---@property readonly CS.UnityEngine.RectInt.center : CS.UnityEngine.Vector2
CS.UnityEngine.RectInt.center = nil

---@property readwrite CS.UnityEngine.RectInt.min : CS.UnityEngine.Vector2Int
CS.UnityEngine.RectInt.min = nil

---@property readwrite CS.UnityEngine.RectInt.max : CS.UnityEngine.Vector2Int
CS.UnityEngine.RectInt.max = nil

---@property readwrite CS.UnityEngine.RectInt.width : CS.System.Int32
CS.UnityEngine.RectInt.width = nil

---@property readwrite CS.UnityEngine.RectInt.height : CS.System.Int32
CS.UnityEngine.RectInt.height = nil

---@property readwrite CS.UnityEngine.RectInt.xMin : CS.System.Int32
CS.UnityEngine.RectInt.xMin = nil

---@property readwrite CS.UnityEngine.RectInt.yMin : CS.System.Int32
CS.UnityEngine.RectInt.yMin = nil

---@property readwrite CS.UnityEngine.RectInt.xMax : CS.System.Int32
CS.UnityEngine.RectInt.xMax = nil

---@property readwrite CS.UnityEngine.RectInt.yMax : CS.System.Int32
CS.UnityEngine.RectInt.yMax = nil

---@property readwrite CS.UnityEngine.RectInt.position : CS.UnityEngine.Vector2Int
CS.UnityEngine.RectInt.position = nil

---@property readwrite CS.UnityEngine.RectInt.size : CS.UnityEngine.Vector2Int
CS.UnityEngine.RectInt.size = nil

---@property readonly CS.UnityEngine.RectInt.allPositionsWithin : CS.UnityEngine.PositionEnumerator
CS.UnityEngine.RectInt.allPositionsWithin = nil

---@param xMin : CS.System.Int32
---@param yMin : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.UnityEngine.RectInt
function CS.UnityEngine.RectInt(xMin, yMin, width, height)
end

---@param position : CS.UnityEngine.Vector2Int
---@param size : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.RectInt
function CS.UnityEngine.RectInt(position, size)
end

---@param minPosition : CS.UnityEngine.Vector2Int
---@param maxPosition : CS.UnityEngine.Vector2Int
function CS.UnityEngine.RectInt:SetMinMax(minPosition, maxPosition)
end

---@param bounds : CS.UnityEngine.RectInt
function CS.UnityEngine.RectInt:ClampToBounds(bounds)
end

---@param position : CS.UnityEngine.Vector2Int
---@return CS.System.Boolean
function CS.UnityEngine.RectInt:Contains(position)
end

---@param other : CS.UnityEngine.RectInt
---@return CS.System.Boolean
function CS.UnityEngine.RectInt:Overlaps(other)
end

---@return CS.System.String
function CS.UnityEngine.RectInt:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.RectInt:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.RectInt:ToString(format, formatProvider)
end

---@param other : CS.UnityEngine.RectInt
---@return CS.System.Boolean
function CS.UnityEngine.RectInt:Equals(other)
end