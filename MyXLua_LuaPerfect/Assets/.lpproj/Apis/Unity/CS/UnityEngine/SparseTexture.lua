---@class CS.UnityEngine.SparseTexture : CS.UnityEngine.Texture
CS.UnityEngine.SparseTexture = {}

---@property readonly CS.UnityEngine.SparseTexture.tileWidth : CS.System.Int32
CS.UnityEngine.SparseTexture.tileWidth = nil

---@property readonly CS.UnityEngine.SparseTexture.tileHeight : CS.System.Int32
CS.UnityEngine.SparseTexture.tileHeight = nil

---@property readonly CS.UnityEngine.SparseTexture.isCreated : CS.System.Boolean
CS.UnityEngine.SparseTexture.isCreated = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.SparseTexture
function CS.UnityEngine.SparseTexture(width, height, format, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.SparseTexture
function CS.UnityEngine.SparseTexture(width, height, format, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@return CS.UnityEngine.SparseTexture
function CS.UnityEngine.SparseTexture(width, height, textureFormat, mipCount)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param textureFormat : CS.UnityEngine.TextureFormat
---@param mipCount : CS.System.Int32
---@param linear : CS.System.Boolean
---@return CS.UnityEngine.SparseTexture
function CS.UnityEngine.SparseTexture(width, height, textureFormat, mipCount, linear)
end

---@param tileX : CS.System.Int32
---@param tileY : CS.System.Int32
---@param miplevel : CS.System.Int32
---@param data : CS.UnityEngine.Color32[]
function CS.UnityEngine.SparseTexture:UpdateTile(tileX, tileY, miplevel, data)
end

---@param tileX : CS.System.Int32
---@param tileY : CS.System.Int32
---@param miplevel : CS.System.Int32
---@param data : CS.System.Byte[]
function CS.UnityEngine.SparseTexture:UpdateTileRaw(tileX, tileY, miplevel, data)
end

---@param tileX : CS.System.Int32
---@param tileY : CS.System.Int32
---@param miplevel : CS.System.Int32
function CS.UnityEngine.SparseTexture:UnloadTile(tileX, tileY, miplevel)
end