---@class CS.UnityEngine.SystemInfo : CS.System.Object
CS.UnityEngine.SystemInfo = {}

---@field public CS.UnityEngine.SystemInfo.unsupportedIdentifier : CS.System.String
CS.UnityEngine.SystemInfo.unsupportedIdentifier = nil

---@property readonly CS.UnityEngine.SystemInfo.batteryLevel : CS.System.Single
CS.UnityEngine.SystemInfo.batteryLevel = nil

---@property readonly CS.UnityEngine.SystemInfo.batteryStatus : CS.UnityEngine.BatteryStatus
CS.UnityEngine.SystemInfo.batteryStatus = nil

---@property readonly CS.UnityEngine.SystemInfo.operatingSystem : CS.System.String
CS.UnityEngine.SystemInfo.operatingSystem = nil

---@property readonly CS.UnityEngine.SystemInfo.operatingSystemFamily : CS.UnityEngine.OperatingSystemFamily
CS.UnityEngine.SystemInfo.operatingSystemFamily = nil

---@property readonly CS.UnityEngine.SystemInfo.processorType : CS.System.String
CS.UnityEngine.SystemInfo.processorType = nil

---@property readonly CS.UnityEngine.SystemInfo.processorFrequency : CS.System.Int32
CS.UnityEngine.SystemInfo.processorFrequency = nil

---@property readonly CS.UnityEngine.SystemInfo.processorCount : CS.System.Int32
CS.UnityEngine.SystemInfo.processorCount = nil

---@property readonly CS.UnityEngine.SystemInfo.systemMemorySize : CS.System.Int32
CS.UnityEngine.SystemInfo.systemMemorySize = nil

---@property readonly CS.UnityEngine.SystemInfo.deviceUniqueIdentifier : CS.System.String
CS.UnityEngine.SystemInfo.deviceUniqueIdentifier = nil

---@property readonly CS.UnityEngine.SystemInfo.deviceName : CS.System.String
CS.UnityEngine.SystemInfo.deviceName = nil

---@property readonly CS.UnityEngine.SystemInfo.deviceModel : CS.System.String
CS.UnityEngine.SystemInfo.deviceModel = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsAccelerometer : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsAccelerometer = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsGyroscope : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsGyroscope = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsLocationService : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsLocationService = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsVibration : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsVibration = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsAudio : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsAudio = nil

---@property readonly CS.UnityEngine.SystemInfo.deviceType : CS.UnityEngine.DeviceType
CS.UnityEngine.SystemInfo.deviceType = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsMemorySize : CS.System.Int32
CS.UnityEngine.SystemInfo.graphicsMemorySize = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceName : CS.System.String
CS.UnityEngine.SystemInfo.graphicsDeviceName = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceVendor : CS.System.String
CS.UnityEngine.SystemInfo.graphicsDeviceVendor = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceID : CS.System.Int32
CS.UnityEngine.SystemInfo.graphicsDeviceID = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceVendorID : CS.System.Int32
CS.UnityEngine.SystemInfo.graphicsDeviceVendorID = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceType : CS.UnityEngine.Rendering.GraphicsDeviceType
CS.UnityEngine.SystemInfo.graphicsDeviceType = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsUVStartsAtTop : CS.System.Boolean
CS.UnityEngine.SystemInfo.graphicsUVStartsAtTop = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsDeviceVersion : CS.System.String
CS.UnityEngine.SystemInfo.graphicsDeviceVersion = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsShaderLevel : CS.System.Int32
CS.UnityEngine.SystemInfo.graphicsShaderLevel = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsMultiThreaded : CS.System.Boolean
CS.UnityEngine.SystemInfo.graphicsMultiThreaded = nil

---@property readonly CS.UnityEngine.SystemInfo.renderingThreadingMode : CS.UnityEngine.Rendering.RenderingThreadingMode
CS.UnityEngine.SystemInfo.renderingThreadingMode = nil

---@property readonly CS.UnityEngine.SystemInfo.hasHiddenSurfaceRemovalOnGPU : CS.System.Boolean
CS.UnityEngine.SystemInfo.hasHiddenSurfaceRemovalOnGPU = nil

---@property readonly CS.UnityEngine.SystemInfo.hasDynamicUniformArrayIndexingInFragmentShaders : CS.System.Boolean
CS.UnityEngine.SystemInfo.hasDynamicUniformArrayIndexingInFragmentShaders = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsShadows : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsShadows = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsRawShadowDepthSampling : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsRawShadowDepthSampling = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMotionVectors : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsMotionVectors = nil

---@property readonly CS.UnityEngine.SystemInfo.supports3DTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supports3DTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsCompressed3DTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsCompressed3DTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supports2DArrayTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supports2DArrayTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supports3DRenderTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supports3DRenderTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsCubemapArrayTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsCubemapArrayTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.copyTextureSupport : CS.UnityEngine.Rendering.CopyTextureSupport
CS.UnityEngine.SystemInfo.copyTextureSupport = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsComputeShaders : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsComputeShaders = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsConservativeRaster : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsConservativeRaster = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMultiview : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsMultiview = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsGeometryShaders : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsGeometryShaders = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsTessellationShaders : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsTessellationShaders = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsRenderTargetArrayIndexFromVertexShader : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsRenderTargetArrayIndexFromVertexShader = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsInstancing : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsInstancing = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsHardwareQuadTopology : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsHardwareQuadTopology = nil

---@property readonly CS.UnityEngine.SystemInfo.supports32bitsIndexBuffer : CS.System.Boolean
CS.UnityEngine.SystemInfo.supports32bitsIndexBuffer = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsSparseTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsSparseTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportedRenderTargetCount : CS.System.Int32
CS.UnityEngine.SystemInfo.supportedRenderTargetCount = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsSeparatedRenderTargetsBlend : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsSeparatedRenderTargetsBlend = nil

---@property readonly CS.UnityEngine.SystemInfo.supportedRandomWriteTargetCount : CS.System.Int32
CS.UnityEngine.SystemInfo.supportedRandomWriteTargetCount = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMultisampledTextures : CS.System.Int32
CS.UnityEngine.SystemInfo.supportsMultisampledTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMultisampled2DArrayTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsMultisampled2DArrayTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMultisampleAutoResolve : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsMultisampleAutoResolve = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsTextureWrapMirrorOnce : CS.System.Int32
CS.UnityEngine.SystemInfo.supportsTextureWrapMirrorOnce = nil

---@property readonly CS.UnityEngine.SystemInfo.usesReversedZBuffer : CS.System.Boolean
CS.UnityEngine.SystemInfo.usesReversedZBuffer = nil

---@property readonly CS.UnityEngine.SystemInfo.npotSupport : CS.UnityEngine.NPOTSupport
CS.UnityEngine.SystemInfo.npotSupport = nil

---@property readonly CS.UnityEngine.SystemInfo.maxTextureSize : CS.System.Int32
CS.UnityEngine.SystemInfo.maxTextureSize = nil

---@property readonly CS.UnityEngine.SystemInfo.maxCubemapSize : CS.System.Int32
CS.UnityEngine.SystemInfo.maxCubemapSize = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsVertex : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsVertex = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsFragment : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsFragment = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsGeometry : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsGeometry = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsDomain : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsDomain = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsHull : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsHull = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeBufferInputsCompute : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeBufferInputsCompute = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeWorkGroupSize : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSize = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeX : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeX = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeY : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeY = nil

---@property readonly CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeZ : CS.System.Int32
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeZ = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsAsyncCompute : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsAsyncCompute = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsGpuRecorder : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsGpuRecorder = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsGraphicsFence : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsGraphicsFence = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsAsyncGPUReadback : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsAsyncGPUReadback = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsRayTracing : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsRayTracing = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsSetConstantBuffer : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsSetConstantBuffer = nil

---@property readonly CS.UnityEngine.SystemInfo.constantBufferOffsetAlignment : CS.System.Int32
CS.UnityEngine.SystemInfo.constantBufferOffsetAlignment = nil

---@property readonly CS.UnityEngine.SystemInfo.minConstantBufferOffsetAlignment : CS.System.Boolean
CS.UnityEngine.SystemInfo.minConstantBufferOffsetAlignment = nil

---@property readonly CS.UnityEngine.SystemInfo.hasMipMaxLevel : CS.System.Boolean
CS.UnityEngine.SystemInfo.hasMipMaxLevel = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsMipStreaming : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsMipStreaming = nil

---@property readonly CS.UnityEngine.SystemInfo.usesLoadStoreActions : CS.System.Boolean
CS.UnityEngine.SystemInfo.usesLoadStoreActions = nil

---@property readonly CS.UnityEngine.SystemInfo.hdrDisplaySupportFlags : CS.UnityEngine.HDRDisplaySupportFlags
CS.UnityEngine.SystemInfo.hdrDisplaySupportFlags = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsStoreAndResolveAction : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsStoreAndResolveAction = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsRenderTextures : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsRenderTextures = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsRenderToCubemap : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsRenderToCubemap = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsImageEffects : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsImageEffects = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsStencil : CS.System.Int32
CS.UnityEngine.SystemInfo.supportsStencil = nil

---@property readonly CS.UnityEngine.SystemInfo.graphicsPixelFillrate : CS.System.Int32
CS.UnityEngine.SystemInfo.graphicsPixelFillrate = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsVertexPrograms : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsVertexPrograms = nil

---@property readonly CS.UnityEngine.SystemInfo.supportsGPUFence : CS.System.Boolean
CS.UnityEngine.SystemInfo.supportsGPUFence = nil

---@return CS.UnityEngine.SystemInfo
function CS.UnityEngine.SystemInfo()
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.System.Boolean
function CS.UnityEngine.SystemInfo.SupportsRenderTextureFormat(format)
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.System.Boolean
function CS.UnityEngine.SystemInfo.SupportsBlendingOnRenderTextureFormat(format)
end

---@param format : CS.UnityEngine.TextureFormat
---@return CS.System.Boolean
function CS.UnityEngine.SystemInfo.SupportsTextureFormat(format)
end

---@param format : CS.UnityEngine.Rendering.VertexAttributeFormat
---@param dimension : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.SystemInfo.SupportsVertexAttributeFormat(format, dimension)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage : CS.UnityEngine.Experimental.Rendering.FormatUsage
---@return CS.System.Boolean
function CS.UnityEngine.SystemInfo.IsFormatSupported(format, usage)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage : CS.UnityEngine.Experimental.Rendering.FormatUsage
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.SystemInfo.GetCompatibleFormat(format, usage)
end

---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.SystemInfo.GetGraphicsFormat(format)
end

---@param desc : CS.UnityEngine.RenderTextureDescriptor
---@return CS.System.Int32
function CS.UnityEngine.SystemInfo.GetRenderTextureSupportedMSAASampleCount(desc)
end