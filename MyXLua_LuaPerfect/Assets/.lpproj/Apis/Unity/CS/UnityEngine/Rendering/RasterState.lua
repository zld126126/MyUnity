---@class CS.UnityEngine.Rendering.RasterState : CS.System.ValueType
CS.UnityEngine.Rendering.RasterState = {}

---@field public CS.UnityEngine.Rendering.RasterState.defaultValue : CS.UnityEngine.Rendering.RasterState
CS.UnityEngine.Rendering.RasterState.defaultValue = nil

---@property readwrite CS.UnityEngine.Rendering.RasterState.cullingMode : CS.UnityEngine.Rendering.CullMode
CS.UnityEngine.Rendering.RasterState.cullingMode = nil

---@property readwrite CS.UnityEngine.Rendering.RasterState.depthClip : CS.System.Boolean
CS.UnityEngine.Rendering.RasterState.depthClip = nil

---@property readwrite CS.UnityEngine.Rendering.RasterState.conservative : CS.System.Boolean
CS.UnityEngine.Rendering.RasterState.conservative = nil

---@property readwrite CS.UnityEngine.Rendering.RasterState.offsetUnits : CS.System.Int32
CS.UnityEngine.Rendering.RasterState.offsetUnits = nil

---@property readwrite CS.UnityEngine.Rendering.RasterState.offsetFactor : CS.System.Single
CS.UnityEngine.Rendering.RasterState.offsetFactor = nil

---@param cullingMode : CS.UnityEngine.Rendering.CullMode
---@param offsetUnits : CS.System.Int32
---@param offsetFactor : CS.System.Single
---@param depthClip : CS.System.Boolean
---@return CS.UnityEngine.Rendering.RasterState
function CS.UnityEngine.Rendering.RasterState(cullingMode, offsetUnits, offsetFactor, depthClip)
end

---@param other : CS.UnityEngine.Rendering.RasterState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RasterState:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RasterState:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.RasterState:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.RasterState
---@param right : CS.UnityEngine.Rendering.RasterState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RasterState.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.RasterState
---@param right : CS.UnityEngine.Rendering.RasterState
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RasterState.op_Inequality(left, right)
end