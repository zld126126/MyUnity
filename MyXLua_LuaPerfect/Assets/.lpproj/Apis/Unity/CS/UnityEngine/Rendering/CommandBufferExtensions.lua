---@class CS.UnityEngine.Rendering.CommandBufferExtensions : CS.System.Object
CS.UnityEngine.Rendering.CommandBufferExtensions = {}

---@param cmd : CS.UnityEngine.Rendering.CommandBuffer
---@param rid : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param fastMemoryFlags : CS.UnityEngine.Rendering.FastMemoryFlags
---@param residency : CS.System.Single
---@param copyContents : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBufferExtensions.SwitchIntoFastMemory(cmd, rid, fastMemoryFlags, residency, copyContents)
end

---@param cmd : CS.UnityEngine.Rendering.CommandBuffer
---@param rid : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param copyContents : CS.System.Boolean
function CS.UnityEngine.Rendering.CommandBufferExtensions.SwitchOutOfFastMemory(cmd, rid, copyContents)
end