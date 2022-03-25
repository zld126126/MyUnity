---@class CS.UnityEngine.Rendering.RenderTargetBlendState : CS.System.ValueType
CS.UnityEngine.Rendering.RenderTargetBlendState = {}

---@property readonly CS.UnityEngine.Rendering.RenderTargetBlendState.defaultValue : CS.UnityEngine.Rendering.RenderTargetBlendState
CS.UnityEngine.Rendering.RenderTargetBlendState.defaultValue = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.writeMask : CS.UnityEngine.Rendering.ColorWriteMask
CS.UnityEngine.Rendering.RenderTargetBlendState.writeMask = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.sourceColorBlendMode : CS.UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.RenderTargetBlendState.sourceColorBlendMode = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.destinationColorBlendMode : CS.UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.RenderTargetBlendState.destinationColorBlendMode = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.sourceAlphaBlendMode : CS.UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.RenderTargetBlendState.sourceAlphaBlendMode = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.destinationAlphaBlendMode : CS.UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.RenderTargetBlendState.destinationAlphaBlendMode = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.colorBlendOperation : CS.UnityEngine.Rendering.BlendOp
CS.UnityEngine.Rendering.RenderTargetBlendState.colorBlendOperation = nil

---@property readwrite CS.UnityEngine.Rendering.RenderTargetBlendState.alphaBlendOperation : CS.UnityEngine.Rendering.BlendOp
CS.UnityEngine.Rendering.RenderTargetBlendState.alphaBlendOperation = nil

---@param writeMask : CS.UnityEngine.Rendering.ColorWriteMask
---@param sourceColorBlendMode : CS.UnityEngine.Rendering.BlendMode
---@param destinationColorBlendMode : CS.UnityEngine.Rendering.BlendMode
---@param sourceAlphaBlendMode : CS.UnityEngine.Rendering.BlendMode
---@param destinationAlphaBlendMode : CS.UnityEngine.Rendering.BlendMode
---@param colorBlendOperation : CS.UnityEngine.Rendering.BlendOp
---@param alphaBlendOperation : CS.UnityEngine.Rendering.BlendOp
---@return CS.UnityEngine.Rendering.RenderTargetBlendState
function CS.UnityEngine.Rendering.RenderTargetBlendState(writeMask, sourceColorBlendMode, destinationColorBlendMode, sourceAlphaBlendMode, destinationAlphaBlendMode, colorBlendOperation, alphaBlendOperation)
end

---@param other : CS.UnityEngine.Rendering.RenderTargetBlendState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetBlendState:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetBlendState:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.RenderTargetBlendState:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.RenderTargetBlendState
---@param right : CS.UnityEngine.Rendering.RenderTargetBlendState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetBlendState.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.RenderTargetBlendState
---@param right : CS.UnityEngine.Rendering.RenderTargetBlendState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetBlendState.op_Inequality(left, right)
end