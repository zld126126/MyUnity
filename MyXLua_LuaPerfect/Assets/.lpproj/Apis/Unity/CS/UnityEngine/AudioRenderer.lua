---@class CS.UnityEngine.AudioRenderer : CS.System.Object
CS.UnityEngine.AudioRenderer = {}

---@return CS.UnityEngine.AudioRenderer
function CS.UnityEngine.AudioRenderer()
end

---@return CS.System.Boolean
function CS.UnityEngine.AudioRenderer.Start()
end

---@return CS.System.Boolean
function CS.UnityEngine.AudioRenderer.Stop()
end

---@return CS.System.Int32
function CS.UnityEngine.AudioRenderer.GetSampleCountForCaptureFrame()
end

---@param buffer : CS.Unity.Collections.NativeArray
---@return CS.System.Boolean
function CS.UnityEngine.AudioRenderer.Render(buffer)
end