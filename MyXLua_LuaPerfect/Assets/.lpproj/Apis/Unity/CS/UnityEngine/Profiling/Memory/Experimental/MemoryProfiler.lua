---@class CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler : CS.System.Object
CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = {}

---@return CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler()
end

---@param value : CS.System.Action
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.add_createMetaData(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.remove_createMetaData(value)
end

---@param path : CS.System.String
---@param finishCallback : CS.System.Action
---@param captureFlags : CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.TakeSnapshot(path, finishCallback, captureFlags)
end

---@param path : CS.System.String
---@param finishCallback : CS.System.Action
---@param screenshotCallback : CS.System.Action
---@param captureFlags : CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.TakeSnapshot(path, finishCallback, screenshotCallback, captureFlags)
end

---@param finishCallback : CS.System.Action
---@param captureFlags : CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags
function CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.TakeTempSnapshot(finishCallback, captureFlags)
end