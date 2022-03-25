---@class CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility : CS.System.Object
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility = {}

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.MaxJobThreadCount : CS.System.Int32
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.MaxJobThreadCount = nil

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CacheLineSize : CS.System.Int32
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CacheLineSize = nil

---@property readonly CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.IsExecutingJob : CS.System.Boolean
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.IsExecutingJob = nil

---@property readwrite CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobDebuggerEnabled : CS.System.Boolean
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobDebuggerEnabled = nil

---@property readwrite CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobCompilerEnabled : CS.System.Boolean
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobCompilerEnabled = nil

---@property readonly CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerMaximumCount : CS.System.Int32
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerMaximumCount = nil

---@property readwrite CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerCount : CS.System.Int32
CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerCount = nil

---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
---@param beginIndex : CS.System.Int32
---@param endIndex : CS.System.Int32
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.GetJobRange(ranges, jobIndex, beginIndex, endIndex)
end

---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
---@param beginIndex : CS.System.Int32
---@param endIndex : CS.System.Int32
---@return CS.System.Boolean
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.GetWorkStealingRange(ranges, jobIndex, beginIndex, endIndex)
end

---@param parameters : CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.Schedule(parameters)
end

---@param parameters : CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
---@param arrayLength : CS.System.Int32
---@param innerloopBatchCount : CS.System.Int32
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelFor(parameters, arrayLength, innerloopBatchCount)
end

---@param parameters : CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
---@param innerloopBatchCount : CS.System.Int32
---@param listData : CS.System.VoidPointer
---@param listDataAtomicSafetyHandle : CS.System.VoidPointer
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForDeferArraySize(parameters, innerloopBatchCount, listData, listDataAtomicSafetyHandle)
end

---@param parameters : CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
---@param transfromAccesssArray : CS.System.IntPtr
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForTransform(parameters, transfromAccesssArray)
end

---@param parameters : CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
---@param transfromAccesssArray : CS.System.IntPtr
---@param innerloopBatchCount : CS.System.Int32
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForTransformReadOnly(parameters, transfromAccesssArray, innerloopBatchCount)
end

---@param bufferRangePatchData : CS.System.IntPtr
---@param jobdata : CS.System.VoidPointer
---@param startIndex : CS.System.Int32
---@param rangeSize : CS.System.Int32
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.PatchBufferMinMaxRanges(bufferRangePatchData, jobdata, startIndex, rangeSize)
end

---@param type : CS.System.Type
---@param jobType : CS.Unity.Jobs.LowLevel.Unsafe.JobType
---@param managedJobFunction0 : CS.System.Object
---@param managedJobFunction1 : CS.System.Object
---@param managedJobFunction2 : CS.System.Object
---@return CS.System.IntPtr
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CreateJobReflectionData(type, jobType, managedJobFunction0, managedJobFunction1, managedJobFunction2)
end

---@param type : CS.System.Type
---@param managedJobFunction0 : CS.System.Object
---@param managedJobFunction1 : CS.System.Object
---@param managedJobFunction2 : CS.System.Object
---@return CS.System.IntPtr
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CreateJobReflectionData(type, managedJobFunction0, managedJobFunction1, managedJobFunction2)
end

---@param wrapperJobType : CS.System.Type
---@param userJobType : CS.System.Type
---@param jobType : CS.Unity.Jobs.LowLevel.Unsafe.JobType
---@param managedJobFunction0 : CS.System.Object
---@return CS.System.IntPtr
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CreateJobReflectionData(wrapperJobType, userJobType, jobType, managedJobFunction0)
end

---@param wrapperJobType : CS.System.Type
---@param userJobType : CS.System.Type
---@param managedJobFunction0 : CS.System.Object
---@return CS.System.IntPtr
function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.CreateJobReflectionData(wrapperJobType, userJobType, managedJobFunction0)
end

function CS.Unity.Jobs.LowLevel.Unsafe.JobsUtility.ResetJobWorkerCount()
end