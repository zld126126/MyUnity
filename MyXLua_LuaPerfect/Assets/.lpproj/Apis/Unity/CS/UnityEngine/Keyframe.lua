---@class CS.UnityEngine.Keyframe : CS.System.ValueType
CS.UnityEngine.Keyframe = {}

---@property readwrite CS.UnityEngine.Keyframe.time : CS.System.Single
CS.UnityEngine.Keyframe.time = nil

---@property readwrite CS.UnityEngine.Keyframe.value : CS.System.Single
CS.UnityEngine.Keyframe.value = nil

---@property readwrite CS.UnityEngine.Keyframe.inTangent : CS.System.Single
CS.UnityEngine.Keyframe.inTangent = nil

---@property readwrite CS.UnityEngine.Keyframe.outTangent : CS.System.Single
CS.UnityEngine.Keyframe.outTangent = nil

---@property readwrite CS.UnityEngine.Keyframe.inWeight : CS.System.Single
CS.UnityEngine.Keyframe.inWeight = nil

---@property readwrite CS.UnityEngine.Keyframe.outWeight : CS.System.Single
CS.UnityEngine.Keyframe.outWeight = nil

---@property readwrite CS.UnityEngine.Keyframe.weightedMode : CS.UnityEngine.WeightedMode
CS.UnityEngine.Keyframe.weightedMode = nil

---@property readwrite CS.UnityEngine.Keyframe.tangentMode : CS.System.Int32
CS.UnityEngine.Keyframe.tangentMode = nil

---@param time : CS.System.Single
---@param value : CS.System.Single
---@return CS.UnityEngine.Keyframe
function CS.UnityEngine.Keyframe(time, value)
end

---@param time : CS.System.Single
---@param value : CS.System.Single
---@param inTangent : CS.System.Single
---@param outTangent : CS.System.Single
---@return CS.UnityEngine.Keyframe
function CS.UnityEngine.Keyframe(time, value, inTangent, outTangent)
end

---@param time : CS.System.Single
---@param value : CS.System.Single
---@param inTangent : CS.System.Single
---@param outTangent : CS.System.Single
---@param inWeight : CS.System.Single
---@param outWeight : CS.System.Single
---@return CS.UnityEngine.Keyframe
function CS.UnityEngine.Keyframe(time, value, inTangent, outTangent, inWeight, outWeight)
end