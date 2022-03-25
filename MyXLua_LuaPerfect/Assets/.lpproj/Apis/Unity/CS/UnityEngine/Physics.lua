---@class CS.UnityEngine.Physics : CS.System.Object
CS.UnityEngine.Physics = {}

---@field public CS.UnityEngine.Physics.IgnoreRaycastLayer : CS.System.Int32
CS.UnityEngine.Physics.IgnoreRaycastLayer = nil

---@field public CS.UnityEngine.Physics.DefaultRaycastLayers : CS.System.Int32
CS.UnityEngine.Physics.DefaultRaycastLayers = nil

---@field public CS.UnityEngine.Physics.AllLayers : CS.System.Int32
CS.UnityEngine.Physics.AllLayers = nil

---@field public CS.UnityEngine.Physics.kIgnoreRaycastLayer : CS.System.Int32
CS.UnityEngine.Physics.kIgnoreRaycastLayer = nil

---@field public CS.UnityEngine.Physics.kDefaultRaycastLayers : CS.System.Int32
CS.UnityEngine.Physics.kDefaultRaycastLayers = nil

---@field public CS.UnityEngine.Physics.kAllLayers : CS.System.Int32
CS.UnityEngine.Physics.kAllLayers = nil

---@property readwrite CS.UnityEngine.Physics.minPenetrationForPenalty : CS.System.Single
CS.UnityEngine.Physics.minPenetrationForPenalty = nil

---@property readwrite CS.UnityEngine.Physics.gravity : CS.UnityEngine.Vector3
CS.UnityEngine.Physics.gravity = nil

---@property readwrite CS.UnityEngine.Physics.defaultContactOffset : CS.System.Single
CS.UnityEngine.Physics.defaultContactOffset = nil

---@property readwrite CS.UnityEngine.Physics.sleepThreshold : CS.System.Single
CS.UnityEngine.Physics.sleepThreshold = nil

---@property readwrite CS.UnityEngine.Physics.queriesHitTriggers : CS.System.Boolean
CS.UnityEngine.Physics.queriesHitTriggers = nil

---@property readwrite CS.UnityEngine.Physics.queriesHitBackfaces : CS.System.Boolean
CS.UnityEngine.Physics.queriesHitBackfaces = nil

---@property readwrite CS.UnityEngine.Physics.bounceThreshold : CS.System.Single
CS.UnityEngine.Physics.bounceThreshold = nil

---@property readwrite CS.UnityEngine.Physics.defaultMaxDepenetrationVelocity : CS.System.Single
CS.UnityEngine.Physics.defaultMaxDepenetrationVelocity = nil

---@property readwrite CS.UnityEngine.Physics.defaultSolverIterations : CS.System.Int32
CS.UnityEngine.Physics.defaultSolverIterations = nil

---@property readwrite CS.UnityEngine.Physics.defaultSolverVelocityIterations : CS.System.Int32
CS.UnityEngine.Physics.defaultSolverVelocityIterations = nil

---@property readwrite CS.UnityEngine.Physics.bounceTreshold : CS.System.Single
CS.UnityEngine.Physics.bounceTreshold = nil

---@property readwrite CS.UnityEngine.Physics.sleepVelocity : CS.System.Single
CS.UnityEngine.Physics.sleepVelocity = nil

---@property readwrite CS.UnityEngine.Physics.sleepAngularVelocity : CS.System.Single
CS.UnityEngine.Physics.sleepAngularVelocity = nil

---@property readwrite CS.UnityEngine.Physics.maxAngularVelocity : CS.System.Single
CS.UnityEngine.Physics.maxAngularVelocity = nil

---@property readwrite CS.UnityEngine.Physics.solverIterationCount : CS.System.Int32
CS.UnityEngine.Physics.solverIterationCount = nil

---@property readwrite CS.UnityEngine.Physics.solverVelocityIterationCount : CS.System.Int32
CS.UnityEngine.Physics.solverVelocityIterationCount = nil

---@property readwrite CS.UnityEngine.Physics.penetrationPenaltyForce : CS.System.Single
CS.UnityEngine.Physics.penetrationPenaltyForce = nil

---@property readwrite CS.UnityEngine.Physics.defaultMaxAngularSpeed : CS.System.Single
CS.UnityEngine.Physics.defaultMaxAngularSpeed = nil

---@property readonly CS.UnityEngine.Physics.defaultPhysicsScene : CS.UnityEngine.PhysicsScene
CS.UnityEngine.Physics.defaultPhysicsScene = nil

---@property readwrite CS.UnityEngine.Physics.autoSimulation : CS.System.Boolean
CS.UnityEngine.Physics.autoSimulation = nil

---@property readwrite CS.UnityEngine.Physics.autoSyncTransforms : CS.System.Boolean
CS.UnityEngine.Physics.autoSyncTransforms = nil

---@property readwrite CS.UnityEngine.Physics.reuseCollisionCallbacks : CS.System.Boolean
CS.UnityEngine.Physics.reuseCollisionCallbacks = nil

---@property readwrite CS.UnityEngine.Physics.interCollisionDistance : CS.System.Single
CS.UnityEngine.Physics.interCollisionDistance = nil

---@property readwrite CS.UnityEngine.Physics.interCollisionStiffness : CS.System.Single
CS.UnityEngine.Physics.interCollisionStiffness = nil

---@property readwrite CS.UnityEngine.Physics.interCollisionSettingsToggle : CS.System.Boolean
CS.UnityEngine.Physics.interCollisionSettingsToggle = nil

---@property readwrite CS.UnityEngine.Physics.clothGravity : CS.UnityEngine.Vector3
CS.UnityEngine.Physics.clothGravity = nil

---@return CS.UnityEngine.Physics
function CS.UnityEngine.Physics()
end

---@param collider1 : CS.UnityEngine.Collider
---@param collider2 : CS.UnityEngine.Collider
---@param ignore : CS.System.Boolean
function CS.UnityEngine.Physics.IgnoreCollision(collider1, collider2, ignore)
end

---@param collider1 : CS.UnityEngine.Collider
---@param collider2 : CS.UnityEngine.Collider
function CS.UnityEngine.Physics.IgnoreCollision(collider1, collider2)
end

---@param layer1 : CS.System.Int32
---@param layer2 : CS.System.Int32
---@param ignore : CS.System.Boolean
function CS.UnityEngine.Physics.IgnoreLayerCollision(layer1, layer2, ignore)
end

---@param layer1 : CS.System.Int32
---@param layer2 : CS.System.Int32
function CS.UnityEngine.Physics.IgnoreLayerCollision(layer1, layer2)
end

---@param layer1 : CS.System.Int32
---@param layer2 : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.GetIgnoreLayerCollision(layer1, layer2)
end

---@param collider1 : CS.UnityEngine.Collider
---@param collider2 : CS.UnityEngine.Collider
---@return CS.System.Boolean
function CS.UnityEngine.Physics.GetIgnoreCollision(collider1, collider2)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, hitInfo, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, hitInfo, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(origin, direction, hitInfo)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray)
end

---@param ray : CS.UnityEngine.Ray
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, hitInfo, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, hitInfo, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Raycast(ray, hitInfo)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_, layerMask, queryTriggerInteraction)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_, layerMask)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_, hitInfo, layerMask, queryTriggerInteraction)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_, hitInfo, layerMask)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.Linecast(start, end_, hitInfo)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, maxDistance, layerMask)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, maxDistance)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction)
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
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, hitInfo)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(origin, radius, direction, hitInfo)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, hitInfo, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, hitInfo, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, hitInfo, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.SphereCast(ray, radius, hitInfo)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction)
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
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Physics.BoxCast(center, halfExtents, direction, hitInfo)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(origin, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(origin, direction, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(origin, direction, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(origin, direction)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(ray, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(ray, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(ray, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.RaycastAll(ray)
end

---@param ray : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(ray, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(ray, results, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(ray, results, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(ray, results)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(origin, direction, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(origin, direction, results, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(origin, direction, results, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.RaycastNonAlloc(origin, direction, results)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance, layerMask)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(origin, radius, direction, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(origin, radius, direction, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(origin, radius, direction, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(origin, radius, direction)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(ray, radius, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(ray, radius, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(ray, radius, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.SphereCastAll(ray, radius)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapCapsule(point0, point1, radius, layerMask, queryTriggerInteraction)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapCapsule(point0, point1, radius, layerMask)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapCapsule(point0, point1, radius)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapSphere(position, radius, layerMask, queryTriggerInteraction)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapSphere(position, radius, layerMask)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapSphere(position, radius)
end

---@param step : CS.System.Single
function CS.UnityEngine.Physics.Simulate(step)
end

function CS.UnityEngine.Physics.SyncTransforms()
end

---@param colliderA : CS.UnityEngine.Collider
---@param positionA : CS.UnityEngine.Vector3
---@param rotationA : CS.UnityEngine.Quaternion
---@param colliderB : CS.UnityEngine.Collider
---@param positionB : CS.UnityEngine.Vector3
---@param rotationB : CS.UnityEngine.Quaternion
---@param direction : CS.UnityEngine.Vector3
---@param distance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.ComputePenetration(colliderA, positionA, rotationA, colliderB, positionB, rotationB, direction, distance)
end

---@param point : CS.UnityEngine.Vector3
---@param collider : CS.UnityEngine.Collider
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Physics.ClosestPoint(point, collider, position, rotation)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapSphereNonAlloc(position, radius, results, layerMask, queryTriggerInteraction)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapSphereNonAlloc(position, radius, results, layerMask)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapSphereNonAlloc(position, radius, results)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckSphere(position, radius, layerMask, queryTriggerInteraction)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckSphere(position, radius, layerMask)
end

---@param position : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckSphere(position, radius)
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
function CS.UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance, layerMask)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance)
end

---@param point1 : CS.UnityEngine.Vector3
---@param point2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance, layerMask)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance)
end

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(origin, radius, direction, results)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results, maxDistance, layerMask, queryTriggerInteraction)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results, maxDistance, layerMask)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.RaycastHit[]
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results, maxDistance)
end

---@param ray : CS.UnityEngine.Ray
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckCapsule(start, end_, radius, layerMask, queryTriggerInteraction)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckCapsule(start, end_, radius, layerMask)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckCapsule(start, end_, radius)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param layermask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckBox(center, halfExtents, orientation, layermask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param layerMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckBox(center, halfExtents, orientation, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckBox(center, halfExtents, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Physics.CheckBox(center, halfExtents)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapBox(center, halfExtents, orientation, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapBox(center, halfExtents, orientation, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapBox(center, halfExtents, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Collider[]
function CS.UnityEngine.Physics.OverlapBox(center, halfExtents)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@param orientation : CS.UnityEngine.Quaternion
---@param mask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation, mask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@param orientation : CS.UnityEngine.Quaternion
---@param mask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation, mask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.Collider[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results)
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
function CS.UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.System.Int32
function CS.UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param results : CS.UnityEngine.RaycastHit[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance, layerMask)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.BoxCastAll(center, halfExtents, direction, orientation)
end

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Physics.BoxCastAll(center, halfExtents, direction)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results, layerMask, queryTriggerInteraction)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@param layerMask : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results, layerMask)
end

---@param point0 : CS.UnityEngine.Vector3
---@param point1 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param results : CS.UnityEngine.Collider[]
---@return CS.System.Int32
function CS.UnityEngine.Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results)
end

---@param worldBounds : CS.UnityEngine.Bounds
---@param subdivisions : CS.System.Int32
function CS.UnityEngine.Physics.RebuildBroadphaseRegions(worldBounds, subdivisions)
end

---@param meshID : CS.System.Int32
---@param convex : CS.System.Boolean
function CS.UnityEngine.Physics.BakeMesh(meshID, convex)
end