---@class CS.UnityEngine.Rendering.StencilState : CS.System.ValueType
CS.UnityEngine.Rendering.StencilState = {}

---@property readonly CS.UnityEngine.Rendering.StencilState.defaultValue : CS.UnityEngine.Rendering.StencilState
CS.UnityEngine.Rendering.StencilState.defaultValue = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.enabled : CS.System.Boolean
CS.UnityEngine.Rendering.StencilState.enabled = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.readMask : CS.System.Byte
CS.UnityEngine.Rendering.StencilState.readMask = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.writeMask : CS.System.Byte
CS.UnityEngine.Rendering.StencilState.writeMask = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.compareFunctionFront : CS.UnityEngine.Rendering.CompareFunction
CS.UnityEngine.Rendering.StencilState.compareFunctionFront = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.passOperationFront : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.passOperationFront = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.failOperationFront : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.failOperationFront = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.zFailOperationFront : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.zFailOperationFront = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.compareFunctionBack : CS.UnityEngine.Rendering.CompareFunction
CS.UnityEngine.Rendering.StencilState.compareFunctionBack = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.passOperationBack : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.passOperationBack = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.failOperationBack : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.failOperationBack = nil

---@property readwrite CS.UnityEngine.Rendering.StencilState.zFailOperationBack : CS.UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilState.zFailOperationBack = nil

---@param enabled : CS.System.Boolean
---@param readMask : CS.System.Byte
---@param writeMask : CS.System.Byte
---@param compareFunction : CS.UnityEngine.Rendering.CompareFunction
---@param passOperation : CS.UnityEngine.Rendering.StencilOp
---@param failOperation : CS.UnityEngine.Rendering.StencilOp
---@param zFailOperation : CS.UnityEngine.Rendering.StencilOp
---@return CS.UnityEngine.Rendering.StencilState
function CS.UnityEngine.Rendering.StencilState(enabled, readMask, writeMask, compareFunction, passOperation, failOperation, zFailOperation)
end

---@param enabled : CS.System.Boolean
---@param readMask : CS.System.Byte
---@param writeMask : CS.System.Byte
---@param compareFunctionFront : CS.UnityEngine.Rendering.CompareFunction
---@param passOperationFront : CS.UnityEngine.Rendering.StencilOp
---@param failOperationFront : CS.UnityEngine.Rendering.StencilOp
---@param zFailOperationFront : CS.UnityEngine.Rendering.StencilOp
---@param compareFunctionBack : CS.UnityEngine.Rendering.CompareFunction
---@param passOperationBack : CS.UnityEngine.Rendering.StencilOp
---@param failOperationBack : CS.UnityEngine.Rendering.StencilOp
---@param zFailOperationBack : CS.UnityEngine.Rendering.StencilOp
---@return CS.UnityEngine.Rendering.StencilState
function CS.UnityEngine.Rendering.StencilState(enabled, readMask, writeMask, compareFunctionFront, passOperationFront, failOperationFront, zFailOperationFront, compareFunctionBack, passOperationBack, failOperationBack, zFailOperationBack)
end

---@param value : CS.UnityEngine.Rendering.CompareFunction
function CS.UnityEngine.Rendering.StencilState:SetCompareFunction(value)
end

---@param value : CS.UnityEngine.Rendering.StencilOp
function CS.UnityEngine.Rendering.StencilState:SetPassOperation(value)
end

---@param value : CS.UnityEngine.Rendering.StencilOp
function CS.UnityEngine.Rendering.StencilState:SetFailOperation(value)
end

---@param value : CS.UnityEngine.Rendering.StencilOp
function CS.UnityEngine.Rendering.StencilState:SetZFailOperation(value)
end

---@param other : CS.UnityEngine.Rendering.StencilState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.StencilState:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.StencilState:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.StencilState:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.StencilState
---@param right : CS.UnityEngine.Rendering.StencilState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.StencilState.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.StencilState
---@param right : CS.UnityEngine.Rendering.StencilState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.StencilState.op_Inequality(left, right)
end