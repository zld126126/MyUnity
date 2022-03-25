---@class CS.UnityEngine.Rendering.BatchRendererGroup : CS.System.Object
CS.UnityEngine.Rendering.BatchRendererGroup = {}

---@param cullingCallback : CS.UnityEngine.Rendering.OnPerformCulling
---@return CS.UnityEngine.Rendering.BatchRendererGroup
function CS.UnityEngine.Rendering.BatchRendererGroup(cullingCallback)
end

function CS.UnityEngine.Rendering.BatchRendererGroup:Dispose()
end

---@param mesh : CS.UnityEngine.Mesh
---@param subMeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param invertCulling : CS.System.Boolean
---@param bounds : CS.UnityEngine.Bounds
---@param instanceCount : CS.System.Int32
---@param customProps : CS.UnityEngine.MaterialPropertyBlock
---@param associatedSceneObject : CS.UnityEngine.GameObject
---@return CS.System.Int32
function CS.UnityEngine.Rendering.BatchRendererGroup:AddBatch(mesh, subMeshIndex, material, layer, castShadows, receiveShadows, invertCulling, bounds, instanceCount, customProps, associatedSceneObject)
end

---@param mesh : CS.UnityEngine.Mesh
---@param subMeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param invertCulling : CS.System.Boolean
---@param bounds : CS.UnityEngine.Bounds
---@param instanceCount : CS.System.Int32
---@param customProps : CS.UnityEngine.MaterialPropertyBlock
---@param associatedSceneObject : CS.UnityEngine.GameObject
---@param sceneCullingMask : CS.System.UInt64
---@return CS.System.Int32
function CS.UnityEngine.Rendering.BatchRendererGroup:AddBatch(mesh, subMeshIndex, material, layer, castShadows, receiveShadows, invertCulling, bounds, instanceCount, customProps, associatedSceneObject, sceneCullingMask)
end

---@param mesh : CS.UnityEngine.Mesh
---@param subMeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param invertCulling : CS.System.Boolean
---@param bounds : CS.UnityEngine.Bounds
---@param instanceCount : CS.System.Int32
---@param customProps : CS.UnityEngine.MaterialPropertyBlock
---@param associatedSceneObject : CS.UnityEngine.GameObject
---@param sceneCullingMask : CS.System.UInt64
---@param renderingLayerMask : CS.System.UInt32
---@return CS.System.Int32
function CS.UnityEngine.Rendering.BatchRendererGroup:AddBatch(mesh, subMeshIndex, material, layer, castShadows, receiveShadows, invertCulling, bounds, instanceCount, customProps, associatedSceneObject, sceneCullingMask, renderingLayerMask)
end

---@param batchIndex : CS.System.Int32
---@param flags : CS.System.UInt64
function CS.UnityEngine.Rendering.BatchRendererGroup:SetBatchFlags(batchIndex, flags)
end

---@param batchIndex : CS.System.Int32
---@param cbufferLengths : CS.Unity.Collections.NativeArray
---@param cbufferMetadata : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:SetBatchPropertyMetadata(batchIndex, cbufferLengths, cbufferMetadata)
end

---@param batchIndex : CS.System.Int32
---@param instanceCount : CS.System.Int32
---@param customProps : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.BatchRendererGroup:SetInstancingData(batchIndex, instanceCount, customProps)
end

---@param batchIndex : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchMatrices(batchIndex)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.String
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchScalarArrayInt(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.String
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchScalarArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.String
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchVectorArrayInt(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.String
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchVectorArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.String
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchMatrixArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchScalarArrayInt(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchScalarArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchVectorArrayInt(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchVectorArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param propertyName : CS.System.Int32
---@return CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.BatchRendererGroup:GetBatchMatrixArray(batchIndex, propertyName)
end

---@param batchIndex : CS.System.Int32
---@param bounds : CS.UnityEngine.Bounds
function CS.UnityEngine.Rendering.BatchRendererGroup:SetBatchBounds(batchIndex, bounds)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.BatchRendererGroup:GetNumBatches()
end

---@param index : CS.System.Int32
function CS.UnityEngine.Rendering.BatchRendererGroup:RemoveBatch(index)
end

---@param enabled : CS.System.Boolean
function CS.UnityEngine.Rendering.BatchRendererGroup:EnableVisibleIndicesYArray(enabled)
end