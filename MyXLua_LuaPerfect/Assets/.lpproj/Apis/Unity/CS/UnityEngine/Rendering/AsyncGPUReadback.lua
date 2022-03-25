---@class CS.UnityEngine.Rendering.AsyncGPUReadback : CS.System.Object
CS.UnityEngine.Rendering.AsyncGPUReadback = {}

function CS.UnityEngine.Rendering.AsyncGPUReadback.WaitAllRequests()
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, callback)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param size : CS.System.Int32
---@param offset : CS.System.Int32
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, size, offset, callback)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, callback)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param size : CS.System.Int32
---@param offset : CS.System.Int32
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, size, offset, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param dstFormat : CS.UnityEngine.TextureFormat
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, dstFormat, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param dstFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, dstFormat, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param x : CS.System.Int32
---@param width : CS.System.Int32
---@param y : CS.System.Int32
---@param height : CS.System.Int32
---@param z : CS.System.Int32
---@param depth : CS.System.Int32
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, x, width, y, height, z, depth, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param x : CS.System.Int32
---@param width : CS.System.Int32
---@param y : CS.System.Int32
---@param height : CS.System.Int32
---@param z : CS.System.Int32
---@param depth : CS.System.Int32
---@param dstFormat : CS.UnityEngine.TextureFormat
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param x : CS.System.Int32
---@param width : CS.System.Int32
---@param y : CS.System.Int32
---@param height : CS.System.Int32
---@param z : CS.System.Int32
---@param depth : CS.System.Int32
---@param dstFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param callback : CS.System.Action
---@return CS.UnityEngine.Rendering.AsyncGPUReadbackRequest
function CS.UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback)
end