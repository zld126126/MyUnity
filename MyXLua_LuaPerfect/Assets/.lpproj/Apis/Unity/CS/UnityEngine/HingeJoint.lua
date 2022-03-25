---@class CS.UnityEngine.HingeJoint : CS.UnityEngine.Joint
CS.UnityEngine.HingeJoint = {}

---@property readwrite CS.UnityEngine.HingeJoint.motor : CS.UnityEngine.JointMotor
CS.UnityEngine.HingeJoint.motor = nil

---@property readwrite CS.UnityEngine.HingeJoint.limits : CS.UnityEngine.JointLimits
CS.UnityEngine.HingeJoint.limits = nil

---@property readwrite CS.UnityEngine.HingeJoint.spring : CS.UnityEngine.JointSpring
CS.UnityEngine.HingeJoint.spring = nil

---@property readwrite CS.UnityEngine.HingeJoint.useMotor : CS.System.Boolean
CS.UnityEngine.HingeJoint.useMotor = nil

---@property readwrite CS.UnityEngine.HingeJoint.useLimits : CS.System.Boolean
CS.UnityEngine.HingeJoint.useLimits = nil

---@property readwrite CS.UnityEngine.HingeJoint.useSpring : CS.System.Boolean
CS.UnityEngine.HingeJoint.useSpring = nil

---@property readonly CS.UnityEngine.HingeJoint.velocity : CS.System.Single
CS.UnityEngine.HingeJoint.velocity = nil

---@property readonly CS.UnityEngine.HingeJoint.angle : CS.System.Single
CS.UnityEngine.HingeJoint.angle = nil

---@return CS.UnityEngine.HingeJoint
function CS.UnityEngine.HingeJoint()
end