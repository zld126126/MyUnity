---@class CS.UnityEngine.CubemapArray : CS.UnityEngine.Texture
CS.UnityEngine.CubemapArray = {}

---@property readonly CS.UnityEngine.CubemapArray.cubemapCount : CS.System.Int32
CS.UnityEngine.CubemapArray.cubemapCount = nil

---@property readonly CS.UnityEngine.CubemapArray.format : CS.UnityEngine.TextureFormat
CS.UnityEngine.CubemapArray.format = nil

---@property readonly CS.UnityEngine.CubemapArray.isReadable : CS.System.Boolean
CS.UnityEngine.CubemapArray.isReadable = nil

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, format, flags)
end

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, format, flags)
end

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, format, flags, mipCount)
end

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, textureFormat, mipCount, linear)
end

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, textureFormat, mipChain, linear)
end

---@param width : CS.System.Int32
---@param cubemapCount : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@return CS.UnityEngine.CubemapArray
function CS.UnityEngine.CubemapArray(width, cubemapCount, textureFormat, mipChain)
end

---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.CubemapArray:GetPixels(face, arrayElement, miplevel)
end

---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.CubemapArray:GetPixels(face, arrayElement)
end

---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.CubemapArray:GetPixels32(face, arrayElement, miplevel)
end

---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.CubemapArray:GetPixels32(face, arrayElement)
end

---@param colors : CS.UnityEngine.Color[]
---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
function CS.UnityEngine.CubemapArray:SetPixels(colors, face, arrayElement, miplevel)
end

---@param colors : CS.UnityEngine.Color[]
---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
function CS.UnityEngine.CubemapArray:SetPixels(colors, face, arrayElement)
end

---@param colors : CS.UnityEngine.Color32[]
---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
function CS.UnityEngine.CubemapArray:SetPixels32(colors, face, arrayElement, miplevel)
end

---@param colors : CS.UnityEngine.Color32[]
---@param face : CS.UnityEngine.CubemapFace
---@param arrayElement : CS.System.Int32
function CS.UnityEngine.CubemapArray:SetPixels32(colors, face, arrayElement)
end

---@param updateMipmaps : CS.System.Boolean
---@param makeNoLongerReadable : CS.System.Boolean
function CS.UnityEngine.CubemapArray:Apply(updateMipmaps, makeNoLongerReadable)
end

---@param updateMipmaps : CS.System.Boolean
function CS.UnityEngine.CubemapArray:Apply(updateMipmaps)
end

function CS.UnityEngine.CubemapArray:Apply()
end