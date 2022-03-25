---@class CS.UnityEngine.Profiling.Recorder : CS.System.Object
CS.UnityEngine.Profiling.Recorder = {}

---@property readonly CS.UnityEngine.Profiling.Recorder.isValid : CS.System.Boolean
CS.UnityEngine.Profiling.Recorder.isValid = nil

---@property readwrite CS.UnityEngine.Profiling.Recorder.enabled : CS.System.Boolean
CS.UnityEngine.Profiling.Recorder.enabled = nil

---@property readonly CS.UnityEngine.Profiling.Recorder.elapsedNanoseconds : CS.System.Int64
CS.UnityEngine.Profiling.Recorder.elapsedNanoseconds = nil

---@property readonly CS.UnityEngine.Profiling.Recorder.gpuElapsedNanoseconds : CS.System.Int64
CS.UnityEngine.Profiling.Recorder.gpuElapsedNanoseconds = nil

---@property readonly CS.UnityEngine.Profiling.Recorder.sampleBlockCount : CS.System.Int32
CS.UnityEngine.Profiling.Recorder.sampleBlockCount = nil

---@property readonly CS.UnityEngine.Profiling.Recorder.gpuSampleBlockCount : CS.System.Int32
CS.UnityEngine.Profiling.Recorder.gpuSampleBlockCount = nil

---@param samplerName : CS.System.String
---@return CS.UnityEngine.Profiling.Recorder
function CS.UnityEngine.Profiling.Recorder.Get(samplerName)
end

function CS.UnityEngine.Profiling.Recorder:FilterToCurrentThread()
end

function CS.UnityEngine.Profiling.Recorder:CollectFromAllThreads()
end