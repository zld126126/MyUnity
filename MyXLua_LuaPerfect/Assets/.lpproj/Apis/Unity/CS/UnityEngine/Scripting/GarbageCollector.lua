---@class CS.UnityEngine.Scripting.GarbageCollector : CS.System.Object
CS.UnityEngine.Scripting.GarbageCollector = {}

---@property readwrite CS.UnityEngine.Scripting.GarbageCollector.GCMode : CS.UnityEngine.Scripting.Mode
CS.UnityEngine.Scripting.GarbageCollector.GCMode = nil

---@property readonly CS.UnityEngine.Scripting.GarbageCollector.isIncremental : CS.System.Boolean
CS.UnityEngine.Scripting.GarbageCollector.isIncremental = nil

---@property readwrite CS.UnityEngine.Scripting.GarbageCollector.incrementalTimeSliceNanoseconds : CS.System.UInt64
CS.UnityEngine.Scripting.GarbageCollector.incrementalTimeSliceNanoseconds = nil

---@param value : CS.System.Action
function CS.UnityEngine.Scripting.GarbageCollector.add_GCModeChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Scripting.GarbageCollector.remove_GCModeChanged(value)
end

---@param nanoseconds : CS.System.UInt64
---@return CS.System.Boolean
function CS.UnityEngine.Scripting.GarbageCollector.CollectIncremental(nanoseconds)
end