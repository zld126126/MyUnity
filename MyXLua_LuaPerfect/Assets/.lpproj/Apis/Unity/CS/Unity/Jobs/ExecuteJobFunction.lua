---@class CS.Unity.Jobs.ExecuteJobFunction : CS.System.MulticastDelegate
CS.Unity.Jobs.ExecuteJobFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.Unity.Jobs.ExecuteJobFunction
function CS.Unity.Jobs.ExecuteJobFunction(object, method)
end

---@param data : CS.T
---@param additionalPtr : CS.System.IntPtr
---@param bufferRangePatchData : CS.System.IntPtr
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
function CS.Unity.Jobs.ExecuteJobFunction:Invoke(data, additionalPtr, bufferRangePatchData, ranges, jobIndex)
end

---@param data : CS.T
---@param additionalPtr : CS.System.IntPtr
---@param bufferRangePatchData : CS.System.IntPtr
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.Unity.Jobs.ExecuteJobFunction:BeginInvoke(data, additionalPtr, bufferRangePatchData, ranges, jobIndex, callback, object)
end

---@param data : CS.T
---@param ranges : CS.Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result : CS.System.IAsyncResult
function CS.Unity.Jobs.ExecuteJobFunction:EndInvoke(data, ranges, result)
end