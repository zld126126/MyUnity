---@module CS.UnityEngine.Rendering
CS.UnityEngine.Rendering = {}

---@class CS.UnityEngine.Rendering.AsyncGPUReadbackRequest : CS.System.ValueType
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest = {}

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.done : CS.System.Boolean
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.done = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.hasError : CS.System.Boolean
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.hasError = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.layerCount : CS.System.Int32
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.layerCount = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.layerDataSize : CS.System.Int32
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.layerDataSize = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.width : CS.System.Int32
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.width = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.height : CS.System.Int32
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.height = nil

---@property readonly CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.depth : CS.System.Int32
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest.depth = nil

function CS.UnityEngine.Rendering.AsyncGPUReadbackRequest:Update()
end

function CS.UnityEngine.Rendering.AsyncGPUReadbackRequest:WaitForCompletion()
end