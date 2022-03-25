---@class CS.UnityEngine.Rendering.SortingSettings : CS.System.ValueType
CS.UnityEngine.Rendering.SortingSettings = {}

---@property readwrite CS.UnityEngine.Rendering.SortingSettings.worldToCameraMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.SortingSettings.worldToCameraMatrix = nil

---@property readwrite CS.UnityEngine.Rendering.SortingSettings.cameraPosition : CS.UnityEngine.Vector3
CS.UnityEngine.Rendering.SortingSettings.cameraPosition = nil

---@property readwrite CS.UnityEngine.Rendering.SortingSettings.customAxis : CS.UnityEngine.Vector3
CS.UnityEngine.Rendering.SortingSettings.customAxis = nil

---@property readwrite CS.UnityEngine.Rendering.SortingSettings.criteria : CS.UnityEngine.Rendering.SortingCriteria
CS.UnityEngine.Rendering.SortingSettings.criteria = nil

---@property readwrite CS.UnityEngine.Rendering.SortingSettings.distanceMetric : CS.UnityEngine.Rendering.DistanceMetric
CS.UnityEngine.Rendering.SortingSettings.distanceMetric = nil

---@param camera : CS.UnityEngine.Camera
---@return CS.UnityEngine.Rendering.SortingSettings
function CS.UnityEngine.Rendering.SortingSettings(camera)
end

---@param other : CS.UnityEngine.Rendering.SortingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SortingSettings:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SortingSettings:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.SortingSettings:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.SortingSettings
---@param right : CS.UnityEngine.Rendering.SortingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SortingSettings.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.SortingSettings
---@param right : CS.UnityEngine.Rendering.SortingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SortingSettings.op_Inequality(left, right)
end