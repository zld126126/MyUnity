---@class CS.UnityEngine.QualitySettings : CS.UnityEngine.Object
CS.UnityEngine.QualitySettings = {}

---@property readwrite CS.UnityEngine.QualitySettings.currentLevel : CS.UnityEngine.QualityLevel
CS.UnityEngine.QualitySettings.currentLevel = nil

---@property readwrite CS.UnityEngine.QualitySettings.pixelLightCount : CS.System.Int32
CS.UnityEngine.QualitySettings.pixelLightCount = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadows : CS.UnityEngine.ShadowQuality
CS.UnityEngine.QualitySettings.shadows = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowProjection : CS.UnityEngine.ShadowProjection
CS.UnityEngine.QualitySettings.shadowProjection = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowCascades : CS.System.Int32
CS.UnityEngine.QualitySettings.shadowCascades = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowDistance : CS.System.Single
CS.UnityEngine.QualitySettings.shadowDistance = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowResolution : CS.UnityEngine.ShadowResolution
CS.UnityEngine.QualitySettings.shadowResolution = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowmaskMode : CS.UnityEngine.ShadowmaskMode
CS.UnityEngine.QualitySettings.shadowmaskMode = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowNearPlaneOffset : CS.System.Single
CS.UnityEngine.QualitySettings.shadowNearPlaneOffset = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowCascade2Split : CS.System.Single
CS.UnityEngine.QualitySettings.shadowCascade2Split = nil

---@property readwrite CS.UnityEngine.QualitySettings.shadowCascade4Split : CS.UnityEngine.Vector3
CS.UnityEngine.QualitySettings.shadowCascade4Split = nil

---@property readwrite CS.UnityEngine.QualitySettings.lodBias : CS.System.Single
CS.UnityEngine.QualitySettings.lodBias = nil

---@property readwrite CS.UnityEngine.QualitySettings.anisotropicFiltering : CS.UnityEngine.AnisotropicFiltering
CS.UnityEngine.QualitySettings.anisotropicFiltering = nil

---@property readwrite CS.UnityEngine.QualitySettings.masterTextureLimit : CS.System.Int32
CS.UnityEngine.QualitySettings.masterTextureLimit = nil

---@property readwrite CS.UnityEngine.QualitySettings.maximumLODLevel : CS.System.Int32
CS.UnityEngine.QualitySettings.maximumLODLevel = nil

---@property readwrite CS.UnityEngine.QualitySettings.particleRaycastBudget : CS.System.Int32
CS.UnityEngine.QualitySettings.particleRaycastBudget = nil

---@property readwrite CS.UnityEngine.QualitySettings.softParticles : CS.System.Boolean
CS.UnityEngine.QualitySettings.softParticles = nil

---@property readwrite CS.UnityEngine.QualitySettings.softVegetation : CS.System.Boolean
CS.UnityEngine.QualitySettings.softVegetation = nil

---@property readwrite CS.UnityEngine.QualitySettings.vSyncCount : CS.System.Int32
CS.UnityEngine.QualitySettings.vSyncCount = nil

---@property readwrite CS.UnityEngine.QualitySettings.antiAliasing : CS.System.Int32
CS.UnityEngine.QualitySettings.antiAliasing = nil

---@property readwrite CS.UnityEngine.QualitySettings.asyncUploadTimeSlice : CS.System.Int32
CS.UnityEngine.QualitySettings.asyncUploadTimeSlice = nil

---@property readwrite CS.UnityEngine.QualitySettings.asyncUploadBufferSize : CS.System.Int32
CS.UnityEngine.QualitySettings.asyncUploadBufferSize = nil

---@property readwrite CS.UnityEngine.QualitySettings.asyncUploadPersistentBuffer : CS.System.Boolean
CS.UnityEngine.QualitySettings.asyncUploadPersistentBuffer = nil

---@property readwrite CS.UnityEngine.QualitySettings.realtimeReflectionProbes : CS.System.Boolean
CS.UnityEngine.QualitySettings.realtimeReflectionProbes = nil

---@property readwrite CS.UnityEngine.QualitySettings.billboardsFaceCameraPosition : CS.System.Boolean
CS.UnityEngine.QualitySettings.billboardsFaceCameraPosition = nil

---@property readwrite CS.UnityEngine.QualitySettings.resolutionScalingFixedDPIFactor : CS.System.Single
CS.UnityEngine.QualitySettings.resolutionScalingFixedDPIFactor = nil

---@property readwrite CS.UnityEngine.QualitySettings.renderPipeline : CS.UnityEngine.Rendering.RenderPipelineAsset
CS.UnityEngine.QualitySettings.renderPipeline = nil

---@property readwrite CS.UnityEngine.QualitySettings.blendWeights : CS.UnityEngine.BlendWeights
CS.UnityEngine.QualitySettings.blendWeights = nil

---@property readwrite CS.UnityEngine.QualitySettings.skinWeights : CS.UnityEngine.SkinWeights
CS.UnityEngine.QualitySettings.skinWeights = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsActive : CS.System.Boolean
CS.UnityEngine.QualitySettings.streamingMipmapsActive = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsMemoryBudget : CS.System.Single
CS.UnityEngine.QualitySettings.streamingMipmapsMemoryBudget = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsRenderersPerFrame : CS.System.Int32
CS.UnityEngine.QualitySettings.streamingMipmapsRenderersPerFrame = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsMaxLevelReduction : CS.System.Int32
CS.UnityEngine.QualitySettings.streamingMipmapsMaxLevelReduction = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsAddAllCameras : CS.System.Boolean
CS.UnityEngine.QualitySettings.streamingMipmapsAddAllCameras = nil

---@property readwrite CS.UnityEngine.QualitySettings.streamingMipmapsMaxFileIORequests : CS.System.Int32
CS.UnityEngine.QualitySettings.streamingMipmapsMaxFileIORequests = nil

---@property readwrite CS.UnityEngine.QualitySettings.maxQueuedFrames : CS.System.Int32
CS.UnityEngine.QualitySettings.maxQueuedFrames = nil

---@property readonly CS.UnityEngine.QualitySettings.names : CS.System.String[]
CS.UnityEngine.QualitySettings.names = nil

---@property readonly CS.UnityEngine.QualitySettings.desiredColorSpace : CS.UnityEngine.ColorSpace
CS.UnityEngine.QualitySettings.desiredColorSpace = nil

---@property readonly CS.UnityEngine.QualitySettings.activeColorSpace : CS.UnityEngine.ColorSpace
CS.UnityEngine.QualitySettings.activeColorSpace = nil

---@param applyExpensiveChanges : CS.System.Boolean
function CS.UnityEngine.QualitySettings.IncreaseLevel(applyExpensiveChanges)
end

---@param applyExpensiveChanges : CS.System.Boolean
function CS.UnityEngine.QualitySettings.DecreaseLevel(applyExpensiveChanges)
end

---@param index : CS.System.Int32
function CS.UnityEngine.QualitySettings.SetQualityLevel(index)
end

function CS.UnityEngine.QualitySettings.IncreaseLevel()
end

function CS.UnityEngine.QualitySettings.DecreaseLevel()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderPipelineAsset
function CS.UnityEngine.QualitySettings.GetRenderPipelineAssetAt(index)
end

---@return CS.System.Int32
function CS.UnityEngine.QualitySettings.GetQualityLevel()
end

---@param index : CS.System.Int32
---@param applyExpensiveChanges : CS.System.Boolean
function CS.UnityEngine.QualitySettings.SetQualityLevel(index, applyExpensiveChanges)
end