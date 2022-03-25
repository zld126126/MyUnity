---@class CS.UnityEngine.Rendering.ShadowSplitData : CS.System.ValueType
CS.UnityEngine.Rendering.ShadowSplitData = {}

---@field public CS.UnityEngine.Rendering.ShadowSplitData.maximumCullingPlaneCount : CS.System.Int32
CS.UnityEngine.Rendering.ShadowSplitData.maximumCullingPlaneCount = nil

---@property readwrite CS.UnityEngine.Rendering.ShadowSplitData.cullingPlaneCount : CS.System.Int32
CS.UnityEngine.Rendering.ShadowSplitData.cullingPlaneCount = nil

---@property readwrite CS.UnityEngine.Rendering.ShadowSplitData.cullingSphere : CS.UnityEngine.Vector4
CS.UnityEngine.Rendering.ShadowSplitData.cullingSphere = nil

---@property readwrite CS.UnityEngine.Rendering.ShadowSplitData.shadowCascadeBlendCullingFactor : CS.System.Single
CS.UnityEngine.Rendering.ShadowSplitData.shadowCascadeBlendCullingFactor = nil

---@param index : CS.System.Int32
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Rendering.ShadowSplitData:GetCullingPlane(index)
end

---@param index : CS.System.Int32
---@param plane : CS.UnityEngine.Plane
function CS.UnityEngine.Rendering.ShadowSplitData:SetCullingPlane(index, plane)
end

---@param other : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShadowSplitData:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShadowSplitData:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.ShadowSplitData:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.ShadowSplitData
---@param right : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShadowSplitData.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.ShadowSplitData
---@param right : CS.UnityEngine.Rendering.ShadowSplitData
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShadowSplitData.op_Inequality(left, right)
end