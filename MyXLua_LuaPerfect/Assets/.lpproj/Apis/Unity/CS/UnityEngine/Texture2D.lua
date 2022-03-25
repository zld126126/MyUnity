---@class CS.UnityEngine.Texture2D : CS.UnityEngine.Texture
CS.UnityEngine.Texture2D = {}

---@property readonly CS.UnityEngine.Texture2D.format : CS.UnityEngine.TextureFormat
CS.UnityEngine.Texture2D.format = nil

---@property readonly CS.UnityEngine.Texture2D.whiteTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.whiteTexture = nil

---@property readonly CS.UnityEngine.Texture2D.blackTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.blackTexture = nil

---@property readonly CS.UnityEngine.Texture2D.redTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.redTexture = nil

---@property readonly CS.UnityEngine.Texture2D.grayTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.grayTexture = nil

---@property readonly CS.UnityEngine.Texture2D.linearGrayTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.linearGrayTexture = nil

---@property readonly CS.UnityEngine.Texture2D.normalTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Texture2D.normalTexture = nil

---@property readonly CS.UnityEngine.Texture2D.isReadable : CS.System.Boolean
CS.UnityEngine.Texture2D.isReadable = nil

---@property readonly CS.UnityEngine.Texture2D.vtOnly : CS.System.Boolean
CS.UnityEngine.Texture2D.vtOnly = nil

---@property readonly CS.UnityEngine.Texture2D.streamingMipmaps : CS.System.Boolean
CS.UnityEngine.Texture2D.streamingMipmaps = nil

---@property readonly CS.UnityEngine.Texture2D.streamingMipmapsPriority : CS.System.Int32
CS.UnityEngine.Texture2D.streamingMipmapsPriority = nil

---@property readwrite CS.UnityEngine.Texture2D.requestedMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.requestedMipmapLevel = nil

---@property readwrite CS.UnityEngine.Texture2D.minimumMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.minimumMipmapLevel = nil

---@property readonly CS.UnityEngine.Texture2D.calculatedMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.calculatedMipmapLevel = nil

---@property readonly CS.UnityEngine.Texture2D.desiredMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.desiredMipmapLevel = nil

---@property readonly CS.UnityEngine.Texture2D.loadingMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.loadingMipmapLevel = nil

---@property readonly CS.UnityEngine.Texture2D.loadedMipmapLevel : CS.System.Int32
CS.UnityEngine.Texture2D.loadedMipmapLevel = nil

---@property readwrite CS.UnityEngine.Texture2D.alphaIsTransparency : CS.System.Boolean
CS.UnityEngine.Texture2D.alphaIsTransparency = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param mipCount : CS.System.Int32
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, format, mipCount, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, textureFormat, mipCount, linear)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, textureFormat, mipChain, linear)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height, textureFormat, mipChain)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D(width, height)
end

---@param highQuality : CS.System.Boolean
function CS.UnityEngine.Texture2D:Compress(highQuality)
end

function CS.UnityEngine.Texture2D:ClearRequestedMipmapLevel()
end

---@return CS.System.Boolean
function CS.UnityEngine.Texture2D:IsRequestedMipmapLevelLoaded()
end

function CS.UnityEngine.Texture2D:ClearMinimumMipmapLevel()
end

---@param nativeTex : CS.System.IntPtr
function CS.UnityEngine.Texture2D:UpdateExternalTexture(nativeTex)
end

---@return CS.System.Byte[]
function CS.UnityEngine.Texture2D:GetRawTextureData()
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:GetPixels(x, y, blockWidth, blockHeight, miplevel)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:GetPixels(x, y, blockWidth, blockHeight)
end

---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2D:GetPixels32(miplevel)
end

---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2D:GetPixels32()
end

---@param textures : CS.UnityEngine.Texture2D[]
---@param padding : CS.System.Int32
---@param maximumAtlasSize : CS.System.Int32
---@param makeNoLongerReadable : CS.System.Boolean
---@return CS.UnityEngine.Rect[]
function CS.UnityEngine.Texture2D:PackTextures(textures, padding, maximumAtlasSize, makeNoLongerReadable)
end

---@param textures : CS.UnityEngine.Texture2D[]
---@param padding : CS.System.Int32
---@param maximumAtlasSize : CS.System.Int32
---@return CS.UnityEngine.Rect[]
function CS.UnityEngine.Texture2D:PackTextures(textures, padding, maximumAtlasSize)
end

---@param textures : CS.UnityEngine.Texture2D[]
---@param padding : CS.System.Int32
---@return CS.UnityEngine.Rect[]
function CS.UnityEngine.Texture2D:PackTextures(textures, padding)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param linear : CS.System.Boolean
---@param nativeTex : CS.System.IntPtr
---@return CS.UnityEngine.Texture2D
function CS.UnityEngine.Texture2D.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Texture2D:SetPixel(x, y, color)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param color : CS.UnityEngine.Color
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Texture2D:SetPixel(x, y, color, mipLevel)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@param colors : CS.UnityEngine.Color[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors, miplevel)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@param colors : CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors)
end

---@param colors : CS.UnityEngine.Color[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2D:SetPixels(colors, miplevel)
end

---@param colors : CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:SetPixels(colors)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture2D:GetPixel(x, y)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture2D:GetPixel(x, y, mipLevel)
end

---@param u : CS.System.Single
---@param v : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture2D:GetPixelBilinear(u, v)
end

---@param u : CS.System.Single
---@param v : CS.System.Single
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture2D:GetPixelBilinear(u, v, mipLevel)
end

---@param data : CS.System.IntPtr
---@param size : CS.System.Int32
function CS.UnityEngine.Texture2D:LoadRawTextureData(data, size)
end

---@param data : CS.System.Byte[]
function CS.UnityEngine.Texture2D:LoadRawTextureData(data)
end

---@param updateMipmaps : CS.System.Boolean
---@param makeNoLongerReadable : CS.System.Boolean
function CS.UnityEngine.Texture2D:Apply(updateMipmaps, makeNoLongerReadable)
end

---@param updateMipmaps : CS.System.Boolean
function CS.UnityEngine.Texture2D:Apply(updateMipmaps)
end

function CS.UnityEngine.Texture2D:Apply()
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Texture2D:Resize(width, height)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.TextureFormat
---@param hasMipMap : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Texture2D:Resize(width, height, format, hasMipMap)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param hasMipMap : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Texture2D:Resize(width, height, format, hasMipMap)
end

---@param source : CS.UnityEngine.Rect
---@param destX : CS.System.Int32
---@param destY : CS.System.Int32
---@param recalculateMipMaps : CS.System.Boolean
function CS.UnityEngine.Texture2D:ReadPixels(source, destX, destY, recalculateMipMaps)
end

---@param source : CS.UnityEngine.Rect
---@param destX : CS.System.Int32
---@param destY : CS.System.Int32
function CS.UnityEngine.Texture2D:ReadPixels(source, destX, destY)
end

---@param sizes : CS.UnityEngine.Vector2[]
---@param padding : CS.System.Int32
---@param atlasSize : CS.System.Int32
---@param results : CS.System.Collections.Generic.List
---@return CS.System.Boolean
function CS.UnityEngine.Texture2D.GenerateAtlas(sizes, padding, atlasSize, results)
end

---@param colors : CS.UnityEngine.Color32[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2D:SetPixels32(colors, miplevel)
end

---@param colors : CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2D:SetPixels32(colors)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@param colors : CS.UnityEngine.Color32[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors, miplevel)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@param colors : CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors)
end

---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:GetPixels(miplevel)
end

---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2D:GetPixels()
end