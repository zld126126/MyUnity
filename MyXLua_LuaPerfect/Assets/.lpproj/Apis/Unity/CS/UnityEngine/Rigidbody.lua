---@class CS.UnityEngine.Rigidbody : CS.UnityEngine.Component
CS.UnityEngine.Rigidbody = {}

---@property readwrite CS.UnityEngine.Rigidbody.velocity : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.velocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.angularVelocity : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.angularVelocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.drag : CS.System.Single
CS.UnityEngine.Rigidbody.drag = nil

---@property readwrite CS.UnityEngine.Rigidbody.angularDrag : CS.System.Single
CS.UnityEngine.Rigidbody.angularDrag = nil

---@property readwrite CS.UnityEngine.Rigidbody.mass : CS.System.Single
CS.UnityEngine.Rigidbody.mass = nil

---@property readwrite CS.UnityEngine.Rigidbody.useGravity : CS.System.Boolean
CS.UnityEngine.Rigidbody.useGravity = nil

---@property readwrite CS.UnityEngine.Rigidbody.maxDepenetrationVelocity : CS.System.Single
CS.UnityEngine.Rigidbody.maxDepenetrationVelocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.isKinematic : CS.System.Boolean
CS.UnityEngine.Rigidbody.isKinematic = nil

---@property readwrite CS.UnityEngine.Rigidbody.freezeRotation : CS.System.Boolean
CS.UnityEngine.Rigidbody.freezeRotation = nil

---@property readwrite CS.UnityEngine.Rigidbody.constraints : CS.UnityEngine.RigidbodyConstraints
CS.UnityEngine.Rigidbody.constraints = nil

---@property readwrite CS.UnityEngine.Rigidbody.collisionDetectionMode : CS.UnityEngine.CollisionDetectionMode
CS.UnityEngine.Rigidbody.collisionDetectionMode = nil

---@property readwrite CS.UnityEngine.Rigidbody.centerOfMass : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.centerOfMass = nil

---@property readonly CS.UnityEngine.Rigidbody.worldCenterOfMass : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.worldCenterOfMass = nil

---@property readwrite CS.UnityEngine.Rigidbody.inertiaTensorRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Rigidbody.inertiaTensorRotation = nil

---@property readwrite CS.UnityEngine.Rigidbody.inertiaTensor : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.inertiaTensor = nil

---@property readwrite CS.UnityEngine.Rigidbody.detectCollisions : CS.System.Boolean
CS.UnityEngine.Rigidbody.detectCollisions = nil

---@property readwrite CS.UnityEngine.Rigidbody.position : CS.UnityEngine.Vector3
CS.UnityEngine.Rigidbody.position = nil

---@property readwrite CS.UnityEngine.Rigidbody.rotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Rigidbody.rotation = nil

---@property readwrite CS.UnityEngine.Rigidbody.interpolation : CS.UnityEngine.RigidbodyInterpolation
CS.UnityEngine.Rigidbody.interpolation = nil

---@property readwrite CS.UnityEngine.Rigidbody.solverIterations : CS.System.Int32
CS.UnityEngine.Rigidbody.solverIterations = nil

---@property readwrite CS.UnityEngine.Rigidbody.sleepThreshold : CS.System.Single
CS.UnityEngine.Rigidbody.sleepThreshold = nil

---@property readwrite CS.UnityEngine.Rigidbody.maxAngularVelocity : CS.System.Single
CS.UnityEngine.Rigidbody.maxAngularVelocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.solverVelocityIterations : CS.System.Int32
CS.UnityEngine.Rigidbody.solverVelocityIterations = nil

---@property readwrite CS.UnityEngine.Rigidbody.sleepVelocity : CS.System.Single
CS.UnityEngine.Rigidbody.sleepVelocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.sleepAngularVelocity : CS.System.Single
CS.UnityEngine.Rigidbody.sleepAngularVelocity = nil

---@property readwrite CS.UnityEngine.Rigidbody.useConeFriction : CS.System.Boolean
CS.UnityEngine.Rigidbody.useConeFriction = nil

---@property readwrite CS.UnityEngine.Rigidbody.solverIterationCount : CS.System.Int32
CS.UnityEngine.Rigidbody.solverIterationCount = nil

---@property readwrite CS.UnityEngine.Rigidbody.solverVelocityIterationCount : CS.System.Int32
CS.UnityEngine.Rigidbody.solverVelocityIterationCount = nil

---@return CS.UnityEngine.Rigidbody
function CS.UnityEngine.Rigidbody()
end

---@param density : CS.System.Single
function CS.UnityEngine.Rigidbody:SetDensity(density)
end

---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:MovePosition(position)
end

---@param rot : CS.UnityEngine.Quaternion
function CS.UnityEngine.Rigidbody:MoveRotation(rot)
end

function CS.UnityEngine.Rigidbody:Sleep()
end

---@return CS.System.Boolean
function CS.UnityEngine.Rigidbody:IsSleeping()
end

function CS.UnityEngine.Rigidbody:WakeUp()
end

function CS.UnityEngine.Rigidbody:ResetCenterOfMass()
end

function CS.UnityEngine.Rigidbody:ResetInertiaTensor()
end

---@param relativePoint : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:GetRelativePointVelocity(relativePoint)
end

---@param worldPoint : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:GetPointVelocity(worldPoint)
end

---@param a : CS.System.Single
function CS.UnityEngine.Rigidbody:SetMaxAngularVelocity(a)
end

---@param force : CS.UnityEngine.Vector3
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddForce(force, mode)
end

---@param force : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:AddForce(force)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddForce(x, y, z, mode)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Rigidbody:AddForce(x, y, z)
end

---@param force : CS.UnityEngine.Vector3
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddRelativeForce(force, mode)
end

---@param force : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:AddRelativeForce(force)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddRelativeForce(x, y, z, mode)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Rigidbody:AddRelativeForce(x, y, z)
end

---@param torque : CS.UnityEngine.Vector3
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddTorque(torque, mode)
end

---@param torque : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:AddTorque(torque)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddTorque(x, y, z, mode)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Rigidbody:AddTorque(x, y, z)
end

---@param torque : CS.UnityEngine.Vector3
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddRelativeTorque(torque, mode)
end

---@param torque : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:AddRelativeTorque(torque)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddRelativeTorque(x, y, z, mode)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Rigidbody:AddRelativeTorque(x, y, z)
end

---@param force : CS.UnityEngine.Vector3
---@param position : CS.UnityEngine.Vector3
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddForceAtPosition(force, position, mode)
end

---@param force : CS.UnityEngine.Vector3
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:AddForceAtPosition(force, position)
end

---@param explosionForce : CS.System.Single
---@param explosionPosition : CS.UnityEngine.Vector3
---@param explosionRadius : CS.System.Single
---@param upwardsModifier : CS.System.Single
---@param mode : CS.UnityEngine.ForceMode
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius, upwardsModifier, mode)
end

---@param explosionForce : CS.System.Single
---@param explosionPosition : CS.UnityEngine.Vector3
---@param explosionRadius : CS.System.Single
---@param upwardsModifier : CS.System.Single
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius, upwardsModifier)
end

---@param explosionForce : CS.System.Single
---@param explosionPosition : CS.UnityEngine.Vector3
---@param explosionRadius : CS.System.Single
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Rigidbody:ClosestPointOnBounds(position)
end

---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.System.Boolean
function CS.UnityEngine.Rigidbody:SweepTest(direction, hitInfo, maxDistance, queryTriggerInteraction)
end

---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@param maxDistance : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Rigidbody:SweepTest(direction, hitInfo, maxDistance)
end

---@param direction : CS.UnityEngine.Vector3
---@param hitInfo : CS.UnityEngine.RaycastHit
---@return CS.System.Boolean
function CS.UnityEngine.Rigidbody:SweepTest(direction, hitInfo)
end

---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@param queryTriggerInteraction : CS.UnityEngine.QueryTriggerInteraction
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction, maxDistance, queryTriggerInteraction)
end

---@param direction : CS.UnityEngine.Vector3
---@param maxDistance : CS.System.Single
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction, maxDistance)
end

---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction)
end