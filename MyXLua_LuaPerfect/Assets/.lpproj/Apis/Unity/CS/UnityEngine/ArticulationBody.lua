---@class CS.UnityEngine.ArticulationBody : CS.UnityEngine.Behaviour
CS.UnityEngine.ArticulationBody = {}

---@property readwrite CS.UnityEngine.ArticulationBody.jointType : CS.UnityEngine.ArticulationJointType
CS.UnityEngine.ArticulationBody.jointType = nil

---@property readwrite CS.UnityEngine.ArticulationBody.anchorPosition : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.anchorPosition = nil

---@property readwrite CS.UnityEngine.ArticulationBody.parentAnchorPosition : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.parentAnchorPosition = nil

---@property readwrite CS.UnityEngine.ArticulationBody.anchorRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.ArticulationBody.anchorRotation = nil

---@property readwrite CS.UnityEngine.ArticulationBody.parentAnchorRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.ArticulationBody.parentAnchorRotation = nil

---@property readonly CS.UnityEngine.ArticulationBody.isRoot : CS.System.Boolean
CS.UnityEngine.ArticulationBody.isRoot = nil

---@property readwrite CS.UnityEngine.ArticulationBody.linearLockX : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.linearLockX = nil

---@property readwrite CS.UnityEngine.ArticulationBody.linearLockY : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.linearLockY = nil

---@property readwrite CS.UnityEngine.ArticulationBody.linearLockZ : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.linearLockZ = nil

---@property readwrite CS.UnityEngine.ArticulationBody.swingYLock : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.swingYLock = nil

---@property readwrite CS.UnityEngine.ArticulationBody.swingZLock : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.swingZLock = nil

---@property readwrite CS.UnityEngine.ArticulationBody.twistLock : CS.UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationBody.twistLock = nil

---@property readwrite CS.UnityEngine.ArticulationBody.xDrive : CS.UnityEngine.ArticulationDrive
CS.UnityEngine.ArticulationBody.xDrive = nil

---@property readwrite CS.UnityEngine.ArticulationBody.yDrive : CS.UnityEngine.ArticulationDrive
CS.UnityEngine.ArticulationBody.yDrive = nil

---@property readwrite CS.UnityEngine.ArticulationBody.zDrive : CS.UnityEngine.ArticulationDrive
CS.UnityEngine.ArticulationBody.zDrive = nil

---@property readwrite CS.UnityEngine.ArticulationBody.immovable : CS.System.Boolean
CS.UnityEngine.ArticulationBody.immovable = nil

---@property readwrite CS.UnityEngine.ArticulationBody.useGravity : CS.System.Boolean
CS.UnityEngine.ArticulationBody.useGravity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.linearDamping : CS.System.Single
CS.UnityEngine.ArticulationBody.linearDamping = nil

---@property readwrite CS.UnityEngine.ArticulationBody.angularDamping : CS.System.Single
CS.UnityEngine.ArticulationBody.angularDamping = nil

---@property readwrite CS.UnityEngine.ArticulationBody.jointFriction : CS.System.Single
CS.UnityEngine.ArticulationBody.jointFriction = nil

---@property readwrite CS.UnityEngine.ArticulationBody.velocity : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.velocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.angularVelocity : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.angularVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.mass : CS.System.Single
CS.UnityEngine.ArticulationBody.mass = nil

---@property readwrite CS.UnityEngine.ArticulationBody.centerOfMass : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.centerOfMass = nil

---@property readonly CS.UnityEngine.ArticulationBody.worldCenterOfMass : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.worldCenterOfMass = nil

---@property readwrite CS.UnityEngine.ArticulationBody.inertiaTensor : CS.UnityEngine.Vector3
CS.UnityEngine.ArticulationBody.inertiaTensor = nil

---@property readwrite CS.UnityEngine.ArticulationBody.inertiaTensorRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.ArticulationBody.inertiaTensorRotation = nil

---@property readwrite CS.UnityEngine.ArticulationBody.sleepThreshold : CS.System.Single
CS.UnityEngine.ArticulationBody.sleepThreshold = nil

---@property readwrite CS.UnityEngine.ArticulationBody.solverIterations : CS.System.Int32
CS.UnityEngine.ArticulationBody.solverIterations = nil

---@property readwrite CS.UnityEngine.ArticulationBody.solverVelocityIterations : CS.System.Int32
CS.UnityEngine.ArticulationBody.solverVelocityIterations = nil

---@property readwrite CS.UnityEngine.ArticulationBody.maxAngularVelocity : CS.System.Single
CS.UnityEngine.ArticulationBody.maxAngularVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.maxLinearVelocity : CS.System.Single
CS.UnityEngine.ArticulationBody.maxLinearVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.maxJointVelocity : CS.System.Single
CS.UnityEngine.ArticulationBody.maxJointVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.maxDepenetrationVelocity : CS.System.Single
CS.UnityEngine.ArticulationBody.maxDepenetrationVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.jointPosition : CS.UnityEngine.ArticulationReducedSpace
CS.UnityEngine.ArticulationBody.jointPosition = nil

---@property readwrite CS.UnityEngine.ArticulationBody.jointVelocity : CS.UnityEngine.ArticulationReducedSpace
CS.UnityEngine.ArticulationBody.jointVelocity = nil

---@property readwrite CS.UnityEngine.ArticulationBody.jointAcceleration : CS.UnityEngine.ArticulationReducedSpace
CS.UnityEngine.ArticulationBody.jointAcceleration = nil

---@property readwrite CS.UnityEngine.ArticulationBody.jointForce : CS.UnityEngine.ArticulationReducedSpace
CS.UnityEngine.ArticulationBody.jointForce = nil

---@property readonly CS.UnityEngine.ArticulationBody.dofCount : CS.System.Int32
CS.UnityEngine.ArticulationBody.dofCount = nil

---@property readonly CS.UnityEngine.ArticulationBody.index : CS.System.Int32
CS.UnityEngine.ArticulationBody.index = nil

---@property readwrite CS.UnityEngine.ArticulationBody.collisionDetectionMode : CS.UnityEngine.CollisionDetectionMode
CS.UnityEngine.ArticulationBody.collisionDetectionMode = nil

---@return CS.UnityEngine.ArticulationBody
function CS.UnityEngine.ArticulationBody()
end

---@param force : CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:AddForce(force)
end

---@param force : CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:AddRelativeForce(force)
end

---@param torque : CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:AddTorque(torque)
end

---@param torque : CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:AddRelativeTorque(torque)
end

---@param force : CS.UnityEngine.Vector3
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:AddForceAtPosition(force, position)
end

function CS.UnityEngine.ArticulationBody:ResetCenterOfMass()
end

function CS.UnityEngine.ArticulationBody:ResetInertiaTensor()
end

function CS.UnityEngine.ArticulationBody:Sleep()
end

---@return CS.System.Boolean
function CS.UnityEngine.ArticulationBody:IsSleeping()
end

function CS.UnityEngine.ArticulationBody:WakeUp()
end

---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.ArticulationBody:TeleportRoot(position, rotation)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:GetClosestPoint(point)
end

---@param relativePoint : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:GetRelativePointVelocity(relativePoint)
end

---@param worldPoint : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.ArticulationBody:GetPointVelocity(worldPoint)
end

---@param jacobian : CS.UnityEngine.ArticulationJacobian
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetDenseJacobian(jacobian)
end

---@param positions : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetJointPositions(positions)
end

---@param positions : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetJointPositions(positions)
end

---@param velocities : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetJointVelocities(velocities)
end

---@param velocities : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetJointVelocities(velocities)
end

---@param accelerations : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetJointAccelerations(accelerations)
end

---@param accelerations : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetJointAccelerations(accelerations)
end

---@param forces : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetJointForces(forces)
end

---@param forces : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetJointForces(forces)
end

---@param targets : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetDriveTargets(targets)
end

---@param targets : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetDriveTargets(targets)
end

---@param targetVelocities : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetDriveTargetVelocities(targetVelocities)
end

---@param targetVelocities : CS.System.Collections.Generic.List
function CS.UnityEngine.ArticulationBody:SetDriveTargetVelocities(targetVelocities)
end

---@param dofStartIndices : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.ArticulationBody:GetDofStartIndices(dofStartIndices)
end