---@class CS.UnityEngine.LowMemoryCallback : CS.System.MulticastDelegate
CS.UnityEngine.LowMemoryCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.LowMemoryCallback
function CS.UnityEngine.LowMemoryCallback(object, method)
end

function CS.UnityEngine.LowMemoryCallback:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.LowMemoryCallback:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.LowMemoryCallback:EndInvoke(result)
end