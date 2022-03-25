---@class CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure : CS.System.Object
CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure = {}

---@param settings : CS.UnityEngine.Experimental.Rendering.RASSettings
---@return CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure(settings)
end

---@return CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure()
end

function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Dispose()
end

function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Release()
end

function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Build()
end

function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Update()
end

---@param relativeOrigin : CS.UnityEngine.Vector3
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Build(relativeOrigin)
end

---@param relativeOrigin : CS.UnityEngine.Vector3
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Update(relativeOrigin)
end

---@param targetRenderer : CS.UnityEngine.Renderer
---@param subMeshMask : CS.System.Boolean[]
---@param subMeshTransparencyFlags : CS.System.Boolean[]
---@param enableTriangleCulling : CS.System.Boolean
---@param frontTriangleCounterClockwise : CS.System.Boolean
---@param mask : CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:AddInstance(targetRenderer, subMeshMask, subMeshTransparencyFlags, enableTriangleCulling, frontTriangleCounterClockwise, mask)
end

---@param aabbBuffer : CS.UnityEngine.GraphicsBuffer
---@param numElements : CS.System.UInt32
---@param material : CS.UnityEngine.Material
---@param isCutOff : CS.System.Boolean
---@param enableTriangleCulling : CS.System.Boolean
---@param frontTriangleCounterClockwise : CS.System.Boolean
---@param mask : CS.System.UInt32
---@param reuseBounds : CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:AddInstance(aabbBuffer, numElements, material, isCutOff, enableTriangleCulling, frontTriangleCounterClockwise, mask, reuseBounds)
end

---@param aabbBuffer : CS.UnityEngine.GraphicsBuffer
---@param numElements : CS.System.UInt32
---@param material : CS.UnityEngine.Material
---@param instanceTransform : CS.UnityEngine.Matrix4x4
---@param isCutOff : CS.System.Boolean
---@param enableTriangleCulling : CS.System.Boolean
---@param frontTriangleCounterClockwise : CS.System.Boolean
---@param mask : CS.System.UInt32
---@param reuseBounds : CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:AddInstance(aabbBuffer, numElements, material, instanceTransform, isCutOff, enableTriangleCulling, frontTriangleCounterClockwise, mask, reuseBounds)
end

---@param renderer : CS.UnityEngine.Renderer
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:UpdateInstanceTransform(renderer)
end

---@return CS.System.UInt64
function CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:GetSize()
end