---@class CS.UnityEngine.Rendering.AttachmentDescriptor : CS.System.ValueType
CS.UnityEngine.Rendering.AttachmentDescriptor = {}

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.loadAction : CS.UnityEngine.Rendering.RenderBufferLoadAction
CS.UnityEngine.Rendering.AttachmentDescriptor.loadAction = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.storeAction : CS.UnityEngine.Rendering.RenderBufferStoreAction
CS.UnityEngine.Rendering.AttachmentDescriptor.storeAction = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.graphicsFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.Rendering.AttachmentDescriptor.graphicsFormat = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.format : CS.UnityEngine.RenderTextureFormat
CS.UnityEngine.Rendering.AttachmentDescriptor.format = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.loadStoreTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
CS.UnityEngine.Rendering.AttachmentDescriptor.loadStoreTarget = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.resolveTarget : CS.UnityEngine.Rendering.RenderTargetIdentifier
CS.UnityEngine.Rendering.AttachmentDescriptor.resolveTarget = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.clearColor : CS.UnityEngine.Color
CS.UnityEngine.Rendering.AttachmentDescriptor.clearColor = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.clearDepth : CS.System.Single
CS.UnityEngine.Rendering.AttachmentDescriptor.clearDepth = nil

---@property readwrite CS.UnityEngine.Rendering.AttachmentDescriptor.clearStencil : CS.System.UInt32
CS.UnityEngine.Rendering.AttachmentDescriptor.clearStencil = nil

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Rendering.AttachmentDescriptor
function CS.UnityEngine.Rendering.AttachmentDescriptor(format)
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.UnityEngine.Rendering.AttachmentDescriptor
function CS.UnityEngine.Rendering.AttachmentDescriptor(format)
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@param target : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents : CS.System.Boolean
---@param storeResults : CS.System.Boolean
---@param resolve : CS.System.Boolean
---@return CS.UnityEngine.Rendering.AttachmentDescriptor
function CS.UnityEngine.Rendering.AttachmentDescriptor(format, target, loadExistingContents, storeResults, resolve)
end

---@param target : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents : CS.System.Boolean
---@param storeResults : CS.System.Boolean
function CS.UnityEngine.Rendering.AttachmentDescriptor:ConfigureTarget(target, loadExistingContents, storeResults)
end

---@param target : CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.AttachmentDescriptor:ConfigureResolveTarget(target)
end

---@param clearColor : CS.UnityEngine.Color
---@param clearDepth : CS.System.Single
---@param clearStencil : CS.System.UInt32
function CS.UnityEngine.Rendering.AttachmentDescriptor:ConfigureClear(clearColor, clearDepth, clearStencil)
end

---@param other : CS.UnityEngine.Rendering.AttachmentDescriptor
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.AttachmentDescriptor:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.AttachmentDescriptor:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.AttachmentDescriptor:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.AttachmentDescriptor
---@param right : CS.UnityEngine.Rendering.AttachmentDescriptor
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.AttachmentDescriptor.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.AttachmentDescriptor
---@param right : CS.UnityEngine.Rendering.AttachmentDescriptor
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.AttachmentDescriptor.op_Inequality(left, right)
end