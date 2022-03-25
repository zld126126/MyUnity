---@class CS.UnityEngine.RenderTexture : CS.UnityEngine.Texture
CS.UnityEngine.RenderTexture = {}

---@property readwrite CS.UnityEngine.RenderTexture.width : CS.System.Int32
CS.UnityEngine.RenderTexture.width = nil

---@property readwrite CS.UnityEngine.RenderTexture.height : CS.System.Int32
CS.UnityEngine.RenderTexture.height = nil

---@property readwrite CS.UnityEngine.RenderTexture.dimension : CS.UnityEngine.Rendering.TextureDimension
CS.UnityEngine.RenderTexture.dimension = nil

---@property readwrite CS.UnityEngine.RenderTexture.graphicsFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.RenderTexture.graphicsFormat = nil

---@property readwrite CS.UnityEngine.RenderTexture.useMipMap : CS.System.Boolean
CS.UnityEngine.RenderTexture.useMipMap = nil

---@property readonly CS.UnityEngine.RenderTexture.sRGB : CS.System.Boolean
CS.UnityEngine.RenderTexture.sRGB = nil

---@property readwrite CS.UnityEngine.RenderTexture.vrUsage : CS.UnityEngine.VRTextureUsage
CS.UnityEngine.RenderTexture.vrUsage = nil

---@property readwrite CS.UnityEngine.RenderTexture.memorylessMode : CS.UnityEngine.RenderTextureMemoryless
CS.UnityEngine.RenderTexture.memorylessMode = nil

---@property readwrite CS.UnityEngine.RenderTexture.format : CS.UnityEngine.RenderTextureFormat
CS.UnityEngine.RenderTexture.format = nil

---@property readwrite CS.UnityEngine.RenderTexture.stencilFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.RenderTexture.stencilFormat = nil

---@property readwrite CS.UnityEngine.RenderTexture.autoGenerateMips : CS.System.Boolean
CS.UnityEngine.RenderTexture.autoGenerateMips = nil

---@property readwrite CS.UnityEngine.RenderTexture.volumeDepth : CS.System.Int32
CS.UnityEngine.RenderTexture.volumeDepth = nil

---@property readwrite CS.UnityEngine.RenderTexture.antiAliasing : CS.System.Int32
CS.UnityEngine.RenderTexture.antiAliasing = nil

---@property readwrite CS.UnityEngine.RenderTexture.bindTextureMS : CS.System.Boolean
CS.UnityEngine.RenderTexture.bindTextureMS = nil

---@property readwrite CS.UnityEngine.RenderTexture.enableRandomWrite : CS.System.Boolean
CS.UnityEngine.RenderTexture.enableRandomWrite = nil

---@property readwrite CS.UnityEngine.RenderTexture.useDynamicScale : CS.System.Boolean
CS.UnityEngine.RenderTexture.useDynamicScale = nil

---@property readwrite CS.UnityEngine.RenderTexture.isPowerOfTwo : CS.System.Boolean
CS.UnityEngine.RenderTexture.isPowerOfTwo = nil

---@property readwrite CS.UnityEngine.RenderTexture.active : CS.UnityEngine.RenderTexture
CS.UnityEngine.RenderTexture.active = nil

---@property readonly CS.UnityEngine.RenderTexture.colorBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.RenderTexture.colorBuffer = nil

---@property readonly CS.UnityEngine.RenderTexture.depthBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.RenderTexture.depthBuffer = nil

---@property readwrite CS.UnityEngine.RenderTexture.depth : CS.System.Int32
CS.UnityEngine.RenderTexture.depth = nil

---@property readwrite CS.UnityEngine.RenderTexture.descriptor : CS.UnityEngine.RenderTextureDescriptor
CS.UnityEngine.RenderTexture.descriptor = nil

---@property readwrite CS.UnityEngine.RenderTexture.generateMips : CS.System.Boolean
CS.UnityEngine.RenderTexture.generateMips = nil

---@property readwrite CS.UnityEngine.RenderTexture.isCubemap : CS.System.Boolean
CS.UnityEngine.RenderTexture.isCubemap = nil

---@property readwrite CS.UnityEngine.RenderTexture.isVolume : CS.System.Boolean
CS.UnityEngine.RenderTexture.isVolume = nil

---@property readwrite CS.UnityEngine.RenderTexture.enabled : CS.System.Boolean
CS.UnityEngine.RenderTexture.enabled = nil

---@param desc : CS.UnityEngine.RenderTextureDescriptor
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(desc)
end

---@param textureToCopy : CS.UnityEngine.RenderTexture
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(textureToCopy)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format, readWrite)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture(width, height, depth, format, mipCount)
end

---@return CS.System.IntPtr
function CS.UnityEngine.RenderTexture:GetNativeDepthBufferPtr()
end

---@param discardColor : CS.System.Boolean
---@param discardDepth : CS.System.Boolean
function CS.UnityEngine.RenderTexture:DiscardContents(discardColor, discardDepth)
end

function CS.UnityEngine.RenderTexture:MarkRestoreExpected()
end

function CS.UnityEngine.RenderTexture:DiscardContents()
end

function CS.UnityEngine.RenderTexture:ResolveAntiAliasedSurface()
end

---@param target : CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture:ResolveAntiAliasedSurface(target)
end

---@param propertyName : CS.System.String
function CS.UnityEngine.RenderTexture:SetGlobalShaderProperty(propertyName)
end

---@return CS.System.Boolean
function CS.UnityEngine.RenderTexture:Create()
end

function CS.UnityEngine.RenderTexture:Release()
end

---@return CS.System.Boolean
function CS.UnityEngine.RenderTexture:IsCreated()
end

function CS.UnityEngine.RenderTexture:GenerateMips()
end

---@param equirect : CS.UnityEngine.RenderTexture
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
function CS.UnityEngine.RenderTexture:ConvertToEquirect(equirect, eye)
end

---@param rt : CS.UnityEngine.RenderTexture
---@return CS.System.Boolean
function CS.UnityEngine.RenderTexture.SupportsStencil(rt)
end

---@param temp : CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.ReleaseTemporary(temp)
end

---@param desc : CS.UnityEngine.RenderTextureDescriptor
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(desc)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param vrUsage : CS.UnityEngine.VRTextureUsage
---@param useDynamicScale : CS.System.Boolean
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode, vrUsage, useDynamicScale)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param vrUsage : CS.UnityEngine.VRTextureUsage
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode, vrUsage)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param vrUsage : CS.UnityEngine.VRTextureUsage
---@param useDynamicScale : CS.System.Boolean
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage, useDynamicScale)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param vrUsage : CS.UnityEngine.VRTextureUsage
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height, depthBuffer)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.RenderTexture.GetTemporary(width, height)
end

---@param color : CS.UnityEngine.Color
function CS.UnityEngine.RenderTexture:SetBorderColor(color)
end

---@return CS.UnityEngine.Vector2
function CS.UnityEngine.RenderTexture:GetTexelOffset()
end