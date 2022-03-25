---@class CS.UnityEngine.Rendering.RenderTargetBinding : CS.System.ValueType
CS.UnityEngine.Rendering.RenderTargetBinding = {}

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.colorRenderTargets : CS.UnityEngine.Rendering.RenderTargetIdentifier[]
CS.UnityEngine.Rendering.RenderTargetBinding.colorRenderTargets = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.depthRenderTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
CS.UnityEngine.Rendering.RenderTargetBinding.depthRenderTarget = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.colorLoadActions : CS.UnityEngine.Rendering.RenderBufferLoadAction[]
CS.UnityEngine.Rendering.RenderTargetBinding.colorLoadActions = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.colorStoreActions : CS.UnityEngine.Rendering.RenderBufferStoreAction[]
CS.UnityEngine.Rendering.RenderTargetBinding.colorStoreActions = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.depthLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
CS.UnityEngine.Rendering.RenderTargetBinding.depthLoadAction = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.depthStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
CS.UnityEngine.Rendering.RenderTargetBinding.depthStoreAction = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBinding.flags : CS.UnityEngine.Rendering.RenderTargetFlags
CS.UnityEngine.Rendering.RenderTargetBinding.flags = nil

---@param colorRenderTargets : CS.UnityEngine.Rendering.RenderTargetIdentifier[]
---@param colorLoadActions : CS.UnityEngine.Rendering.RenderBufferLoadAction[]
---@param colorStoreActions : CS.UnityEngine.Rendering.RenderBufferStoreAction[]
---@param depthRenderTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depthLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param depthStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@return CS.UnityEngine.Rendering.RenderTargetBinding
function CS.UnityEngine.Rendering.RenderTargetBinding(colorRenderTargets, colorLoadActions, colorStoreActions, depthRenderTarget, depthLoadAction, depthStoreAction)
end

---@param colorRenderTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param colorLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param colorStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@param depthRenderTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param depthLoadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
---@param depthStoreAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
---@return CS.UnityEngine.Rendering.RenderTargetBinding
function CS.UnityEngine.Rendering.RenderTargetBinding(colorRenderTarget, colorLoadAction, colorStoreAction, depthRenderTarget, depthLoadAction, depthStoreAction)
end

---@param setup : CS.UnityEngine.RenderTargetSetup
---@return CS.UnityEngine.Rendering.RenderTargetBinding
function CS.UnityEngine.Rendering.RenderTargetBinding(setup)
end