---@class CS.UnityEngine.ReflectionProbe : CS.UnityEngine.Behaviour
CS.UnityEngine.ReflectionProbe = {}

---@property readwrite CS.UnityEngine.ReflectionProbe.type : CS.UnityEngine.Rendering.ReflectionProbeType
CS.UnityEngine.ReflectionProbe.type = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.size : CS.UnityEngine.Vector3
CS.UnityEngine.ReflectionProbe.size = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.center : CS.UnityEngine.Vector3
CS.UnityEngine.ReflectionProbe.center = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.nearClipPlane : CS.System.Single
CS.UnityEngine.ReflectionProbe.nearClipPlane = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.farClipPlane : CS.System.Single
CS.UnityEngine.ReflectionProbe.farClipPlane = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.intensity : CS.System.Single
CS.UnityEngine.ReflectionProbe.intensity = nil

---@property readonly CS.UnityEngine.ReflectionProbe.bounds : CS.UnityEngine.Bounds
CS.UnityEngine.ReflectionProbe.bounds = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.hdr : CS.System.Boolean
CS.UnityEngine.ReflectionProbe.hdr = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.renderDynamicObjects : CS.System.Boolean
CS.UnityEngine.ReflectionProbe.renderDynamicObjects = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.shadowDistance : CS.System.Single
CS.UnityEngine.ReflectionProbe.shadowDistance = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.resolution : CS.System.Int32
CS.UnityEngine.ReflectionProbe.resolution = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.cullingMask : CS.System.Int32
CS.UnityEngine.ReflectionProbe.cullingMask = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.clearFlags : CS.UnityEngine.Rendering.ReflectionProbeClearFlags
CS.UnityEngine.ReflectionProbe.clearFlags = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.backgroundColor : CS.UnityEngine.Color
CS.UnityEngine.ReflectionProbe.backgroundColor = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.blendDistance : CS.System.Single
CS.UnityEngine.ReflectionProbe.blendDistance = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.boxProjection : CS.System.Boolean
CS.UnityEngine.ReflectionProbe.boxProjection = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.mode : CS.UnityEngine.Rendering.ReflectionProbeMode
CS.UnityEngine.ReflectionProbe.mode = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.importance : CS.System.Int32
CS.UnityEngine.ReflectionProbe.importance = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.refreshMode : CS.UnityEngine.Rendering.ReflectionProbeRefreshMode
CS.UnityEngine.ReflectionProbe.refreshMode = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.timeSlicingMode : CS.UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
CS.UnityEngine.ReflectionProbe.timeSlicingMode = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.bakedTexture : CS.UnityEngine.Texture
CS.UnityEngine.ReflectionProbe.bakedTexture = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.customBakedTexture : CS.UnityEngine.Texture
CS.UnityEngine.ReflectionProbe.customBakedTexture = nil

---@property readwrite CS.UnityEngine.ReflectionProbe.realtimeTexture : CS.UnityEngine.RenderTexture
CS.UnityEngine.ReflectionProbe.realtimeTexture = nil

---@property readonly CS.UnityEngine.ReflectionProbe.texture : CS.UnityEngine.Texture
CS.UnityEngine.ReflectionProbe.texture = nil

---@property readonly CS.UnityEngine.ReflectionProbe.textureHDRDecodeValues : CS.UnityEngine.Vector4
CS.UnityEngine.ReflectionProbe.textureHDRDecodeValues = nil

---@property readonly CS.UnityEngine.ReflectionProbe.minBakedCubemapResolution : CS.System.Int32
CS.UnityEngine.ReflectionProbe.minBakedCubemapResolution = nil

---@property readonly CS.UnityEngine.ReflectionProbe.maxBakedCubemapResolution : CS.System.Int32
CS.UnityEngine.ReflectionProbe.maxBakedCubemapResolution = nil

---@property readonly CS.UnityEngine.ReflectionProbe.defaultTextureHDRDecodeValues : CS.UnityEngine.Vector4
CS.UnityEngine.ReflectionProbe.defaultTextureHDRDecodeValues = nil

---@property readonly CS.UnityEngine.ReflectionProbe.defaultTexture : CS.UnityEngine.Texture
CS.UnityEngine.ReflectionProbe.defaultTexture = nil

---@return CS.UnityEngine.ReflectionProbe
function CS.UnityEngine.ReflectionProbe()
end

function CS.UnityEngine.ReflectionProbe:Reset()
end

---@return CS.System.Int32
function CS.UnityEngine.ReflectionProbe:RenderProbe()
end

---@param targetTexture : CS.UnityEngine.RenderTexture
---@return CS.System.Int32
function CS.UnityEngine.ReflectionProbe:RenderProbe(targetTexture)
end

---@param renderId : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.ReflectionProbe:IsFinishedRendering(renderId)
end

---@param src : CS.UnityEngine.Texture
---@param dst : CS.UnityEngine.Texture
---@param blend : CS.System.Single
---@param target : CS.UnityEngine.RenderTexture
---@return CS.System.Boolean
function CS.UnityEngine.ReflectionProbe.BlendCubemap(src, dst, blend, target)
end

---@param value : CS.System.Action
function CS.UnityEngine.ReflectionProbe.add_reflectionProbeChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.ReflectionProbe.remove_reflectionProbeChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.ReflectionProbe.add_defaultReflectionSet(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.ReflectionProbe.remove_defaultReflectionSet(value)
end