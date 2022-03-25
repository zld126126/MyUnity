---@class CS.UnityEngine.Profiling.Profiler : CS.System.Object
CS.UnityEngine.Profiling.Profiler = {}

---@property readonly CS.UnityEngine.Profiling.Profiler.supported : CS.System.Boolean
CS.UnityEngine.Profiling.Profiler.supported = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.logFile : CS.System.String
CS.UnityEngine.Profiling.Profiler.logFile = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.enableBinaryLog : CS.System.Boolean
CS.UnityEngine.Profiling.Profiler.enableBinaryLog = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.maxUsedMemory : CS.System.Int32
CS.UnityEngine.Profiling.Profiler.maxUsedMemory = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.enabled : CS.System.Boolean
CS.UnityEngine.Profiling.Profiler.enabled = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.enableAllocationCallstacks : CS.System.Boolean
CS.UnityEngine.Profiling.Profiler.enableAllocationCallstacks = nil

---@property readonly CS.UnityEngine.Profiling.Profiler.areaCount : CS.System.Int32
CS.UnityEngine.Profiling.Profiler.areaCount = nil

---@property readwrite CS.UnityEngine.Profiling.Profiler.maxNumberOfSamplesPerFrame : CS.System.Int32
CS.UnityEngine.Profiling.Profiler.maxNumberOfSamplesPerFrame = nil

---@property readonly CS.UnityEngine.Profiling.Profiler.usedHeapSize : CS.System.UInt32
CS.UnityEngine.Profiling.Profiler.usedHeapSize = nil

---@property readonly CS.UnityEngine.Profiling.Profiler.usedHeapSizeLong : CS.System.Int64
CS.UnityEngine.Profiling.Profiler.usedHeapSizeLong = nil

---@param area : CS.UnityEngine.Profiling.ProfilerArea
---@param enabled : CS.System.Boolean
function CS.UnityEngine.Profiling.Profiler.SetAreaEnabled(area, enabled)
end

---@param area : CS.UnityEngine.Profiling.ProfilerArea
---@return CS.System.Boolean
function CS.UnityEngine.Profiling.Profiler.GetAreaEnabled(area)
end

---@param file : CS.System.String
function CS.UnityEngine.Profiling.Profiler.AddFramesFromFile(file)
end

---@param threadGroupName : CS.System.String
---@param threadName : CS.System.String
function CS.UnityEngine.Profiling.Profiler.BeginThreadProfiling(threadGroupName, threadName)
end

function CS.UnityEngine.Profiling.Profiler.EndThreadProfiling()
end

---@param name : CS.System.String
function CS.UnityEngine.Profiling.Profiler.BeginSample(name)
end

---@param name : CS.System.String
---@param targetObject : CS.UnityEngine.Object
function CS.UnityEngine.Profiling.Profiler.BeginSample(name, targetObject)
end

function CS.UnityEngine.Profiling.Profiler.EndSample()
end

---@param o : CS.UnityEngine.Object
---@return CS.System.Int32
function CS.UnityEngine.Profiling.Profiler.GetRuntimeMemorySize(o)
end

---@param o : CS.UnityEngine.Object
---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetRuntimeMemorySizeLong(o)
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetMonoHeapSize()
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetMonoHeapSizeLong()
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetMonoUsedSize()
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetMonoUsedSizeLong()
end

---@param size : CS.System.UInt32
---@return CS.System.Boolean
function CS.UnityEngine.Profiling.Profiler.SetTempAllocatorRequestedSize(size)
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetTempAllocatorSize()
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetTotalAllocatedMemory()
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetTotalAllocatedMemoryLong()
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetTotalUnusedReservedMemory()
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetTotalUnusedReservedMemoryLong()
end

---@return CS.System.UInt32
function CS.UnityEngine.Profiling.Profiler.GetTotalReservedMemory()
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetTotalReservedMemoryLong()
end

---@param stats : CS.Unity.Collections.NativeArray
---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetTotalFragmentationInfo(stats)
end

---@return CS.System.Int64
function CS.UnityEngine.Profiling.Profiler.GetAllocatedMemoryForGraphicsDriver()
end

---@param id : CS.System.Guid
---@param tag : CS.System.Int32
---@param data : CS.System.Array
function CS.UnityEngine.Profiling.Profiler.EmitFrameMetaData(id, tag, data)
end