---@class CS.UnityEngine.Collider : CS.UnityEngine.Component
CS.UnityEngine.Collider = {}

---@property readwrite CS.UnityEngine.Collider.enabled : CS.System.Boolean
CS.UnityEngine.Collider.enabled = nil

---@property readonly CS.UnityEngine.Collider.attachedRigidbody : CS.UnityEngine.Rigidbody
CS.UnityEngine.Collider.attachedRigidbody = nil

---@property readonly CS.UnityEngine.Collider.attachedArticulationBody : CS.UnityEngine.ArticulationBody
CS.UnityEngine.Collider.attachedArticulationBody = nil

---@property readwrite CS.UnityEngine.Collider.isTrigger : CS.System.Boolean
CS.UnityEngine.Collider.isTrigger = nil

---@property readwrite CS.UnityEngine.Collider.contactOffset : CS.System.Single
CS.UnityEngine.Collider.contactOffset = nil

---@property readonly CS.UnityEngine.Collider.bounds : CS.UnityEngine.Bounds
CS.UnityEngine.Collider.bounds = nil

---@property readwrite CS.UnityEngine.Collider.sharedMaterial : CS.UnityEngine.PhysicMaterial
CS.UnityEngine.Collider.sharedMaterial = nil

---@property readwrite CS.UnityEngine.Collider.material : CS.UnityEngine.PhysicMaterial
CS.UnityEngine.Collider.material = nil

---@return CS.UnityEngine.Collider
function CS.UnityEngine.Collider()
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Collider:ClosestPoint(position)
end

---@param ray : CS.UnityEngine.Ray
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Collider:Raycast(ray, hitInfo, maxDistance)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Collider:ClosestPointOnBounds(position)
end