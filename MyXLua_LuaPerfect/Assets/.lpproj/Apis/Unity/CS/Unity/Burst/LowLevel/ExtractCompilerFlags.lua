---@class CS.Unity.Burst.LowLevel.ExtractCompilerFlags : CS.System.MulticastDelegate
CS.Unity.Burst.LowLevel.ExtractCompilerFlags = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.Unity.Burst.LowLevel.ExtractCompilerFlags
function CS.Unity.Burst.LowLevel.ExtractCompilerFlags(object, method)
end

---@param jobType : CS.System.Type
---@param flags : CS.System.String
---@return CS.System.Boolean
function CS.Unity.Burst.LowLevel.ExtractCompilerFlags:Invoke(jobType, flags)
end

---@param jobType : CS.System.Type
---@param flags : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.Unity.Burst.LowLevel.ExtractCompilerFlags:BeginInvoke(jobType, flags, callback, object)
end

---@param flags : CS.System.String
---@param result : CS.System.IAsyncResult
---@return CS.System.Boolean
function CS.Unity.Burst.LowLevel.ExtractCompilerFlags:EndInvoke(flags, result)
end