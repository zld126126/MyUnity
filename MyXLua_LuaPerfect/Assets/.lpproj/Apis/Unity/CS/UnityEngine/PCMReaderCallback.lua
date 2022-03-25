---@class CS.UnityEngine.PCMReaderCallback : CS.System.MulticastDelegate
CS.UnityEngine.PCMReaderCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.PCMReaderCallback
function CS.UnityEngine.PCMReaderCallback(object, method)
end

---@param data : CS.System.Single[]
function CS.UnityEngine.PCMReaderCallback:Invoke(data)
end

---@param data : CS.System.Single[]
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.PCMReaderCallback:BeginInvoke(data, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.PCMReaderCallback:EndInvoke(result)
end