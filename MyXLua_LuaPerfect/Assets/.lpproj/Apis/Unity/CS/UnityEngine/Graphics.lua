---@class CS.UnityEngine.Graphics : CS.System.Object
CS.UnityEngine.Graphics = {}

---@property readonly CS.UnityEngine.Graphics.activeColorGamut : CS.UnityEngine.ColorGamut
CS.UnityEngine.Graphics.activeColorGamut = nil

---@property readwrite CS.UnityEngine.Graphics.activeTier : CS.UnityEngine.Rendering.GraphicsTier
CS.UnityEngine.Graphics.activeTier = nil

---@property readonly CS.UnityEngine.Graphics.preserveFramebufferAlpha : CS.System.Boolean
CS.UnityEngine.Graphics.preserveFramebufferAlpha = nil

---@property readonly CS.UnityEngine.Graphics.minOpenGLESVersion : CS.UnityEngine.Rendering.OpenGLESVersion
CS.UnityEngine.Graphics.minOpenGLESVersion = nil

---@property readonly CS.UnityEngine.Graphics.activeColorBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.Graphics.activeColorBuffer = nil

---@property readonly CS.UnityEngine.Graphics.activeDepthBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.Graphics.activeDepthBuffer = nil

---@property readonly CS.UnityEngine.Graphics.deviceName : CS.System.String
CS.UnityEngine.Graphics.deviceName = nil

---@property readonly CS.UnityEngine.Graphics.deviceVendor : CS.System.String
CS.UnityEngine.Graphics.deviceVendor = nil

---@property readonly CS.UnityEngine.Graphics.deviceVersion : CS.System.String
CS.UnityEngine.Graphics.deviceVersion = nil

---@return CS.UnityEngine.Graphics
function CS.UnityEngine.Graphics()
end

function CS.UnityEngine.Graphics.ClearRandomWriteTargets()
end

---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Graphics.ExecuteCommandBuffer(buffer)
end

---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
---@param queueType : CS.UnityEngine.Rendering.ComputeQueueType
function CS.UnityEngine.Graphics.ExecuteCommandBufferAsync(buffer, queueType)
end

---@param rt : CS.UnityEngine.RenderTexture
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.SetRenderTarget(rt, mipLevel, face, depthSlice)
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer
---@param depthBuffer : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.SetRenderTarget(colorBuffer, depthBuffer, mipLevel, face, depthSlice)
end

---@param colorBuffers : CS.UnityEngine.RenderBuffer[]
---@param depthBuffer : CS.UnityEngine.RenderBuffer
function CS.UnityEngine.Graphics.SetRenderTarget(colorBuffers, depthBuffer)
end

---@param setup : CS.UnityEngine.RenderTargetSetup
function CS.UnityEngine.Graphics.SetRenderTarget(setup)
end

---@param index : CS.System.Int32
---@param uav : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Graphics.SetRandomWriteTarget(index, uav)
end

---@param index : CS.System.Int32
---@param uav : CS.UnityEngine.ComputeBuffer
---@param preserveCounterValue : CS.System.Boolean
function CS.UnityEngine.Graphics.SetRandomWriteTarget(index, uav, preserveCounterValue)
end

---@param index : CS.System.Int32
---@param uav : CS.UnityEngine.GraphicsBuffer
---@param preserveCounterValue : CS.System.Boolean
function CS.UnityEngine.Graphics.SetRandomWriteTarget(index, uav, preserveCounterValue)
end

---@param src : CS.UnityEngine.Texture
---@param dst : CS.UnityEngine.Texture
function CS.UnityEngine.Graphics.CopyTexture(src, dst)
end

---@param src : CS.UnityEngine.Texture
---@param srcElement : CS.System.Int32
---@param dst : CS.UnityEngine.Texture
---@param dstElement : CS.System.Int32
function CS.UnityEngine.Graphics.CopyTexture(src, srcElement, dst, dstElement)
end

---@param src : CS.UnityEngine.Texture
---@param srcElement : CS.System.Int32
---@param srcMip : CS.System.Int32
---@param dst : CS.UnityEngine.Texture
---@param dstElement : CS.System.Int32
---@param dstMip : CS.System.Int32
function CS.UnityEngine.Graphics.CopyTexture(src, srcElement, srcMip, dst, dstElement, dstMip)
end

---@param src : CS.UnityEngine.Texture
---@param srcElement : CS.System.Int32
---@param srcMip : CS.System.Int32
---@param srcX : CS.System.Int32
---@param srcY : CS.System.Int32
---@param srcWidth : CS.System.Int32
---@param srcHeight : CS.System.Int32
---@param dst : CS.UnityEngine.Texture
---@param dstElement : CS.System.Int32
---@param dstMip : CS.System.Int32
---@param dstX : CS.System.Int32
---@param dstY : CS.System.Int32
function CS.UnityEngine.Graphics.CopyTexture(src, srcElement, srcMip, srcX, srcY, srcWidth, srcHeight, dst, dstElement, dstMip, dstX, dstY)
end

---@param src : CS.UnityEngine.Texture
---@param dst : CS.UnityEngine.Texture
---@return CS.System.Boolean
function CS.UnityEngine.Graphics.ConvertTexture(src, dst)
end

---@param src : CS.UnityEngine.Texture
---@param srcElement : CS.System.Int32
---@param dst : CS.UnityEngine.Texture
---@param dstElement : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Graphics.ConvertTexture(src, srcElement, dst, dstElement)
end

---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Graphics.CreateAsyncGraphicsFence(stage)
end

---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Graphics.CreateAsyncGraphicsFence()
end

---@param fenceType : CS.UnityEngine.Rendering.GraphicsFenceType
---@param stage : CS.UnityEngine.Rendering.SynchronisationStageFlags
---@return CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Graphics.CreateGraphicsFence(fenceType, stage)
end

---@param fence : CS.UnityEngine.Rendering.GraphicsFence
function CS.UnityEngine.Graphics.WaitOnAsyncGraphicsFence(fence)
end

---@param fence : CS.UnityEngine.Rendering.GraphicsFence
---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
function CS.UnityEngine.Graphics.WaitOnAsyncGraphicsFence(fence, stage)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param color : CS.UnityEngine.Color
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, color, mat, pass)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, mat, pass)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder, mat, pass)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, mat, pass)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMeshNow(mesh, position, rotation, materialIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMeshNow(mesh, matrix, materialIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Graphics.DrawMeshNow(mesh, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Graphics.DrawMeshNow(mesh, matrix)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
---@param receiveShadows : CS.System.Boolean
---@param useLightProbes : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, useLightProbes)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
---@param useLightProbes : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor, useLightProbes)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
---@param receiveShadows : CS.System.Boolean
---@param useLightProbes : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, useLightProbes)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor, lightProbeUsage, lightProbeProxyVolume)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMeshInstancedProcedural(mesh, submeshIndex, material, bounds, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume : CS.UnityEngine.LightProbeProxyVolume
function CS.UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralNow(topology, vertexCount, instanceCount)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param indexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralNow(topology, indexBuffer, indexCount, instanceCount)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirectNow(topology, bufferWithArgs, argsOffset)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirectNow(topology, indexBuffer, bufferWithArgs, argsOffset)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirectNow(topology, bufferWithArgs, argsOffset)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirectNow(topology, indexBuffer, bufferWithArgs, argsOffset)
end

---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProcedural(material, bounds, topology, vertexCount, instanceCount, camera, properties, castShadows, receiveShadows, layer)
end

---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param topology : CS.UnityEngine.MeshTopology
---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param indexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProcedural(material, bounds, topology, indexBuffer, indexCount, instanceCount, camera, properties, castShadows, receiveShadows, layer)
end

---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirect(material, bounds, topology, bufferWithArgs, argsOffset, camera, properties, castShadows, receiveShadows, layer)
end

---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param topology : CS.UnityEngine.MeshTopology
---@param indexBuffer : CS.UnityEngine.GraphicsBuffer
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirect(material, bounds, topology, indexBuffer, bufferWithArgs, argsOffset, camera, properties, castShadows, receiveShadows, layer)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Graphics.Blit(source, dest)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param sourceDepthSlice : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, dest, sourceDepthSlice, destDepthSlice)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param scale : CS.UnityEngine.Vector2
---@param offset : CS.UnityEngine.Vector2
function CS.UnityEngine.Graphics.Blit(source, dest, scale, offset)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param scale : CS.UnityEngine.Vector2
---@param offset : CS.UnityEngine.Vector2
---@param sourceDepthSlice : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, dest, scale, offset, sourceDepthSlice, destDepthSlice)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, dest, mat, pass)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, dest, mat, pass, destDepthSlice)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.Blit(source, dest, mat)
end

---@param source : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, mat, pass)
end

---@param source : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
---@param pass : CS.System.Int32
---@param destDepthSlice : CS.System.Int32
function CS.UnityEngine.Graphics.Blit(source, mat, pass, destDepthSlice)
end

---@param source : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.Blit(source, mat)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param mat : CS.UnityEngine.Material
---@param offsets : CS.UnityEngine.Vector2[]
function CS.UnityEngine.Graphics.BlitMultiTap(source, dest, mat, offsets)
end

---@param source : CS.UnityEngine.Texture
---@param dest : CS.UnityEngine.RenderTexture
---@param mat : CS.UnityEngine.Material
---@param destDepthSlice : CS.System.Int32
---@param offsets : CS.UnityEngine.Vector2[]
function CS.UnityEngine.Graphics.BlitMultiTap(source, dest, mat, destDepthSlice, offsets)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, materialIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param materialIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, materialIndex)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param vertexCount : CS.System.Int32
---@param instanceCount : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProcedural(topology, vertexCount, instanceCount)
end

---@param topology : CS.UnityEngine.MeshTopology
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
function CS.UnityEngine.Graphics.DrawProceduralIndirect(topology, bufferWithArgs, argsOffset)
end

---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
---@return CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Graphics.CreateGPUFence(stage)
end

---@param fence : CS.UnityEngine.Rendering.GPUFence
---@param stage : CS.UnityEngine.Rendering.SynchronisationStage
function CS.UnityEngine.Graphics.WaitOnGPUFence(fence, stage)
end

---@return CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Graphics.CreateGPUFence()
end

---@param fence : CS.UnityEngine.Rendering.GPUFence
function CS.UnityEngine.Graphics.WaitOnGPUFence(fence)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
function CS.UnityEngine.Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.System.Boolean
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
---@param useLightProbes : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor, useLightProbes)
end

---@param mesh : CS.UnityEngine.Mesh
---@param matrix : CS.UnityEngine.Matrix4x4
---@param material : CS.UnityEngine.Material
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param submeshIndex : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param probeAnchor : CS.UnityEngine.Transform
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
function CS.UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor, lightProbeUsage)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer, camera)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.UnityEngine.Matrix4x4[]
---@param count : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows, layer)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows, layer, camera)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param matrices : CS.System.Collections.Generic.List
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
function CS.UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param bufferWithArgs : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
function CS.UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param material : CS.UnityEngine.Material
---@param bounds : CS.UnityEngine.Bounds
---@param bufferWithArgs : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.Int32
---@param properties : CS.UnityEngine.MaterialPropertyBlock
---@param castShadows : CS.UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows : CS.System.Boolean
---@param layer : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
---@param lightProbeUsage : CS.UnityEngine.Rendering.LightProbeUsage
function CS.UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param color : CS.UnityEngine.Color
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, color, mat)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, color)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, mat)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param sourceRect : CS.UnityEngine.Rect
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder, mat)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture, mat)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.Graphics.DrawTexture(screenRect, texture)
end

---@param rt : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Graphics.SetRenderTarget(rt)
end

---@param rt : CS.UnityEngine.RenderTexture
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Graphics.SetRenderTarget(rt, mipLevel)
end

---@param rt : CS.UnityEngine.RenderTexture
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
function CS.UnityEngine.Graphics.SetRenderTarget(rt, mipLevel, face)
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer
---@param depthBuffer : CS.UnityEngine.RenderBuffer
function CS.UnityEngine.Graphics.SetRenderTarget(colorBuffer, depthBuffer)
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer
---@param depthBuffer : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.Graphics.SetRenderTarget(colorBuffer, depthBuffer, mipLevel)
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer
---@param depthBuffer : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@param face : CS.UnityEngine.CubemapFace
function CS.UnityEngine.Graphics.SetRenderTarget(colorBuffer, depthBuffer, mipLevel, face)
end

---@param index : CS.System.Int32
---@param uav : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Graphics.SetRandomWriteTarget(index, uav)
end

---@param index : CS.System.Int32
---@param uav : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Graphics.SetRandomWriteTarget(index, uav)
end