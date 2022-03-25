---@class CS.UnityEngine.Rendering.RenderStateBlock : CS.System.ValueType
CS.UnityEngine.Rendering.RenderStateBlock = {}

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.blendState : CS.UnityEngine.Rendering.BlendState
CS.UnityEngine.Rendering.RenderStateBlock.blendState = nil

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.rasterState : CS.UnityEngine.Rendering.RasterState
CS.UnityEngine.Rendering.RenderStateBlock.rasterState = nil

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.depthState : CS.UnityEngine.Rendering.DepthState
CS.UnityEngine.Rendering.RenderStateBlock.depthState = nil

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.stencilState : CS.UnityEngine.Rendering.StencilState
CS.UnityEngine.Rendering.RenderStateBlock.stencilState = nil

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.stencilReference : CS.System.Int32
CS.UnityEngine.Rendering.RenderStateBlock.stencilReference = nil

---@property readwrite CS.UnityEngine.Rendering.RenderStateBlock.mask : CS.UnityEngine.Rendering.RenderStateMask
CS.UnityEngine.Rendering.RenderStateBlock.mask = nil

---@param mask : CS.UnityEngine.Rendering.RenderStateMask
---@return CS.UnityEngine.Rendering.RenderStateBlock
function CS.UnityEngine.Rendering.RenderStateBlock(mask)
end

---@param other : CS.UnityEngine.Rendering.RenderStateBlock
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderStateBlock:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderStateBlock:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.RenderStateBlock:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.RenderStateBlock
---@param right : CS.UnityEngine.Rendering.RenderStateBlock
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderStateBlock.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.RenderStateBlock
---@param right : CS.UnityEngine.Rendering.RenderStateBlock
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderStateBlock.op_Inequality(left, right)
end