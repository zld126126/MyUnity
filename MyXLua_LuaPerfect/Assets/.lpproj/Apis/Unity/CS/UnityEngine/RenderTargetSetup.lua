---@class CS.UnityEngine.RenderTargetSetup : CS.System.ValueType
CS.UnityEngine.RenderTargetSetup = {}

---@field public CS.UnityEngine.RenderTargetSetup.color : CS.UnityEngine.RenderBuffer[]
CS.UnityEngine.RenderTargetSetup.color = nil

---@field public CS.UnityEngine.RenderTargetSetup.depth : CS.UnityEngine.RenderBuffer
CS.UnityEngine.RenderTargetSetup.depth = nil

---@field public CS.UnityEngine.RenderTargetSetup.mipLevel : CS.System.Int32
CS.UnityEngine.RenderTargetSetup.mipLevel = nil

---@field public CS.UnityEngine.RenderTargetSetup.cubemapFace : CS.UnityEngine.CubemapFace
CS.UnityEngine.RenderTargetSetup.cubemapFace = nil

---@field public CS.UnityEngine.RenderTargetSetup.depthSlice : CS.System.Int32
CS.UnityEngine.RenderTargetSetup.depthSlice = nil

---@field public CS.UnityEngine.RenderTargetSetup.colorLoad : CS.UnityEngine.Rendering.RenderBufferLoadAction[]
CS.UnityEngine.RenderTargetSetup.colorLoad = nil

---@field public CS.UnityEngine.RenderTargetSetup.colorStore : CS.UnityEngine.Rendering.RenderBufferStoreAction[]
CS.UnityEngine.RenderTargetSetup.colorStore = nil

---@field public CS.UnityEngine.RenderTargetSetup.depthLoad : CS.UnityEngine.Rendering.RenderBufferLoadAction
CS.UnityEngine.RenderTargetSetup.depthLoad = nil

---@field public CS.UnityEngine.RenderTargetSetup.depthStore : CS.UnityEngine.Rendering.RenderBufferStoreAction
CS.UnityEngine.RenderTargetSetup.depthStore = nil

---@param color : CS.UnityEngine.RenderBuffer[]
---@param depth : CS.UnityEngine.RenderBuffer
---@param mip : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@param colorLoad : CS.UnityEngine.Rendering.RenderBufferLoadAction[]
---@param colorStore : CS.UnityEngine.Rendering.RenderBufferStoreAction[]
---@param depthLoad : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param depthStore : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mip, face, colorLoad, colorStore, depthLoad, depthStore)
end

---@param color : CS.UnityEngine.RenderBuffer
---@param depth : CS.UnityEngine.RenderBuffer
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth)
end

---@param color : CS.UnityEngine.RenderBuffer
---@param depth : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mipLevel)
end

---@param color : CS.UnityEngine.RenderBuffer
---@param depth : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mipLevel, face)
end

---@param color : CS.UnityEngine.RenderBuffer
---@param depth : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mipLevel, face, depthSlice)
end

---@param color : CS.UnityEngine.RenderBuffer[]
---@param depth : CS.UnityEngine.RenderBuffer
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth)
end

---@param color : CS.UnityEngine.RenderBuffer[]
---@param depth : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mipLevel)
end

---@param color : CS.UnityEngine.RenderBuffer[]
---@param depth : CS.UnityEngine.RenderBuffer
---@param mip : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@return CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.RenderTargetSetup(color, depth, mip, face)
end