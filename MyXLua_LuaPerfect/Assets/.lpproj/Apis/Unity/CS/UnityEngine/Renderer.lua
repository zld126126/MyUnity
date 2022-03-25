---@class CS.UnityEngine.Renderer : CS.UnityEngine.Component
CS.UnityEngine.Renderer = {}

---@property readwrite CS.UnityEngine.Renderer.lightmapTilingOffset : CS.UnityEngine.Vector4
CS.UnityEngine.Renderer.lightmapTilingOffset = nil

---@property readwrite CS.UnityEngine.Renderer.lightProbeAnchor : CS.UnityEngine.Transform
CS.UnityEngine.Renderer.lightProbeAnchor = nil

---@property readwrite CS.UnityEngine.Renderer.castShadows : CS.System.Boolean
CS.UnityEngine.Renderer.castShadows = nil

---@property readwrite CS.UnityEngine.Renderer.motionVectors : CS.System.Boolean
CS.UnityEngine.Renderer.motionVectors = nil

---@property readwrite CS.UnityEngine.Renderer.useLightProbes : CS.System.Boolean
CS.UnityEngine.Renderer.useLightProbes = nil

---@property readonly CS.UnityEngine.Renderer.bounds : CS.UnityEngine.Bounds
CS.UnityEngine.Renderer.bounds = nil

---@property readwrite CS.UnityEngine.Renderer.enabled : CS.System.Boolean
CS.UnityEngine.Renderer.enabled = nil

---@property readonly CS.UnityEngine.Renderer.isVisible : CS.System.Boolean
CS.UnityEngine.Renderer.isVisible = nil

---@property readwrite CS.UnityEngine.Renderer.shadowCastingMode : CS.UnityEngine.Rendering.ShadowCastingMode
CS.UnityEngine.Renderer.shadowCastingMode = nil

---@property readwrite CS.UnityEngine.Renderer.receiveShadows : CS.System.Boolean
CS.UnityEngine.Renderer.receiveShadows = nil

---@property readwrite CS.UnityEngine.Renderer.forceRenderingOff : CS.System.Boolean
CS.UnityEngine.Renderer.forceRenderingOff = nil

---@property readwrite CS.UnityEngine.Renderer.motionVectorGenerationMode : CS.UnityEngine.MotionVectorGenerationMode
CS.UnityEngine.Renderer.motionVectorGenerationMode = nil

---@property readwrite CS.UnityEngine.Renderer.lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
CS.UnityEngine.Renderer.lightProbeUsage = nil

---@property readwrite CS.UnityEngine.Renderer.reflectionProbeUsage : CS.UnityEngine.Rendering.ReflectionProbeUsage
CS.UnityEngine.Renderer.reflectionProbeUsage = nil

---@property readwrite CS.UnityEngine.Renderer.renderingLayerMask : CS.System.UInt32
CS.UnityEngine.Renderer.renderingLayerMask = nil

---@property readwrite CS.UnityEngine.Renderer.rendererPriority : CS.System.Int32
CS.UnityEngine.Renderer.rendererPriority = nil

---@property readwrite CS.UnityEngine.Renderer.rayTracingMode : CS.UnityEngine.Experimental.Rendering.RayTracingMode
CS.UnityEngine.Renderer.rayTracingMode = nil

---@property readwrite CS.UnityEngine.Renderer.sortingLayerName : CS.System.String
CS.UnityEngine.Renderer.sortingLayerName = nil

---@property readwrite CS.UnityEngine.Renderer.sortingLayerID : CS.System.Int32
CS.UnityEngine.Renderer.sortingLayerID = nil

---@property readwrite CS.UnityEngine.Renderer.sortingOrder : CS.System.Int32
CS.UnityEngine.Renderer.sortingOrder = nil

---@property readwrite CS.UnityEngine.Renderer.allowOcclusionWhenDynamic : CS.System.Boolean
CS.UnityEngine.Renderer.allowOcclusionWhenDynamic = nil

---@property readonly CS.UnityEngine.Renderer.isPartOfStaticBatch : CS.System.Boolean
CS.UnityEngine.Renderer.isPartOfStaticBatch = nil

---@property readonly CS.UnityEngine.Renderer.worldToLocalMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Renderer.worldToLocalMatrix = nil

---@property readonly CS.UnityEngine.Renderer.localToWorldMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Renderer.localToWorldMatrix = nil

---@property readwrite CS.UnityEngine.Renderer.lightProbeProxyVolumeOverride : CS.UnityEngine.GameObject
CS.UnityEngine.Renderer.lightProbeProxyVolumeOverride = nil

---@property readwrite CS.UnityEngine.Renderer.probeAnchor : CS.UnityEngine.Transform
CS.UnityEngine.Renderer.probeAnchor = nil

---@property readwrite CS.UnityEngine.Renderer.lightmapIndex : CS.System.Int32
CS.UnityEngine.Renderer.lightmapIndex = nil

---@property readwrite CS.UnityEngine.Renderer.realtimeLightmapIndex : CS.System.Int32
CS.UnityEngine.Renderer.realtimeLightmapIndex = nil

---@property readwrite CS.UnityEngine.Renderer.lightmapScaleOffset : CS.UnityEngine.Vector4
CS.UnityEngine.Renderer.lightmapScaleOffset = nil

---@property readwrite CS.UnityEngine.Renderer.realtimeLightmapScaleOffset : CS.UnityEngine.Vector4
CS.UnityEngine.Renderer.realtimeLightmapScaleOffset = nil

---@property readwrite CS.UnityEngine.Renderer.materials : CS.UnityEngine.Material[]
CS.UnityEngine.Renderer.materials = nil

---@property readwrite CS.UnityEngine.Renderer.material : CS.UnityEngine.Material
CS.UnityEngine.Renderer.material = nil

---@property readwrite CS.UnityEngine.Renderer.sharedMaterial : CS.UnityEngine.Material
CS.UnityEngine.Renderer.sharedMaterial = nil

---@property readwrite CS.UnityEngine.Renderer.sharedMaterials : CS.UnityEngine.Material[]
CS.UnityEngine.Renderer.sharedMaterials = nil

---@return CS.UnityEngine.Renderer
function CS.UnityEngine.Renderer()
end

---@return CS.System.Boolean
function CS.UnityEngine.Renderer:HasPropertyBlock()
end

---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Renderer:SetPropertyBlock(properties)
end

---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Renderer:SetPropertyBlock(properties, materialIndex)
end

---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Renderer:GetPropertyBlock(properties)
end

---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Renderer:GetPropertyBlock(properties, materialIndex)
end

---@param m : CS.System.Collections.Generic.List
function CS.UnityEngine.Renderer:GetMaterials(m)
end

---@param m : CS.System.Collections.Generic.List
function CS.UnityEngine.Renderer:GetSharedMaterials(m)
end

---@param result : CS.System.Collections.Generic.List
function CS.UnityEngine.Renderer:GetClosestReflectionProbes(result)
end