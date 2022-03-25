---@class CS.UnityEngine.Joint : CS.UnityEngine.Component
CS.UnityEngine.Joint = {}

---@property readwrite CS.UnityEngine.Joint.connectedBody : CS.UnityEngine.Rigidbody
CS.UnityEngine.Joint.connectedBody = nil

---@property readwrite CS.UnityEngine.Joint.connectedArticulationBody : CS.UnityEngine.ArticulationBody
CS.UnityEngine.Joint.connectedArticulationBody = nil

---@property readwrite CS.UnityEngine.Joint.axis : CS.UnityEngine.Vector3
CS.UnityEngine.Joint.axis = nil

---@property readwrite CS.UnityEngine.Joint.anchor : CS.UnityEngine.Vector3
CS.UnityEngine.Joint.anchor = nil

---@property readwrite CS.UnityEngine.Joint.connectedAnchor : CS.UnityEngine.Vector3
CS.UnityEngine.Joint.connectedAnchor = nil

---@property readwrite CS.UnityEngine.Joint.autoConfigureConnectedAnchor : CS.System.Boolean
CS.UnityEngine.Joint.autoConfigureConnectedAnchor = nil

---@property readwrite CS.UnityEngine.Joint.breakForce : CS.System.Single
CS.UnityEngine.Joint.breakForce = nil

---@property readwrite CS.UnityEngine.Joint.breakTorque : CS.System.Single
CS.UnityEngine.Joint.breakTorque = nil

---@property readwrite CS.UnityEngine.Joint.enableCollision : CS.System.Boolean
CS.UnityEngine.Joint.enableCollision = nil

---@property readwrite CS.UnityEngine.Joint.enablePreprocessing : CS.System.Boolean
CS.UnityEngine.Joint.enablePreprocessing = nil

---@property readwrite CS.UnityEngine.Joint.massScale : CS.System.Single
CS.UnityEngine.Joint.massScale = nil

---@property readwrite CS.UnityEngine.Joint.connectedMassScale : CS.System.Single
CS.UnityEngine.Joint.connectedMassScale = nil

---@property readonly CS.UnityEngine.Joint.currentForce : CS.UnityEngine.Vector3
CS.UnityEngine.Joint.currentForce = nil

---@property readonly CS.UnityEngine.Joint.currentTorque : CS.UnityEngine.Vector3
CS.UnityEngine.Joint.currentTorque = nil

---@return CS.UnityEngine.Joint
function CS.UnityEngine.Joint()
end