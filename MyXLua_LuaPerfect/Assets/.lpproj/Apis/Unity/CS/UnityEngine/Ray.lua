---@class CS.UnityEngine.Ray : CS.System.ValueType
CS.UnityEngine.Ray = {}

---@property readwrite CS.UnityEngine.Ray.origin : CS.UnityEngine.Vector3
CS.UnityEngine.Ray.origin = nil

---@property readwrite CS.UnityEngine.Ray.direction : CS.UnityEngine.Vector3
CS.UnityEngine.Ray.direction = nil

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Ray
function CS.UnityEngine.Ray(origin, direction)
end

---@param distance : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Ray:GetPoint(distance)
end

---@return CS.System.String
function CS.UnityEngine.Ray:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Ray:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Ray:ToString(format, formatProvider)
end