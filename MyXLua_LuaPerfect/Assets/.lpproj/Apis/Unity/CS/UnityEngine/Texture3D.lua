---@class CS.UnityEngine.Texture3D : CS.UnityEngine.Texture
CS.UnityEngine.Texture3D = {}

---@property readonly CS.UnityEngine.Texture3D.depth : CS.System.Int32
CS.UnityEngine.Texture3D.depth = nil

---@property readonly CS.UnityEngine.Texture3D.format : CS.UnityEngine.TextureFormat
CS.UnityEngine.Texture3D.format = nil

---@property readonly CS.UnityEngine.Texture3D.isReadable : CS.System.Boolean
CS.UnityEngine.Texture3D.isReadable = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, format, flags, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, textureFormat, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@param nativeTex : CS.System.IntPtr
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, textureFormat, mipCount, nativeTex)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, textureFormat, mipChain)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param nativeTex : CS.System.IntPtr
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D(width, height, depth, textureFormat, mipChain, nativeTex)
end

---@param nativeTex : CS.System.IntPtr
function CS.UnityEngine.Texture3D:UpdateExternalTexture(nativeTex)
end

---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture3D:GetPixels(miplevel)
end

---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture3D:GetPixels()
end

---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture3D:GetPixels32(miplevel)
end

---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture3D:GetPixels32()
end

---@param colors : CS.UnityEngine.Color[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture3D:SetPixels(colors, miplevel)
end

---@param colors : CS.UnityEngine.Color[]
function CS.UnityEngine.Texture3D:SetPixels(colors)
end

---@param colors : CS.UnityEngine.Color32[]
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture3D:SetPixels32(colors, miplevel)
end

---@param colors : CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture3D:SetPixels32(colors)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param nativeTex : CS.System.IntPtr
---@return CS.UnityEngine.Texture3D
function CS.UnityEngine.Texture3D.CreateExternalTexture(width, height, depth, format, mipChain, nativeTex)
end

---@param updateMipmaps : CS.System.Boolean
---@param makeNoLongerReadable : CS.System.Boolean
function CS.UnityEngine.Texture3D:Apply(updateMipmaps, makeNoLongerReadable)
end

---@param updateMipmaps : CS.System.Boolean
function CS.UnityEngine.Texture3D:Apply(updateMipmaps)
end

function CS.UnityEngine.Texture3D:Apply()
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Texture3D:SetPixel(x, y, z, color)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
---@param color : CS.UnityEngine.Color
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Texture3D:SetPixel(x, y, z, color, mipLevel)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture3D:GetPixel(x, y, z)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture3D:GetPixel(x, y, z, mipLevel)
end

---@param u : CS.System.Single
---@param v : CS.System.Single
---@param w : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture3D:GetPixelBilinear(u, v, w)
end

---@param u : CS.System.Single
---@param v : CS.System.Single
---@param w : CS.System.Single
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Texture3D:GetPixelBilinear(u, v, w, mipLevel)
end