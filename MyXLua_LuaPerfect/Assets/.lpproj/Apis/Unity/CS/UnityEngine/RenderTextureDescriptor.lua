---@class CS.UnityEngine.RenderTextureDescriptor : CS.System.ValueType
CS.UnityEngine.RenderTextureDescriptor = {}

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.width : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.width = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.height : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.height = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.msaaSamples : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.msaaSamples = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.volumeDepth : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.volumeDepth = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.mipCount : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.mipCount = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.graphicsFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.RenderTextureDescriptor.graphicsFormat = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.stencilFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.RenderTextureDescriptor.stencilFormat = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.colorFormat : CS.UnityEngine.RenderTextureFormat
CS.UnityEngine.RenderTextureDescriptor.colorFormat = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.sRGB : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.sRGB = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.depthBufferBits : CS.System.Int32
CS.UnityEngine.RenderTextureDescriptor.depthBufferBits = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.dimension : CS.UnityEngine.Rendering.TextureDimension
CS.UnityEngine.RenderTextureDescriptor.dimension = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.shadowSamplingMode : CS.UnityEngine.Rendering.ShadowSamplingMode
CS.UnityEngine.RenderTextureDescriptor.shadowSamplingMode = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.vrUsage : CS.UnityEngine.VRTextureUsage
CS.UnityEngine.RenderTextureDescriptor.vrUsage = nil

---@property readonly CS.UnityEngine.RenderTextureDescriptor.flags : CS.UnityEngine.RenderTextureCreationFlags
CS.UnityEngine.RenderTextureDescriptor.flags = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.memoryless : CS.UnityEngine.RenderTextureMemoryless
CS.UnityEngine.RenderTextureDescriptor.memoryless = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.useMipMap : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.useMipMap = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.autoGenerateMips : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.autoGenerateMips = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.enableRandomWrite : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.enableRandomWrite = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.bindMS : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.bindMS = nil

---@property readwrite CS.UnityEngine.RenderTextureDescriptor.useDynamicScale : CS.System.Boolean
CS.UnityEngine.RenderTextureDescriptor.useDynamicScale = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param colorFormat : CS.UnityEngine.RenderTextureFormat
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height, colorFormat)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param colorFormat : CS.UnityEngine.RenderTextureFormat
---@param depthBufferBits : CS.System.Int32
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height, colorFormat, depthBufferBits)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param colorFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param depthBufferBits : CS.System.Int32
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height, colorFormat, depthBufferBits)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param colorFormat : CS.UnityEngine.RenderTextureFormat
---@param depthBufferBits : CS.System.Int32
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height, colorFormat, depthBufferBits, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param colorFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param depthBufferBits : CS.System.Int32
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.RenderTextureDescriptor(width, height, colorFormat, depthBufferBits, mipCount)
end