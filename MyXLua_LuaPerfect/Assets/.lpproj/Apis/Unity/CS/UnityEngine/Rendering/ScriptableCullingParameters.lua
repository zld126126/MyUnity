---@class CS.UnityEngine.Rendering.ScriptableCullingParameters : CS.System.ValueType
CS.UnityEngine.Rendering.ScriptableCullingParameters = {}

---@field public CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumCullingPlaneCount : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumCullingPlaneCount = nil

---@field public CS.UnityEngine.Rendering.ScriptableCullingParameters.layerCount : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.layerCount = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumVisibleLights : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumVisibleLights = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingPlaneCount : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingPlaneCount = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.isOrthographic : CS.System.Boolean
CS.UnityEngine.Rendering.ScriptableCullingParameters.isOrthographic = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.lodParameters : CS.UnityEngine.Rendering.LODParameters
CS.UnityEngine.Rendering.ScriptableCullingParameters.lodParameters = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingMask : CS.System.UInt32
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingMask = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingMatrix = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.origin : CS.UnityEngine.Vector3
CS.UnityEngine.Rendering.ScriptableCullingParameters.origin = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.shadowDistance : CS.System.Single
CS.UnityEngine.Rendering.ScriptableCullingParameters.shadowDistance = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingOptions : CS.UnityEngine.Rendering.CullingOptions
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingOptions = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.reflectionProbeSortingCriteria : CS.UnityEngine.Rendering.ReflectionProbeSortingCriteria
CS.UnityEngine.Rendering.ScriptableCullingParameters.reflectionProbeSortingCriteria = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.cameraProperties : CS.UnityEngine.Rendering.CameraProperties
CS.UnityEngine.Rendering.ScriptableCullingParameters.cameraProperties = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoViewMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoViewMatrix = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoProjectionMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoProjectionMatrix = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoSeparationDistance : CS.System.Single
CS.UnityEngine.Rendering.ScriptableCullingParameters.stereoSeparationDistance = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.accurateOcclusionThreshold : CS.System.Single
CS.UnityEngine.Rendering.ScriptableCullingParameters.accurateOcclusionThreshold = nil

---@property readwrite CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumPortalCullingJobs : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.maximumPortalCullingJobs = nil

---@property readonly CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingJobsLowerLimit : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingJobsLowerLimit = nil

---@property readonly CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingJobsUpperLimit : CS.System.Int32
CS.UnityEngine.Rendering.ScriptableCullingParameters.cullingJobsUpperLimit = nil

---@param layerIndex : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.Rendering.ScriptableCullingParameters:GetLayerCullingDistance(layerIndex)
end

---@param layerIndex : CS.System.Int32
---@param distance : CS.System.Single
function CS.UnityEngine.Rendering.ScriptableCullingParameters:SetLayerCullingDistance(layerIndex, distance)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Rendering.ScriptableCullingParameters:GetCullingPlane(index)
end

---@param index : CS.System.Int32
---@param plane : CS.UnityEngine.Plane
function CS.UnityEngine.Rendering.ScriptableCullingParameters:SetCullingPlane(index, plane)
end

---@param other : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableCullingParameters:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableCullingParameters:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableCullingParameters:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@param right : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableCullingParameters.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@param right : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableCullingParameters.op_Inequality(left, right)
end