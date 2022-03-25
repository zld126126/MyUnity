---@class CS.UnityEngine.Rendering.CommandBuffer : CS.System.Object
CS.UnityEngine.Rendering.CommandBuffer = {}

---@property readwrite CS.UnityEngine.Rendering.CommandBuffer.name : CS.System.String
CS.UnityEngine.Rendering.CommandBuffer.name = nil

---@property readonly CS.UnityEngine.Rendering.CommandBuffer.sizeInBytes : CS.System.Int32
CS.UnityEngine.Rendering.CommandBuffer.sizeInBytes = nil

---@return CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Rendering.CommandBuffer()
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:ConvertTexture(src, dst)
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement : CS.System.Int32
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:ConvertTexture(src, srcElement, dst, dstElement)
end

function CS.UnityEngine.Rendering.CommandBuffer:WaitAllAsyncReadbackRequests()
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, callback)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, callback)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param size : CS.System.Int32
---@param offset : CS.System.Int32
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, size, offset, callback)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param size : CS.System.Int32
---@param offset : CS.System.Int32
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, size, offset, callback)
end

---@param src : CS.UnityEngine.Texture
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param dstFormat : CS.UnityEngine.TextureFormat
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, dstFormat, callback)
end

---@param src : CS.UnityEngine.Texture
---@param mipIndex : CS.System.Int32
---@param dstFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param callback : CS.System.Action
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, dstFormat, callback)
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
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, x, width, y, height, z, depth, callback)
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
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback)
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
function CS.UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback)
end

---@param invertCulling : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:SetInvertCulling(invertCulling)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param val : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeFloatParam(computeShader, nameID, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param val : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeIntParam(computeShader, nameID, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeVectorParam(computeShader, nameID, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeVectorArrayParam(computeShader, nameID, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeMatrixParam(computeShader, nameID, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeMatrixArrayParam(computeShader, nameID, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param passName : CS.System.String
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingShaderPass(rayTracingShader, passName)
end

function CS.UnityEngine.Rendering.CommandBuffer:Clear()
end

function CS.UnityEngine.Rendering.CommandBuffer:ClearRandomWriteTargets()
end

---@param pixelRect : CS.UnityEngine.Rect
function CS.UnityEngine.Rendering.CommandBuffer:SetViewport(pixelRect)
end

---@param scissor : CS.UnityEngine.Rect
function CS.UnityEngine.Rendering.CommandBuffer:EnableScissorRect(scissor)
end

function CS.UnityEngine.Rendering.CommandBuffer:DisableScissorRect()
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param useDynamicScale : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, antiAliasing, enableRandomWrite, memorylessMode, useDynamicScale)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, antiAliasing, enableRandomWrite, memorylessMode)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, antiAliasing, enableRandomWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, antiAliasing)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
---@param useDynamicScale : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite, memorylessMode, useDynamicScale)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
---@param memorylessMode : CS.UnityEngine.RenderTextureMemoryless
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite, memorylessMode)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite, antiAliasing)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer, filter)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depthBuffer : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height, depthBuffer)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, width, height)
end

---@param nameID : CS.System.Int32
---@param desc : CS.UnityEngine.RenderTextureDescriptor
---@param filter : CS.UnityEngine.FilterMode
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, desc, filter)
end

---@param nameID : CS.System.Int32
---@param desc : CS.UnityEngine.RenderTextureDescriptor
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, desc)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
---@param useDynamicScale : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, antiAliasing, enableRandomWrite, useDynamicScale)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, antiAliasing, enableRandomWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@param antiAliasing : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, antiAliasing)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
---@param enableRandomWrite : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@param antiAliasing : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, readWrite, antiAliasing)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, readWrite)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
---@param format : CS.UnityEngine.RenderTextureFormat
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
---@param filter : CS.UnityEngine.FilterMode
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
---@param depthBuffer : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer)
end

---@param nameID : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param slices : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices)
end

---@param nameID : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:ReleaseTemporaryRT(nameID)
end

---@param clearDepth : CS.System.Boolean
---@param clearColor : CS.System.Boolean
---@param backgroundColor : CS.UnityEngine.Color
---@param depth : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:ClearRenderTarget(clearDepth, clearColor, backgroundColor, depth)
end

---@param clearDepth : CS.System.Boolean
---@param clearColor : CS.System.Boolean
---@param backgroundColor : CS.UnityEngine.Color
function CS.UnityEngine.Rendering.CommandBuffer:ClearRenderTarget(clearDepth, clearColor, backgroundColor)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloat(nameID, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalInt(nameID, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVector(nameID, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalColor(nameID, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrix(nameID, value)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Rendering.CommandBuffer:EnableShaderKeyword(keyword)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Rendering.CommandBuffer:DisableShaderKeyword(keyword)
end

---@param view : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetViewMatrix(view)
end

---@param proj : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetProjectionMatrix(proj)
end

---@param view : CS.UnityEngine.Matrix4x4
---@param proj : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetViewProjectionMatrices(view, proj)
end

---@param bias : CS.System.Single
---@param slopeBias : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalDepthBias(bias, slopeBias)
end

---@param flags : CS.UnityEngine.Rendering.CommandBufferExecutionFlags
function CS.UnityEngine.Rendering.CommandBuffer:SetExecutionFlags(flags)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(nameID, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(nameID, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(nameID, values)
end

---@param name : CS.System.String
function CS.UnityEngine.Rendering.CommandBuffer:BeginSample(name)
end

---@param name : CS.System.String
function CS.UnityEngine.Rendering.CommandBuffer:EndSample(name)
end

---@param sampler : CS.UnityEngine.Profiling.CustomSampler
function CS.UnityEngine.Rendering.CommandBuffer:BeginSample(sampler)
end

---@param sampler : CS.UnityEngine.Profiling.CustomSampler
function CS.UnityEngine.Rendering.CommandBuffer:EndSample(sampler)
end

---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:IncrementUpdateCount(dest)
end

---@param multiplier : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:SetInstanceMultiplier(multiplier)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param loadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param storeAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt, loadAction, storeAction)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param colorLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param colorStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@param depthLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param depthStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt, colorLoadAction, colorStoreAction, depthLoadAction, depthStoreAction)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt, mipLevel)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt, mipLevel, cubemapFace)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(rt, mipLevel, cubemapFace, depthSlice)
end

---@param color : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(color, depth)
end

---@param color : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(color, depth, mipLevel)
end

---@param color : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(color, depth, mipLevel, cubemapFace)
end

---@param color : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(color, depth, mipLevel, cubemapFace, depthSlice)
end

---@param color : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param colorLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param colorStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depthLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param depthStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(color, colorLoadAction, colorStoreAction, depth, depthLoadAction, depthStoreAction)
end

---@param colors : CS.UnityEngine.Rendering.RenderTargetIdentifier[]
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(colors, depth)
end

---@param colors : CS.UnityEngine.Rendering.RenderTargetIdentifier[]
---@param depth : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(colors, depth, mipLevel, cubemapFace, depthSlice)
end

---@param binding : CS.UnityEngine.Rendering.RenderTargetBinding
---@param mipLevel : CS.System.Int32
---@param cubemapFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(binding, mipLevel, cubemapFace, depthSlice)
end

---@param binding : CS.UnityEngine.Rendering.RenderTargetBinding
function CS.UnityEngine.Rendering.CommandBuffer:SetRenderTarget(binding)
end

---@param buffer : CS.UnityEngine.ComputeBuffer
---@param data : CS.System.Array
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferData(buffer, data)
end

---@param buffer : CS.UnityEngine.ComputeBuffer
---@param data : CS.System.Array
---@param managedBufferStartIndex : CS.System.Int32
---@param graphicsBufferStartIndex : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferData(buffer, data, managedBufferStartIndex, graphicsBufferStartIndex, count)
end

---@param buffer : CS.UnityEngine.ComputeBuffer
---@param counterValue : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferCounterValue(buffer, counterValue)
end

function CS.UnityEngine.Rendering.CommandBuffer:Dispose()
end

function CS.UnityEngine.Rendering.CommandBuffer:Release()
end

---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Rendering.CommandBuffer:CreateAsyncGraphicsFence()
end

---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Rendering.CommandBuffer:CreateAsyncGraphicsFence(stage)
end

---@param fenceType : CS.UnityEngine.Rendering.GraphicsFenceType
---@param stage : CS.UnityEngine.Rendering.SynchronisationStageFlags
---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Rendering.CommandBuffer:CreateGraphicsFence(fenceType, stage)
end

---@param fence : CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Rendering.CommandBuffer:WaitOnAsyncGraphicsFence(fence)
end

---@param fence : CS.UnityEngine.Rendering.GraphicsFence
---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
function CS.UnityEngine.Rendering.CommandBuffer:WaitOnAsyncGraphicsFence(fence, stage)
end

---@param fence : CS.UnityEngine.Rendering.GraphicsFence
---@param stage : CS.UnityEngine.Rendering.SynchronisationStageFlags
function CS.UnityEngine.Rendering.CommandBuffer:WaitOnAsyncGraphicsFence(fence, stage)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param val : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeFloatParam(computeShader, name, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param val : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeIntParam(computeShader, name, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeVectorParam(computeShader, name, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeVectorArrayParam(computeShader, name, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeMatrixParam(computeShader, name, val)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeMatrixArrayParam(computeShader, name, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeFloatParams(computeShader, name, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeFloatParams(computeShader, nameID, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param values : CS.System.Int32[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeIntParams(computeShader, name, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param values : CS.System.Int32[]
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeIntParams(computeShader, nameID, values)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, name, rt)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, nameID, rt)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, name, rt, mipLevel)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, nameID, rt, mipLevel)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, name, rt, mipLevel, element)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, nameID, rt, mipLevel, element)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, nameID, buffer)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, name, buffer)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, nameID, buffer)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, name, buffer)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeConstantBufferParam(computeShader, nameID, buffer, offset, size)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeConstantBufferParam(computeShader, name, buffer, offset, size)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeConstantBufferParam(computeShader, nameID, buffer, offset, size)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetComputeConstantBufferParam(computeShader, name, buffer, offset, size)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param threadGroupsX : CS.System.Int32
---@param threadGroupsY : CS.System.Int32
---@param threadGroupsZ : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DispatchCompute(computeShader, kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param indirectBuffer : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:DispatchCompute(computeShader, kernelIndex, indirectBuffer, argsOffset)
end

---@param computeShader : CS.UnityEngine.ComputeShader
---@param kernelIndex : CS.System.Int32
---@param indirectBuffer : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:DispatchCompute(computeShader, kernelIndex, indirectBuffer, argsOffset)
end

---@param accelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Rendering.CommandBuffer:BuildRayTracingAccelerationStructure(accelerationStructure)
end

---@param accelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
---@param relativeOrigin : CS.UnityEngine.Vector3
function CS.UnityEngine.Rendering.CommandBuffer:BuildRayTracingAccelerationStructure(accelerationStructure, relativeOrigin)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param rayTracingAccelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingAccelerationStructure(rayTracingShader, name, rayTracingAccelerationStructure)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param rayTracingAccelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingAccelerationStructure(rayTracingShader, nameID, rayTracingAccelerationStructure)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingBufferParam(rayTracingShader, name, buffer)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingBufferParam(rayTracingShader, nameID, buffer)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingConstantBufferParam(rayTracingShader, nameID, buffer, offset, size)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingConstantBufferParam(rayTracingShader, name, buffer, offset, size)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingConstantBufferParam(rayTracingShader, nameID, buffer, offset, size)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingConstantBufferParam(rayTracingShader, name, buffer, offset, size)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingTextureParam(rayTracingShader, name, rt)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingTextureParam(rayTracingShader, nameID, rt)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param val : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParam(rayTracingShader, name, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param val : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParam(rayTracingShader, nameID, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParams(rayTracingShader, name, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParams(rayTracingShader, nameID, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param val : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParam(rayTracingShader, name, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param val : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParam(rayTracingShader, nameID, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param values : CS.System.Int32[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParams(rayTracingShader, name, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param values : CS.System.Int32[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParams(rayTracingShader, nameID, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorParam(rayTracingShader, name, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorParam(rayTracingShader, nameID, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorArrayParam(rayTracingShader, name, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorArrayParam(rayTracingShader, nameID, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixParam(rayTracingShader, name, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixParam(rayTracingShader, nameID, val)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixArrayParam(rayTracingShader, name, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixArrayParam(rayTracingShader, nameID, values)
end

---@param rayTracingShader : CS.UnityEngine.Experimental.Rendering.RayTracingShader
---@param rayGenName : CS.System.String
---@param width : CS.System.UInt32
---@param height : CS.System.UInt32
---@param depth : CS.System.UInt32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.CommandBuffer:DispatchRays(rayTracingShader, rayGenName, width, height, depth, camera)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:GenerateMips(rt)
end

---@param rt : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Rendering.CommandBuffer:GenerateMips(rt)
end

---@param rt : CS.UnityEngine.RenderTexture
---@param target : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Rendering.CommandBuffer:ResolveAntiAliasedSurface(rt, target)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param submeshIndex : CS.System.Int32
---@param shaderPass : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material, submeshIndex, shaderPass, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param submeshIndex : CS.System.Int32
---@param shaderPass : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material, submeshIndex, shaderPass)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material, submeshIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
function CS.UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material)
end

---@param renderer : CS.UnityEngine.Renderer
---@param material : CS.UnityEngine.Material
---@param submeshIndex : CS.System.Int32
---@param shaderPass : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawRenderer(renderer, material, submeshIndex, shaderPass)
end

---@param renderer : CS.UnityEngine.Renderer
---@param material : CS.UnityEngine.Material
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawRenderer(renderer, material, submeshIndex)
end

---@param renderer : CS.UnityEngine.Renderer
---@param material : CS.UnityEngine.Material
function CS.UnityEngine.Rendering.CommandBuffer:DrawRenderer(renderer, material)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(matrix, material, shaderPass, topology, vertexCount, instanceCount, properties)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(matrix, material, shaderPass, topology, vertexCount, instanceCount)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(matrix, material, shaderPass, topology, vertexCount)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param indexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(indexBuffer, matrix, material, shaderPass, topology, indexCount, instanceCount, properties)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param indexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(indexBuffer, matrix, material, shaderPass, topology, indexCount, instanceCount)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param indexCount : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProcedural(indexBuffer, matrix, material, shaderPass, topology, indexCount)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs, argsOffset, properties)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs, argsOffset)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs, argsOffset, properties)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs, argsOffset)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs, argsOffset, properties)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs, argsOffset)
end

---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs, argsOffset, properties)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs, argsOffset)
end

---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices, count, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices, count)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param matrices : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedProcedural(mesh, submeshIndex, material, shaderPass, count, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs, argsOffset, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs, argsOffset)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs, argsOffset, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs, argsOffset)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param shaderPass : CS.System.Int32
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs)
end

---@param normalizedCamViewport : CS.UnityEngine.RectInt
function CS.UnityEngine.Rendering.CommandBuffer:DrawOcclusionMesh(normalizedCamViewport)
end

---@param index : CS.System.Int32
---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, rt)
end

---@param index : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param preserveCounterValue : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, buffer, preserveCounterValue)
end

---@param index : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, buffer)
end

---@param index : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param preserveCounterValue : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, buffer, preserveCounterValue)
end

---@param index : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, buffer)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param dst : CS.UnityEngine.ComputeBuffer
---@param dstOffsetBytes : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param dst : CS.UnityEngine.ComputeBuffer
---@param dstOffsetBytes : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param dst : CS.UnityEngine.GraphicsBuffer
---@param dstOffsetBytes : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param dst : CS.UnityEngine.GraphicsBuffer
---@param dstOffsetBytes : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:CopyTexture(src, dst)
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement : CS.System.Int32
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:CopyTexture(src, srcElement, dst, dstElement)
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement : CS.System.Int32
---@param srcMip : CS.System.Int32
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement : CS.System.Int32
---@param dstMip : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:CopyTexture(src, srcElement, srcMip, dst, dstElement, dstMip)
end

---@param src : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement : CS.System.Int32
---@param srcMip : CS.System.Int32
---@param srcX : CS.System.Int32
---@param srcY : CS.System.Int32
---@param srcWidth : CS.System.Int32
---@param srcHeight : CS.System.Int32
---@param dst : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement : CS.System.Int32
---@param dstMip : CS.System.Int32
---@param dstX : CS.System.Int32
---@param dstY : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:CopyTexture(src, srcElement, srcMip, srcX, srcY, srcWidth, srcHeight, dst, dstElement, dstMip, dstX, dstY)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param scale : CS.UnityEngine.Vector2
---@param offset : CS.UnityEngine.Vector2
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, scale, offset)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat, pass)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param scale : CS.UnityEngine.Vector2
---@param offset : CS.UnityEngine.Vector2
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, scale, offset)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat, pass)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param sourceDepthSlice : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, sourceDepthSlice, destDepthSlice)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param scale : CS.UnityEngine.Vector2
---@param offset : CS.UnityEngine.Vector2
---@param sourceDepthSlice : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, scale, offset, sourceDepthSlice, destDepthSlice)
end

---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat, pass, destDepthSlice)
end

---@param name : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloat(name, value)
end

---@param name : CS.System.String
---@param value : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalInt(name, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVector(name, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalColor(name, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrix(name, value)
end

---@param propertyName : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(propertyName, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(nameID, values)
end

---@param propertyName : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(propertyName, values)
end

---@param propertyName : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(propertyName, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(nameID, values)
end

---@param propertyName : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(propertyName, values)
end

---@param propertyName : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(propertyName, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(nameID, values)
end

---@param propertyName : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(propertyName, values)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(name, value, element)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(nameID, value, element)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(nameID, value)
end

---@param buffer : CS.UnityEngine.ComputeBuffer
---@param nameID : CS.System.Int32
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalConstantBuffer(buffer, nameID, offset, size)
end

---@param buffer : CS.UnityEngine.ComputeBuffer
---@param name : CS.System.String
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalConstantBuffer(buffer, name, offset, size)
end

---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param nameID : CS.System.Int32
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalConstantBuffer(buffer, nameID, offset, size)
end

---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param name : CS.System.String
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:SetGlobalConstantBuffer(buffer, name, offset, size)
end

---@param shadowmap : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mode : CS.UnityEngine.Rendering.ShadowSamplingMode
function CS.UnityEngine.Rendering.CommandBuffer:SetShadowSamplingMode(shadowmap, mode)
end

---@param mode : CS.UnityEngine.Rendering.SinglePassStereoMode
function CS.UnityEngine.Rendering.CommandBuffer:SetSinglePassStereo(mode)
end

---@param callback : CS.System.IntPtr
---@param eventID : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginEvent(callback, eventID)
end

---@param callback : CS.System.IntPtr
---@param eventID : CS.System.Int32
---@param data : CS.System.IntPtr
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginEventAndData(callback, eventID, data)
end

---@param callback : CS.System.IntPtr
---@param command : CS.System.UInt32
---@param source : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param dest : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param commandParam : CS.System.UInt32
---@param commandFlags : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginCustomBlit(callback, command, source, dest, commandParam, commandFlags)
end

---@param callback : CS.System.IntPtr
---@param targetTexture : CS.UnityEngine.Texture
---@param userData : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdate(callback, targetTexture, userData)
end

---@param callback : CS.System.IntPtr
---@param targetTexture : CS.UnityEngine.Texture
---@param userData : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdateV1(callback, targetTexture, userData)
end

---@param callback : CS.System.IntPtr
---@param targetTexture : CS.UnityEngine.Texture
---@param userData : CS.System.UInt32
function CS.UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdateV2(callback, targetTexture, userData)
end

---@param rt : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param resolver : CS.System.IntPtr
---@param slice : CS.System.Int32
---@param x : CS.System.Int32
---@param width : CS.System.Int32
---@param y : CS.System.Int32
---@param height : CS.System.Int32
---@param mip : CS.System.Int32
function CS.UnityEngine.Rendering.CommandBuffer:ProcessVTFeedback(rt, resolver, slice, x, width, y, height, mip)
end

---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
---@return CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Rendering.CommandBuffer:CreateGPUFence(stage)
end

---@return CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Rendering.CommandBuffer:CreateGPUFence()
end

---@param fence : CS.UnityEngine.Rendering.GPUFence
---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
function CS.UnityEngine.Rendering.CommandBuffer:WaitOnGPUFence(fence, stage)
end

---@param fence : CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Rendering.CommandBuffer:WaitOnGPUFence(fence)
end