---@class CS.UnityEngine.Rendering.ScriptableRenderContext : CS.System.ValueType
CS.UnityEngine.Rendering.ScriptableRenderContext = {}

---@param cullingCamera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext.EmitWorldGeometryForSceneView(cullingCamera)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext.EmitGeometryForCamera(camera)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param samples : CS.System.Int32
---@param attachments : CS.Unity.Collections.NativeArray
---@param depthAttachmentIndex : CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginRenderPass(width, height, samples, attachments, depthAttachmentIndex)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param samples : CS.System.Int32
---@param attachments : CS.Unity.Collections.NativeArray
---@param depthAttachmentIndex : CS.System.Int32
---@return CS.UnityEngine.Rendering.ScopedRenderPass
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginScopedRenderPass(width, height, samples, attachments, depthAttachmentIndex)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param inputs : CS.Unity.Collections.NativeArray
---@param isDepthReadOnly : CS.System.Boolean
---@param isStencilReadOnly : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginSubPass(colors, inputs, isDepthReadOnly, isStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param inputs : CS.Unity.Collections.NativeArray
---@param isDepthStencilReadOnly : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginSubPass(colors, inputs, isDepthStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param isDepthReadOnly : CS.System.Boolean
---@param isStencilReadOnly : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginSubPass(colors, isDepthReadOnly, isStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param isDepthStencilReadOnly : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginSubPass(colors, isDepthStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param inputs : CS.Unity.Collections.NativeArray
---@param isDepthReadOnly : CS.System.Boolean
---@param isStencilReadOnly : CS.System.Boolean
---@return CS.UnityEngine.Rendering.ScopedSubPass
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginScopedSubPass(colors, inputs, isDepthReadOnly, isStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param inputs : CS.Unity.Collections.NativeArray
---@param isDepthStencilReadOnly : CS.System.Boolean
---@return CS.UnityEngine.Rendering.ScopedSubPass
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginScopedSubPass(colors, inputs, isDepthStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param isDepthReadOnly : CS.System.Boolean
---@param isStencilReadOnly : CS.System.Boolean
---@return CS.UnityEngine.Rendering.ScopedSubPass
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginScopedSubPass(colors, isDepthReadOnly, isStencilReadOnly)
end

---@param colors : CS.Unity.Collections.NativeArray
---@param isDepthStencilReadOnly : CS.System.Boolean
---@return CS.UnityEngine.Rendering.ScopedSubPass
function CS.UnityEngine.Rendering.ScriptableRenderContext:BeginScopedSubPass(colors, isDepthStencilReadOnly)
end

function CS.UnityEngine.Rendering.ScriptableRenderContext:EndSubPass()
end

function CS.UnityEngine.Rendering.ScriptableRenderContext:EndRenderPass()
end

function CS.UnityEngine.Rendering.ScriptableRenderContext:Submit()
end

---@param cullingResults : CS.UnityEngine.Rendering.CullingResults
---@param drawingSettings : CS.UnityEngine.Rendering.DrawingSettings
---@param filteringSettings : CS.UnityEngine.Rendering.FilteringSettings
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawRenderers(cullingResults, drawingSettings, filteringSettings)
end

---@param cullingResults : CS.UnityEngine.Rendering.CullingResults
---@param drawingSettings : CS.UnityEngine.Rendering.DrawingSettings
---@param filteringSettings : CS.UnityEngine.Rendering.FilteringSettings
---@param stateBlock : CS.UnityEngine.Rendering.RenderStateBlock
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawRenderers(cullingResults, drawingSettings, filteringSettings, stateBlock)
end

---@param cullingResults : CS.UnityEngine.Rendering.CullingResults
---@param drawingSettings : CS.UnityEngine.Rendering.DrawingSettings
---@param filteringSettings : CS.UnityEngine.Rendering.FilteringSettings
---@param renderTypes : CS.Unity.Collections.NativeArray
---@param stateBlocks : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawRenderers(cullingResults, drawingSettings, filteringSettings, renderTypes, stateBlocks)
end

---@param cullingResults : CS.UnityEngine.Rendering.CullingResults
---@param drawingSettings : CS.UnityEngine.Rendering.DrawingSettings
---@param filteringSettings : CS.UnityEngine.Rendering.FilteringSettings
---@param tagName : CS.UnityEngine.Rendering.ShaderTagId
---@param isPassTagName : CS.System.Boolean
---@param tagValues : CS.Unity.Collections.NativeArray
---@param stateBlocks : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawRenderers(cullingResults, drawingSettings, filteringSettings, tagName, isPassTagName, tagValues, stateBlocks)
end

---@param settings : CS.UnityEngine.Rendering.ShadowDrawingSettings
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawShadows(settings)
end

---@param commandBuffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Rendering.ScriptableRenderContext:ExecuteCommandBuffer(commandBuffer)
end

---@param commandBuffer : CS.UnityEngine.Rendering.CommandBuffer
---@param queueType : CS.UnityEngine.Rendering.ComputeQueueType
function CS.UnityEngine.Rendering.ScriptableRenderContext:ExecuteCommandBufferAsync(commandBuffer, queueType)
end

---@param camera : CS.UnityEngine.Camera
---@param stereoSetup : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:SetupCameraProperties(camera, stereoSetup)
end

---@param camera : CS.UnityEngine.Camera
---@param stereoSetup : CS.System.Boolean
---@param eye : CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableRenderContext:SetupCameraProperties(camera, stereoSetup, eye)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:StereoEndRender(camera)
end

---@param camera : CS.UnityEngine.Camera
---@param eye : CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableRenderContext:StereoEndRender(camera, eye)
end

---@param camera : CS.UnityEngine.Camera
---@param eye : CS.System.Int32
---@param isFinalPass : CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:StereoEndRender(camera, eye, isFinalPass)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:StartMultiEye(camera)
end

---@param camera : CS.UnityEngine.Camera
---@param eye : CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableRenderContext:StartMultiEye(camera, eye)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:StopMultiEye(camera)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawSkybox(camera)
end

function CS.UnityEngine.Rendering.ScriptableRenderContext:InvokeOnRenderObjectCallback()
end

---@param camera : CS.UnityEngine.Camera
---@param gizmoSubset : CS.UnityEngine.Rendering.GizmoSubset
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawGizmos(camera, gizmoSubset)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawWireOverlay(camera)
end

---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Rendering.ScriptableRenderContext:DrawUIOverlay(camera)
end

---@param parameters : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.UnityEngine.Rendering.CullingResults
function CS.UnityEngine.Rendering.ScriptableRenderContext:Cull(parameters)
end

---@param other : CS.UnityEngine.Rendering.ScriptableRenderContext
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.ScriptableRenderContext:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.ScriptableRenderContext
---@param right : CS.UnityEngine.Rendering.ScriptableRenderContext
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.ScriptableRenderContext
---@param right : CS.UnityEngine.Rendering.ScriptableRenderContext
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ScriptableRenderContext.op_Inequality(left, right)
end