---@class CS.UnityEngine.Texture2DArray : CS.UnityEngine.Texture
CS.UnityEngine.Texture2DArray = {}

---@property readonly CS.UnityEngine.Texture2DArray.allSlices : CS.System.Int32
CS.UnityEngine.Texture2DArray.allSlices = nil

---@property readonly CS.UnityEngine.Texture2DArray.depth : CS.System.Int32
CS.UnityEngine.Texture2DArray.depth = nil

---@property readonly CS.UnityEngine.Texture2DArray.format : CS.UnityEngine.TextureFormat
CS.UnityEngine.Texture2DArray.format = nil

---@property readonly CS.UnityEngine.Texture2DArray.isReadable : CS.System.Boolean
CS.UnityEngine.Texture2DArray.isReadable = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, format, flags)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param flags : CS.UnityEngine.Experimental.Rendering.TextureCreationFlags
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, format, flags, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, textureFormat, mipCount, linear)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, textureFormat, mipChain, linear)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipChain : CS.System.Boolean
---@return CS.UnityEngine.Texture2DArray
function CS.UnityEngine.Texture2DArray(width, height, depth, textureFormat, mipChain)
end

---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2DArray:GetPixels(arrayElement, miplevel)
end

---@param arrayElement : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Texture2DArray:GetPixels(arrayElement)
end

---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2DArray:GetPixels32(arrayElement, miplevel)
end

---@param arrayElement : CS.System.Int32
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.Texture2DArray:GetPixels32(arrayElement)
end

---@param colors : CS.UnityEngine.Color[]
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2DArray:SetPixels(colors, arrayElement, miplevel)
end

---@param colors : CS.UnityEngine.Color[]
---@param arrayElement : CS.System.Int32
function CS.UnityEngine.Texture2DArray:SetPixels(colors, arrayElement)
end

---@param colors : CS.UnityEngine.Color32[]
---@param arrayElement : CS.System.Int32
---@param miplevel : CS.System.Int32
function CS.UnityEngine.Texture2DArray:SetPixels32(colors, arrayElement, miplevel)
end

---@param colors : CS.UnityEngine.Color32[]
---@param arrayElement : CS.System.Int32
function CS.UnityEngine.Texture2DArray:SetPixels32(colors, arrayElement)
end

---@param updateMipmaps : CS.System.Boolean
---@param makeNoLongerReadable : CS.System.Boolean
function CS.UnityEngine.Texture2DArray:Apply(updateMipmaps, makeNoLongerReadable)
end

---@param updateMipmaps : CS.System.Boolean
function CS.UnityEngine.Texture2DArray:Apply(updateMipmaps)
end

function CS.UnityEngine.Texture2DArray:Apply()
end