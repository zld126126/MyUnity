---@class CS.UnityEngine.Light : CS.UnityEngine.Behaviour
CS.UnityEngine.Light = {}

---@property readwrite CS.UnityEngine.Light.type : CS.UnityEngine.LightType
CS.UnityEngine.Light.type = nil

---@property readwrite CS.UnityEngine.Light.shape : CS.UnityEngine.LightShape
CS.UnityEngine.Light.shape = nil

---@property readwrite CS.UnityEngine.Light.spotAngle : CS.System.Single
CS.UnityEngine.Light.spotAngle = nil

---@property readwrite CS.UnityEngine.Light.innerSpotAngle : CS.System.Single
CS.UnityEngine.Light.innerSpotAngle = nil

---@property readwrite CS.UnityEngine.Light.color : CS.UnityEngine.Color
CS.UnityEngine.Light.color = nil

---@property readwrite CS.UnityEngine.Light.colorTemperature : CS.System.Single
CS.UnityEngine.Light.colorTemperature = nil

---@property readwrite CS.UnityEngine.Light.useColorTemperature : CS.System.Boolean
CS.UnityEngine.Light.useColorTemperature = nil

---@property readwrite CS.UnityEngine.Light.intensity : CS.System.Single
CS.UnityEngine.Light.intensity = nil

---@property readwrite CS.UnityEngine.Light.bounceIntensity : CS.System.Single
CS.UnityEngine.Light.bounceIntensity = nil

---@property readwrite CS.UnityEngine.Light.useBoundingSphereOverride : CS.System.Boolean
CS.UnityEngine.Light.useBoundingSphereOverride = nil

---@property readwrite CS.UnityEngine.Light.boundingSphereOverride : CS.UnityEngine.Vector4
CS.UnityEngine.Light.boundingSphereOverride = nil

---@property readwrite CS.UnityEngine.Light.useViewFrustumForShadowCasterCull : CS.System.Boolean
CS.UnityEngine.Light.useViewFrustumForShadowCasterCull = nil

---@property readwrite CS.UnityEngine.Light.shadowCustomResolution : CS.System.Int32
CS.UnityEngine.Light.shadowCustomResolution = nil

---@property readwrite CS.UnityEngine.Light.shadowBias : CS.System.Single
CS.UnityEngine.Light.shadowBias = nil

---@property readwrite CS.UnityEngine.Light.shadowNormalBias : CS.System.Single
CS.UnityEngine.Light.shadowNormalBias = nil

---@property readwrite CS.UnityEngine.Light.shadowNearPlane : CS.System.Single
CS.UnityEngine.Light.shadowNearPlane = nil

---@property readwrite CS.UnityEngine.Light.useShadowMatrixOverride : CS.System.Boolean
CS.UnityEngine.Light.useShadowMatrixOverride = nil

---@property readwrite CS.UnityEngine.Light.shadowMatrixOverride : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Light.shadowMatrixOverride = nil

---@property readwrite CS.UnityEngine.Light.range : CS.System.Single
CS.UnityEngine.Light.range = nil

---@property readwrite CS.UnityEngine.Light.flare : CS.UnityEngine.Flare
CS.UnityEngine.Light.flare = nil

---@property readwrite CS.UnityEngine.Light.bakingOutput : CS.UnityEngine.LightBakingOutput
CS.UnityEngine.Light.bakingOutput = nil

---@property readwrite CS.UnityEngine.Light.cullingMask : CS.System.Int32
CS.UnityEngine.Light.cullingMask = nil

---@property readwrite CS.UnityEngine.Light.renderingLayerMask : CS.System.Int32
CS.UnityEngine.Light.renderingLayerMask = nil

---@property readwrite CS.UnityEngine.Light.lightShadowCasterMode : CS.UnityEngine.LightShadowCasterMode
CS.UnityEngine.Light.lightShadowCasterMode = nil

---@property readwrite CS.UnityEngine.Light.shadowRadius : CS.System.Single
CS.UnityEngine.Light.shadowRadius = nil

---@property readwrite CS.UnityEngine.Light.shadowAngle : CS.System.Single
CS.UnityEngine.Light.shadowAngle = nil

---@property readwrite CS.UnityEngine.Light.shadows : CS.UnityEngine.LightShadows
CS.UnityEngine.Light.shadows = nil

---@property readwrite CS.UnityEngine.Light.shadowStrength : CS.System.Single
CS.UnityEngine.Light.shadowStrength = nil

---@property readwrite CS.UnityEngine.Light.shadowResolution : CS.UnityEngine.Rendering.LightShadowResolution
CS.UnityEngine.Light.shadowResolution = nil

---@property readwrite CS.UnityEngine.Light.shadowSoftness : CS.System.Single
CS.UnityEngine.Light.shadowSoftness = nil

---@property readwrite CS.UnityEngine.Light.shadowSoftnessFade : CS.System.Single
CS.UnityEngine.Light.shadowSoftnessFade = nil

---@property readwrite CS.UnityEngine.Light.layerShadowCullDistances : CS.System.Single[]
CS.UnityEngine.Light.layerShadowCullDistances = nil

---@property readwrite CS.UnityEngine.Light.cookieSize : CS.System.Single
CS.UnityEngine.Light.cookieSize = nil

---@property readwrite CS.UnityEngine.Light.cookie : CS.UnityEngine.Texture
CS.UnityEngine.Light.cookie = nil

---@property readwrite CS.UnityEngine.Light.renderMode : CS.UnityEngine.LightRenderMode
CS.UnityEngine.Light.renderMode = nil

---@property readwrite CS.UnityEngine.Light.bakedIndex : CS.System.Int32
CS.UnityEngine.Light.bakedIndex = nil

---@property readwrite CS.UnityEngine.Light.areaSize : CS.UnityEngine.Vector2
CS.UnityEngine.Light.areaSize = nil

---@property readwrite CS.UnityEngine.Light.lightmapBakeType : CS.UnityEngine.LightmapBakeType
CS.UnityEngine.Light.lightmapBakeType = nil

---@property readonly CS.UnityEngine.Light.commandBufferCount : CS.System.Int32
CS.UnityEngine.Light.commandBufferCount = nil

---@property readwrite CS.UnityEngine.Light.pixelLightCount : CS.System.Int32
CS.UnityEngine.Light.pixelLightCount = nil

---@property readwrite CS.UnityEngine.Light.shadowConstantBias : CS.System.Single
CS.UnityEngine.Light.shadowConstantBias = nil

---@property readwrite CS.UnityEngine.Light.shadowObjectSizeBias : CS.System.Single
CS.UnityEngine.Light.shadowObjectSizeBias = nil

---@property readwrite CS.UnityEngine.Light.attenuate : CS.System.Boolean
CS.UnityEngine.Light.attenuate = nil

---@property readwrite CS.UnityEngine.Light.lightmappingMode : CS.UnityEngine.LightmappingMode
CS.UnityEngine.Light.lightmappingMode = nil

---@property readonly CS.UnityEngine.Light.isBaked : CS.System.Boolean
CS.UnityEngine.Light.isBaked = nil

---@property readwrite CS.UnityEngine.Light.alreadyLightmapped : CS.System.Boolean
CS.UnityEngine.Light.alreadyLightmapped = nil

---@return CS.UnityEngine.Light
function CS.UnityEngine.Light()
end

function CS.UnityEngine.Light:Reset()
end

function CS.UnityEngine.Light:SetLightDirty()
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Light:AddCommandBuffer(evt, buffer)
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
---@param shadowPassMask : CS.UnityEngine.Rendering.ShadowMapPass
function CS.UnityEngine.Light:AddCommandBuffer(evt, buffer, shadowPassMask)
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
---@param queueType : CS.UnityEngine.Rendering.ComputeQueueType
function CS.UnityEngine.Light:AddCommandBufferAsync(evt, buffer, queueType)
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
---@param shadowPassMask : CS.UnityEngine.Rendering.ShadowMapPass
---@param queueType : CS.UnityEngine.Rendering.ComputeQueueType
function CS.UnityEngine.Light:AddCommandBufferAsync(evt, buffer, shadowPassMask, queueType)
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Light:RemoveCommandBuffer(evt, buffer)
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
function CS.UnityEngine.Light:RemoveCommandBuffers(evt)
end

function CS.UnityEngine.Light:RemoveAllCommandBuffers()
end

---@param evt : CS.UnityEngine.Rendering.LightEvent
---@return CS.UnityEngine.Rendering.CommandBuffer[]
function CS.UnityEngine.Light:GetCommandBuffers(evt)
end

---@param type : CS.UnityEngine.LightType
---@param layer : CS.System.Int32
---@return CS.UnityEngine.Light[]
function CS.UnityEngine.Light.GetLights(type, layer)
end