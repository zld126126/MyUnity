---@class CS.UnityEngine.Rect : CS.System.ValueType
CS.UnityEngine.Rect = {}

---@property readonly CS.UnityEngine.Rect.zero : CS.UnityEngine.Rect
CS.UnityEngine.Rect.zero = nil

---@property readwrite CS.UnityEngine.Rect.x : CS.System.Single
CS.UnityEngine.Rect.x = nil

---@property readwrite CS.UnityEngine.Rect.y : CS.System.Single
CS.UnityEngine.Rect.y = nil

---@property readwrite CS.UnityEngine.Rect.position : CS.UnityEngine.Vector2
CS.UnityEngine.Rect.position = nil

---@property readwrite CS.UnityEngine.Rect.center : CS.UnityEngine.Vector2
CS.UnityEngine.Rect.center = nil

---@property readwrite CS.UnityEngine.Rect.min : CS.UnityEngine.Vector2
CS.UnityEngine.Rect.min = nil

---@property readwrite CS.UnityEngine.Rect.max : CS.UnityEngine.Vector2
CS.UnityEngine.Rect.max = nil

---@property readwrite CS.UnityEngine.Rect.width : CS.System.Single
CS.UnityEngine.Rect.width = nil

---@property readwrite CS.UnityEngine.Rect.height : CS.System.Single
CS.UnityEngine.Rect.height = nil

---@property readwrite CS.UnityEngine.Rect.size : CS.UnityEngine.Vector2
CS.UnityEngine.Rect.size = nil

---@property readwrite CS.UnityEngine.Rect.xMin : CS.System.Single
CS.UnityEngine.Rect.xMin = nil

---@property readwrite CS.UnityEngine.Rect.yMin : CS.System.Single
CS.UnityEngine.Rect.yMin = nil

---@property readwrite CS.UnityEngine.Rect.xMax : CS.System.Single
CS.UnityEngine.Rect.xMax = nil

---@property readwrite CS.UnityEngine.Rect.yMax : CS.System.Single
CS.UnityEngine.Rect.yMax = nil

---@property readonly CS.UnityEngine.Rect.left : CS.System.Single
CS.UnityEngine.Rect.left = nil

---@property readonly CS.UnityEngine.Rect.right : CS.System.Single
CS.UnityEngine.Rect.right = nil

---@property readonly CS.UnityEngine.Rect.top : CS.System.Single
CS.UnityEngine.Rect.top = nil

---@property readonly CS.UnityEngine.Rect.bottom : CS.System.Single
CS.UnityEngine.Rect.bottom = nil

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param width : CS.System.Single
---@param height : CS.System.Single
---@return CS.UnityEngine.Rect
function CS.UnityEngine.Rect(x, y, width, height)
end

---@param position : CS.UnityEngine.Vector2
---@param size : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Rect
function CS.UnityEngine.Rect(position, size)
end

---@param source : CS.UnityEngine.Rect
---@return CS.UnityEngine.Rect
function CS.UnityEngine.Rect(source)
end

---@param xmin : CS.System.Single
---@param ymin : CS.System.Single
---@param xmax : CS.System.Single
---@param ymax : CS.System.Single
---@return CS.UnityEngine.Rect
function CS.UnityEngine.Rect.MinMaxRect(xmin, ymin, xmax, ymax)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param width : CS.System.Single
---@param height : CS.System.Single
function CS.UnityEngine.Rect:Set(x, y, width, height)
end

---@param point : CS.UnityEngine.Vector2
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Contains(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Contains(point)
end

---@param point : CS.UnityEngine.Vector3
---@param allowInverse : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Contains(point, allowInverse)
end

---@param other : CS.UnityEngine.Rect
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Overlaps(other)
end

---@param other : CS.UnityEngine.Rect
---@param allowInverse : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Overlaps(other, allowInverse)
end

---@param rectangle : CS.UnityEngine.Rect
---@param normalizedRectCoordinates : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Rect.NormalizedToPoint(rectangle, normalizedRectCoordinates)
end

---@param rectangle : CS.UnityEngine.Rect
---@param point : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Rect.PointToNormalized(rectangle, point)
end

---@param lhs : CS.UnityEngine.Rect
---@param rhs : CS.UnityEngine.Rect
---@return CS.System.Boolean
function CS.UnityEngine.Rect.op_Inequality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Rect
---@param rhs : CS.UnityEngine.Rect
---@return CS.System.Boolean
function CS.UnityEngine.Rect.op_Equality(lhs, rhs)
end

---@return CS.System.Int32
function CS.UnityEngine.Rect:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Equals(other)
end

---@param other : CS.UnityEngine.Rect
---@return CS.System.Boolean
function CS.UnityEngine.Rect:Equals(other)
end

---@return CS.System.String
function CS.UnityEngine.Rect:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Rect:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Rect:ToString(format, formatProvider)
end