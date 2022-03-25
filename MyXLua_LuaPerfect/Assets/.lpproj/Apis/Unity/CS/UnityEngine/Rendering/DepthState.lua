---@class CS.UnityEngine.Rendering.DepthState : CS.System.ValueType
CS.UnityEngine.Rendering.DepthState = {}

---@property readonly CS.UnityEngine.Rendering.DepthState.defaultValue : CS.UnityEngine.Rendering.DepthState
CS.UnityEngine.Rendering.DepthState.defaultValue = nil

---@property readwrite CS.UnityEngine.Rendering.DepthState.writeEnabled : CS.System.Boolean
CS.UnityEngine.Rendering.DepthState.writeEnabled = nil

---@property readwrite CS.UnityEngine.Rendering.DepthState.compareFunction : CS.UnityEngine.Rendering.CompareFunction
CS.UnityEngine.Rendering.DepthState.compareFunction = nil

---@param writeEnabled : CS.System.Boolean
---@param compareFunction : CS.UnityEngine.Rendering.CompareFunction
---@return CS.UnityEngine.Rendering.DepthState
function CS.UnityEngine.Rendering.DepthState(writeEnabled, compareFunction)
end

---@param other : CS.UnityEngine.Rendering.DepthState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DepthState:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DepthState:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.DepthState:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.DepthState
---@param right : CS.UnityEngine.Rendering.DepthState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DepthState.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.DepthState
---@param right : CS.UnityEngine.Rendering.DepthState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DepthState.op_Inequality(left, right)
end