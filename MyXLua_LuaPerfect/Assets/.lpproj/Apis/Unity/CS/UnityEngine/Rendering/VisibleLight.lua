---@class CS.UnityEngine.Rendering.VisibleLight : CS.System.ValueType
CS.UnityEngine.Rendering.VisibleLight = {}

---@property readonly CS.UnityEngine.Rendering.VisibleLight.light : CS.UnityEngine.Light
CS.UnityEngine.Rendering.VisibleLight.light = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.lightType : CS.UnityEngine.LightType
CS.UnityEngine.Rendering.VisibleLight.lightType = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.finalColor : CS.UnityEngine.Color
CS.UnityEngine.Rendering.VisibleLight.finalColor = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.screenRect : CS.UnityEngine.Rect
CS.UnityEngine.Rendering.VisibleLight.screenRect = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.localToWorldMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Rendering.VisibleLight.localToWorldMatrix = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.range : CS.System.Single
CS.UnityEngine.Rendering.VisibleLight.range = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.spotAngle : CS.System.Single
CS.UnityEngine.Rendering.VisibleLight.spotAngle = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.intersectsNearPlane : CS.System.Boolean
CS.UnityEngine.Rendering.VisibleLight.intersectsNearPlane = nil

---@property readwrite CS.UnityEngine.Rendering.VisibleLight.intersectsFarPlane : CS.System.Boolean
CS.UnityEngine.Rendering.VisibleLight.intersectsFarPlane = nil

---@param other : CS.UnityEngine.Rendering.VisibleLight
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.VisibleLight:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.VisibleLight:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.VisibleLight:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.VisibleLight
---@param right : CS.UnityEngine.Rendering.VisibleLight
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.VisibleLight.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.VisibleLight
---@param right : CS.UnityEngine.Rendering.VisibleLight
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.VisibleLight.op_Inequality(left, right)
end