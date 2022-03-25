---@class CS.UnityEngine.BoundingSphere : CS.System.ValueType
CS.UnityEngine.BoundingSphere = {}

---@field public CS.UnityEngine.BoundingSphere.position : CS.UnityEngine.Vector3
CS.UnityEngine.BoundingSphere.position = nil

---@field public CS.UnityEngine.BoundingSphere.radius : CS.System.Single
CS.UnityEngine.BoundingSphere.radius = nil

---@param pos : CS.UnityEngine.Vector3
---@param rad : CS.System.Single
---@return CS.UnityEngine.BoundingSphere
function CS.UnityEngine.BoundingSphere(pos, rad)
end

---@param packedSphere : CS.UnityEngine.Vector4
---@return CS.UnityEngine.BoundingSphere
function CS.UnityEngine.BoundingSphere(packedSphere)
end