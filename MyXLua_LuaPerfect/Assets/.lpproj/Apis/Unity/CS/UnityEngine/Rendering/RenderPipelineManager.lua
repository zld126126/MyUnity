---@class CS.UnityEngine.Rendering.RenderPipelineManager : CS.System.Object
CS.UnityEngine.Rendering.RenderPipelineManager = {}

---@property readwrite CS.UnityEngine.Rendering.RenderPipelineManager.currentPipeline : CS.UnityEngine.Rendering.RenderPipeline
CS.UnityEngine.Rendering.RenderPipelineManager.currentPipeline = nil

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.add_beginFrameRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.remove_beginFrameRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.add_beginCameraRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.remove_beginCameraRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.add_endFrameRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.remove_endFrameRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.add_endCameraRendering(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Rendering.RenderPipelineManager.remove_endCameraRendering(value)
end