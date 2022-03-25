---@class CS.UnityEngine.Rendering.BatchCullingContext : CS.System.ValueType
CS.UnityEngine.Rendering.BatchCullingContext = {}

---@field public CS.UnityEngine.Rendering.BatchCullingContext.cullingPlanes : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.BatchCullingContext.cullingPlanes = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.batchVisibility : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.BatchCullingContext.batchVisibility = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.visibleIndices : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.BatchCullingContext.visibleIndices = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.visibleIndicesY : CS.Unity.Collections.NativeArray
CS.UnityEngine.Rendering.BatchCullingContext.visibleIndicesY = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.lodParameters : CS.UnityEngine.Rendering.LODParameters
CS.UnityEngine.Rendering.BatchCullingContext.lodParameters = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.cullingMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.BatchCullingContext.cullingMatrix = nil

---@field public CS.UnityEngine.Rendering.BatchCullingContext.nearPlane : CS.System.Single
CS.UnityEngine.Rendering.BatchCullingContext.nearPlane = nil

---@param inCullingPlanes : CS.Unity.Collections.NativeArray
---@param inOutBatchVisibility : CS.Unity.Collections.NativeArray
---@param outVisibleIndices : CS.Unity.Collections.NativeArray
---@param inLodParameters : CS.UnityEngine.Rendering.LODParameters
---@return CS.UnityEngine.Rendering.BatchCullingContext
function CS.UnityEngine.Rendering.BatchCullingContext(inCullingPlanes, inOutBatchVisibility, outVisibleIndices, inLodParameters)
end

---@param inCullingPlanes : CS.Unity.Collections.NativeArray
---@param inOutBatchVisibility : CS.Unity.Collections.NativeArray
---@param outVisibleIndices : CS.Unity.Collections.NativeArray
---@param inLodParameters : CS.UnityEngine.Rendering.LODParameters
---@param inCullingMatrix : CS.UnityEngine.Matrix4x4
---@param inNearPlane : CS.System.Single
---@return CS.UnityEngine.Rendering.BatchCullingContext
function CS.UnityEngine.Rendering.BatchCullingContext(inCullingPlanes, inOutBatchVisibility, outVisibleIndices, inLodParameters, inCullingMatrix, inNearPlane)
end