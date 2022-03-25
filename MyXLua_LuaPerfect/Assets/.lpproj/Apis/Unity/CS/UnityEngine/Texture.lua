---@class CS.UnityEngine.Texture : CS.UnityEngine.Object
CS.UnityEngine.Texture = {}

---@field public CS.UnityEngine.Texture.GenerateAllMips : CS.System.Int32
CS.UnityEngine.Texture.GenerateAllMips = nil

---@property readwrite CS.UnityEngine.Texture.masterTextureLimit : CS.System.Int32
CS.UnityEngine.Texture.masterTextureLimit = nil

---@property readonly CS.UnityEngine.Texture.mipmapCount : CS.System.Int32
CS.UnityEngine.Texture.mipmapCount = nil

---@property readwrite CS.UnityEngine.Texture.anisotropicFiltering : CS.UnityEngine.AnisotropicFiltering
CS.UnityEngine.Texture.anisotropicFiltering = nil

---@property readonly CS.UnityEngine.Texture.graphicsFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.Texture.graphicsFormat = nil

---@property readwrite CS.UnityEngine.Texture.width : CS.System.Int32
CS.UnityEngine.Texture.width = nil

---@property readwrite CS.UnityEngine.Texture.height : CS.System.Int32
CS.UnityEngine.Texture.height = nil

---@property readwrite CS.UnityEngine.Texture.dimension : CS.UnityEngine.Rendering.TextureDimension
CS.UnityEngine.Texture.dimension = nil

---@property readonly CS.UnityEngine.Texture.isReadable : CS.System.Boolean
CS.UnityEngine.Texture.isReadable = nil

---@property readwrite CS.UnityEngine.Texture.wrapMode : CS.UnityEngine.TextureWrapMode
CS.UnityEngine.Texture.wrapMode = nil

---@property readwrite CS.UnityEngine.Texture.wrapModeU : CS.UnityEngine.TextureWrapMode
CS.UnityEngine.Texture.wrapModeU = nil

---@property readwrite CS.UnityEngine.Texture.wrapModeV : CS.UnityEngine.TextureWrapMode
CS.UnityEngine.Texture.wrapModeV = nil

---@property readwrite CS.UnityEngine.Texture.wrapModeW : CS.UnityEngine.TextureWrapMode
CS.UnityEngine.Texture.wrapModeW = nil

---@property readwrite CS.UnityEngine.Texture.filterMode : CS.UnityEngine.FilterMode
CS.UnityEngine.Texture.filterMode = nil

---@property readwrite CS.UnityEngine.Texture.anisoLevel : CS.System.Int32
CS.UnityEngine.Texture.anisoLevel = nil

---@property readwrite CS.UnityEngine.Texture.mipMapBias : CS.System.Single
CS.UnityEngine.Texture.mipMapBias = nil

---@property readonly CS.UnityEngine.Texture.texelSize : CS.UnityEngine.Vector2
CS.UnityEngine.Texture.texelSize = nil

---@property readonly CS.UnityEngine.Texture.updateCount : CS.System.UInt32
CS.UnityEngine.Texture.updateCount = nil

---@property readwrite CS.UnityEngine.Texture.imageContentsHash : CS.UnityEngine.Hash128
CS.UnityEngine.Texture.imageContentsHash = nil

---@property readonly CS.UnityEngine.Texture.totalTextureMemory : CS.System.UInt64
CS.UnityEngine.Texture.totalTextureMemory = nil

---@property readonly CS.UnityEngine.Texture.desiredTextureMemory : CS.System.UInt64
CS.UnityEngine.Texture.desiredTextureMemory = nil

---@property readonly CS.UnityEngine.Texture.targetTextureMemory : CS.System.UInt64
CS.UnityEngine.Texture.targetTextureMemory = nil

---@property readonly CS.UnityEngine.Texture.currentTextureMemory : CS.System.UInt64
CS.UnityEngine.Texture.currentTextureMemory = nil

---@property readonly CS.UnityEngine.Texture.nonStreamingTextureMemory : CS.System.UInt64
CS.UnityEngine.Texture.nonStreamingTextureMemory = nil

---@property readonly CS.UnityEngine.Texture.streamingMipmapUploadCount : CS.System.UInt64
CS.UnityEngine.Texture.streamingMipmapUploadCount = nil

---@property readonly CS.UnityEngine.Texture.streamingRendererCount : CS.System.UInt64
CS.UnityEngine.Texture.streamingRendererCount = nil

---@property readonly CS.UnityEngine.Texture.streamingTextureCount : CS.System.UInt64
CS.UnityEngine.Texture.streamingTextureCount = nil

---@property readonly CS.UnityEngine.Texture.nonStreamingTextureCount : CS.System.UInt64
CS.UnityEngine.Texture.nonStreamingTextureCount = nil

---@property readonly CS.UnityEngine.Texture.streamingTexturePendingLoadCount : CS.System.UInt64
CS.UnityEngine.Texture.streamingTexturePendingLoadCount = nil

---@property readonly CS.UnityEngine.Texture.streamingTextureLoadingCount : CS.System.UInt64
CS.UnityEngine.Texture.streamingTextureLoadingCount = nil

---@property readwrite CS.UnityEngine.Texture.streamingTextureForceLoadAll : CS.System.Boolean
CS.UnityEngine.Texture.streamingTextureForceLoadAll = nil

---@property readwrite CS.UnityEngine.Texture.streamingTextureDiscardUnusedMips : CS.System.Boolean
CS.UnityEngine.Texture.streamingTextureDiscardUnusedMips = nil

---@property readwrite CS.UnityEngine.Texture.allowThreadedTextureCreation : CS.System.Boolean
CS.UnityEngine.Texture.allowThreadedTextureCreation = nil

---@param forcedMin : CS.System.Int32
---@param globalMax : CS.System.Int32
function CS.UnityEngine.Texture.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax)
end

---@return CS.System.IntPtr
function CS.UnityEngine.Texture:GetNativeTexturePtr()
end

---@return CS.System.Int32
function CS.UnityEngine.Texture:GetNativeTextureID()
end

function CS.UnityEngine.Texture:IncrementUpdateCount()
end

function CS.UnityEngine.Texture.SetStreamingTextureMaterialDebugProperties()
end