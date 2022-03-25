---@class CS.UnityEngine.Jobs.ExecuteJobFunction : CS.System.MulticastDelegate
CS.UnityEngine.Jobs.ExecuteJobFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Jobs.ExecuteJobFunction
function CS.UnityEngine.Jobs.ExecuteJobFunction(object, method)
end

---@param jobData : CS.T
---@param additionalPtr : CS.System.IntPtr
---@param bufferRangePatchData : CS.System.IntPtr
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
function CS.UnityEngine.Jobs.ExecuteJobFunction:Invoke(jobData, additionalPtr, bufferRangePatchData, ranges, jobIndex)
end

---@param jobData : CS.T
---@param additionalPtr : CS.System.IntPtr
---@param bufferRangePatchData : CS.System.IntPtr
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Jobs.ExecuteJobFunction:BeginInvoke(jobData, additionalPtr, bufferRangePatchData, ranges, jobIndex, callback, object)
end

---@param jobData : CS.T
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Jobs.ExecuteJobFunction:EndInvoke(jobData, ranges, result)
end