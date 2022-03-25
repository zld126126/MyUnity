---@class CS.UnityEngine.AnimationCurve : CS.System.Object
CS.UnityEngine.AnimationCurve = {}

---@property readwrite CS.UnityEngine.AnimationCurve.keys : CS.UnityEngine.Keyframe[]
CS.UnityEngine.AnimationCurve.keys = nil

---@property readonly CS.UnityEngine.AnimationCurve.Item : CS.UnityEngine.Keyframe
CS.UnityEngine.AnimationCurve.Item = nil

---@property readonly CS.UnityEngine.AnimationCurve.length : CS.System.Int32
CS.UnityEngine.AnimationCurve.length = nil

---@property readwrite CS.UnityEngine.AnimationCurve.preWrapMode : CS.UnityEngine.WrapMode
CS.UnityEngine.AnimationCurve.preWrapMode = nil

---@property readwrite CS.UnityEngine.AnimationCurve.postWrapMode : CS.UnityEngine.WrapMode
CS.UnityEngine.AnimationCurve.postWrapMode = nil

---@param keys : CS.UnityEngine.Keyframe[]
---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AnimationCurve(keys)
end

---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AnimationCurve()
end

---@param time : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.AnimationCurve:Evaluate(time)
end

---@param time : CS.System.Single
---@param value : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.AnimationCurve:AddKey(time, value)
end

---@param key : CS.UnityEngine.Keyframe
---@return CS.System.Int32
function CS.UnityEngine.AnimationCurve:AddKey(key)
end

---@param index : CS.System.Int32
---@param key : CS.UnityEngine.Keyframe
---@return CS.System.Int32
function CS.UnityEngine.AnimationCurve:MoveKey(index, key)
end

---@param index : CS.System.Int32
function CS.UnityEngine.AnimationCurve:RemoveKey(index)
end

---@param index : CS.System.Int32
---@param weight : CS.System.Single
function CS.UnityEngine.AnimationCurve:SmoothTangents(index, weight)
end

---@param timeStart : CS.System.Single
---@param timeEnd : CS.System.Single
---@param value : CS.System.Single
---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AnimationCurve.Constant(timeStart, timeEnd, value)
end

---@param timeStart : CS.System.Single
---@param valueStart : CS.System.Single
---@param timeEnd : CS.System.Single
---@param valueEnd : CS.System.Single
---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AnimationCurve.Linear(timeStart, valueStart, timeEnd, valueEnd)
end

---@param timeStart : CS.System.Single
---@param valueStart : CS.System.Single
---@param timeEnd : CS.System.Single
---@param valueEnd : CS.System.Single
---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AnimationCurve.EaseInOut(timeStart, valueStart, timeEnd, valueEnd)
end

---@param o : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.AnimationCurve:Equals(o)
end

---@param other : CS.UnityEngine.AnimationCurve
---@return CS.System.Boolean
function CS.UnityEngine.AnimationCurve:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.AnimationCurve:GetHashCode()
end