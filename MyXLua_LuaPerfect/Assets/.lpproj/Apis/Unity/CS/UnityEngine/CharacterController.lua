---@class CS.UnityEngine.CharacterController : CS.UnityEngine.Collider
CS.UnityEngine.CharacterController = {}

---@property readonly CS.UnityEngine.CharacterController.velocity : CS.UnityEngine.Vector3
CS.UnityEngine.CharacterController.velocity = nil

---@property readonly CS.UnityEngine.CharacterController.isGrounded : CS.System.Boolean
CS.UnityEngine.CharacterController.isGrounded = nil

---@property readonly CS.UnityEngine.CharacterController.collisionFlags : CS.UnityEngine.CollisionFlags
CS.UnityEngine.CharacterController.collisionFlags = nil

---@property readwrite CS.UnityEngine.CharacterController.radius : CS.System.Single
CS.UnityEngine.CharacterController.radius = nil

---@property readwrite CS.UnityEngine.CharacterController.height : CS.System.Single
CS.UnityEngine.CharacterController.height = nil

---@property readwrite CS.UnityEngine.CharacterController.center : CS.UnityEngine.Vector3
CS.UnityEngine.CharacterController.center = nil

---@property readwrite CS.UnityEngine.CharacterController.slopeLimit : CS.System.Single
CS.UnityEngine.CharacterController.slopeLimit = nil

---@property readwrite CS.UnityEngine.CharacterController.stepOffset : CS.System.Single
CS.UnityEngine.CharacterController.stepOffset = nil

---@property readwrite CS.UnityEngine.CharacterController.skinWidth : CS.System.Single
CS.UnityEngine.CharacterController.skinWidth = nil

---@property readwrite CS.UnityEngine.CharacterController.minMoveDistance : CS.System.Single
CS.UnityEngine.CharacterController.minMoveDistance = nil

---@property readwrite CS.UnityEngine.CharacterController.detectCollisions : CS.System.Boolean
CS.UnityEngine.CharacterController.detectCollisions = nil

---@property readwrite CS.UnityEngine.CharacterController.enableOverlapRecovery : CS.System.Boolean
CS.UnityEngine.CharacterController.enableOverlapRecovery = nil

---@return CS.UnityEngine.CharacterController
function CS.UnityEngine.CharacterController()
end

---@param speed : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.CharacterController:SimpleMove(speed)
end

---@param motion : CS.UnityEngine.Vector3
---@return CS.UnityEngine.CollisionFlags
function CS.UnityEngine.CharacterController:Move(motion)
end