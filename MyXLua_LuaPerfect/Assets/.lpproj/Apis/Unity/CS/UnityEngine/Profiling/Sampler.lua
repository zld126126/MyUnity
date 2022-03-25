---@class CS.UnityEngine.Profiling.Sampler : CS.System.Object
CS.UnityEngine.Profiling.Sampler = {}

---@property readonly CS.UnityEngine.Profiling.Sampler.isValid : CS.System.Boolean
CS.UnityEngine.Profiling.Sampler.isValid = nil

---@property readonly CS.UnityEngine.Profiling.Sampler.name : CS.System.String
CS.UnityEngine.Profiling.Sampler.name = nil

---@return CS.UnityEngine.Profiling.Recorder
function CS.UnityEngine.Profiling.Sampler:GetRecorder()
end

---@param name : CS.System.String
---@return CS.UnityEngine.Profiling.Sampler
function CS.UnityEngine.Profiling.Sampler.Get(name)
end

---@param names : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.Profiling.Sampler.GetNames(names)
end