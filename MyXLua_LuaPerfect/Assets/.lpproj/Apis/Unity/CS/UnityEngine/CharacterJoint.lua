---@class CS.UnityEngine.CharacterJoint : CS.UnityEngine.Joint
CS.UnityEngine.CharacterJoint = {}

---@field public CS.UnityEngine.CharacterJoint.targetRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.CharacterJoint.targetRotation = nil

---@field public CS.UnityEngine.CharacterJoint.targetAngularVelocity : CS.UnityEngine.Vector3
CS.UnityEngine.CharacterJoint.targetAngularVelocity = nil

---@field public CS.UnityEngine.CharacterJoint.rotationDrive : CS.UnityEngine.JointDrive
CS.UnityEngine.CharacterJoint.rotationDrive = nil

---@property readwrite CS.UnityEngine.CharacterJoint.swingAxis : CS.UnityEngine.Vector3
CS.UnityEngine.CharacterJoint.swingAxis = nil

---@property readwrite CS.UnityEngine.CharacterJoint.twistLimitSpring : CS.UnityEngine.SoftJointLimitSpring
CS.UnityEngine.CharacterJoint.twistLimitSpring = nil

---@property readwrite CS.UnityEngine.CharacterJoint.swingLimitSpring : CS.UnityEngine.SoftJointLimitSpring
CS.UnityEngine.CharacterJoint.swingLimitSpring = nil

---@property readwrite CS.UnityEngine.CharacterJoint.lowTwistLimit : CS.UnityEngine.SoftJointLimit
CS.UnityEngine.CharacterJoint.lowTwistLimit = nil

---@property readwrite CS.UnityEngine.CharacterJoint.highTwistLimit : CS.UnityEngine.SoftJointLimit
CS.UnityEngine.CharacterJoint.highTwistLimit = nil

---@property readwrite CS.UnityEngine.CharacterJoint.swing1Limit : CS.UnityEngine.SoftJointLimit
CS.UnityEngine.CharacterJoint.swing1Limit = nil

---@property readwrite CS.UnityEngine.CharacterJoint.swing2Limit : CS.UnityEngine.SoftJointLimit
CS.UnityEngine.CharacterJoint.swing2Limit = nil

---@property readwrite CS.UnityEngine.CharacterJoint.enableProjection : CS.System.Boolean
CS.UnityEngine.CharacterJoint.enableProjection = nil

---@property readwrite CS.UnityEngine.CharacterJoint.projectionDistance : CS.System.Single
CS.UnityEngine.CharacterJoint.projectionDistance = nil

---@property readwrite CS.UnityEngine.CharacterJoint.projectionAngle : CS.System.Single
CS.UnityEngine.CharacterJoint.projectionAngle = nil

---@return CS.UnityEngine.CharacterJoint
function CS.UnityEngine.CharacterJoint()
end