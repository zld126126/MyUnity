---@class CS.UnityEngine.Ray2D : CS.System.ValueType
CS.UnityEngine.Ray2D = {}

---@property readwrite CS.UnityEngine.Ray2D.origin : CS.UnityEngine.Vector2
CS.UnityEngine.Ray2D.origin = nil

---@property readwrite CS.UnityEngine.Ray2D.direction : CS.UnityEngine.Vector2
CS.UnityEngine.Ray2D.direction = nil

---@param origin : CS.UnityEngine.Vector2
---@param direction : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Ray2D
function CS.UnityEngine.Ray2D(origin, direction)
end

---@param distance : CS.System.Single
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Ray2D:GetPoint(distance)
end

---@return CS.System.String
function CS.UnityEngine.Ray2D:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Ray2D:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Ray2D:ToString(format, formatProvider)
end