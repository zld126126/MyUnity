---@class CS.UnityEngine.Rendering.CullingResults : CS.System.ValueType
CS.UnityEngine.Rendering.CullingResults = {}

---@property readonly CS.UnityEngine.Rendering.CullingResults.visibleLights : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.CullingResults.visibleLights = nil

---@property readonly CS.UnityEngine.Rendering.CullingResults.visibleOffscreenVertexLights : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.CullingResults.visibleOffscreenVertexLights = nil

---@property readonly CS.UnityEngine.Rendering.CullingResults.visibleReflectionProbes : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.CullingResults.visibleReflectionProbes = nil

---@property readonly CS.UnityEngine.Rendering.CullingResults.lightIndexCount : CS.System.Int32
CS.UnityEngine.Rendering.CullingResults.lightIndexCount = nil

---@property readonly CS.UnityEngine.Rendering.CullingResults.reflectionProbeIndexCount : CS.System.Int32
CS.UnityEngine.Rendering.CullingResults.reflectionProbeIndexCount = nil

---@property readonly CS.UnityEngine.Rendering.CullingResults.lightAndReflectionProbeIndexCount : CS.System.Int32
CS.UnityEngine.Rendering.CullingResults.lightAndReflectionProbeIndexCount = nil

---@param computeBuffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CullingResults:FillLightAndReflectionProbeIndices(computeBuffer)
end

---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CullingResults:FillLightAndReflectionProbeIndices(buffer)
end

---@param allocator : CS.Unity.Collections.Allocator
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.CullingResults:GetLightIndexMap(allocator)
end

---@param lightIndexMap : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.CullingResults:SetLightIndexMap(lightIndexMap)
end

---@param allocator : CS.Unity.Collections.Allocator
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.CullingResults:GetReflectionProbeIndexMap(allocator)
end

---@param lightIndexMap : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.CullingResults:SetReflectionProbeIndexMap(lightIndexMap)
end

---@param lightIndex : CS.System.Int32
---@param outBounds : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:GetShadowCasterBounds(lightIndex, outBounds)
end

---@param activeLightIndex : CS.System.Int32
---@param viewMatrix : CS.UnityEngine.Matrix4x4
---@param projMatrix : CS.UnityEngine.Matrix4x4
---@param shadowSplitData : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:ComputeSpotShadowMatricesAndCullingPrimitives(activeLightIndex, viewMatrix, projMatrix, shadowSplitData)
end

---@param activeLightIndex : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
---@param fovBias : CS.System.Single
---@param viewMatrix : CS.UnityEngine.Matrix4x4
---@param projMatrix : CS.UnityEngine.Matrix4x4
---@param shadowSplitData : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:ComputePointShadowMatricesAndCullingPrimitives(activeLightIndex, cubemapFace, fovBias, viewMatrix, projMatrix, shadowSplitData)
end

---@param activeLightIndex : CS.System.Int32
---@param splitIndex : CS.System.Int32
---@param splitCount : CS.System.Int32
---@param splitRatio : CS.UnityEngine.Vector3
---@param shadowResolution : CS.System.Int32
---@param shadowNearPlaneOffset : CS.System.Single
---@param viewMatrix : CS.UnityEngine.Matrix4x4
---@param projMatrix : CS.UnityEngine.Matrix4x4
---@param shadowSplitData : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:ComputeDirectionalShadowMatricesAndCullingPrimitives(activeLightIndex, splitIndex, splitCount, splitRatio, shadowResolution, shadowNearPlaneOffset, viewMatrix, projMatrix, shadowSplitData)
end

---@param other : CS.UnityEngine.Rendering.CullingResults
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.CullingResults:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.CullingResults
---@param right : CS.UnityEngine.Rendering.CullingResults
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.CullingResults
---@param right : CS.UnityEngine.Rendering.CullingResults
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.CullingResults.op_Inequality(left, right)
end