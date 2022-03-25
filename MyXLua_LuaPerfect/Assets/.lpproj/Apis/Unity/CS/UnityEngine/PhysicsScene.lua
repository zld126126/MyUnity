---@class CS.UnityEngine.PhysicsScene : CS.System.ValueType
CS.UnityEngine.PhysicsScene = {}

---@return CS.System.String
function CS.UnityEngine.PhysicsScene:ToString()
end

---@param lhs : CS.UnityEngine.PhysicsScene
---@param rhs : CS.UnityEngine.PhysicsScene
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.PhysicsScene
---@param rhs : CS.UnityEngine.PhysicsScene
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene.op_Inequality(lhs, rhs)
end

---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:Equals(other)
end

---@param other : CS.UnityEngine.PhysicsScene
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:Equals(other)
end

---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:IsValid()
end

---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:IsEmpty()
end

---@param step : CS.System.Single
function CS.UnityEngine.PhysicsScene:Simulate(step)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:Raycast(origin, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param raycastHits : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:Raycast(origin, direction, raycastHits, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:CapsuleCast(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:OverlapCapsule(point0, point1, radius, results, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:SphereCast(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:OverlapSphere(position, radius, results, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.PhysicsScene:BoxCast(center, halfExtents, direction, hitInfo)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@param orientation : CS.UnityEngine.Quaternion
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:OverlapBox(center, halfExtents, results, orientation, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:OverlapBox(center, halfExtents, results)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:BoxCast(center, halfExtents, direction, results, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.PhysicsScene:BoxCast(center, halfExtents, direction, results)
end