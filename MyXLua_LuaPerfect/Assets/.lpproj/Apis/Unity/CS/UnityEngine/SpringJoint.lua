---@class CS.UnityEngine.SpringJoint : CS.UnityEngine.Joint
CS.UnityEngine.SpringJoint = {}

---@property readwrite CS.UnityEngine.SpringJoint.spring : CS.System.Single
CS.UnityEngine.SpringJoint.spring = nil

---@property readwrite CS.UnityEngine.SpringJoint.damper : CS.System.Single
CS.UnityEngine.SpringJoint.damper = nil

---@property readwrite CS.UnityEngine.SpringJoint.minDistance : CS.System.Single
CS.UnityEngine.SpringJoint.minDistance = nil

---@property readwrite CS.UnityEngine.SpringJoint.maxDistance : CS.System.Single
CS.UnityEngine.SpringJoint.maxDistance = nil

---@property readwrite CS.UnityEngine.SpringJoint.tolerance : CS.System.Single
CS.UnityEngine.SpringJoint.tolerance = nil

---@return CS.UnityEngine.SpringJoint
function CS.UnityEngine.SpringJoint()
end