---@class CS.UnityEngine.LogCallback : CS.System.MulticastDelegate
CS.UnityEngine.LogCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.LogCallback
function CS.UnityEngine.LogCallback(object, method)
end

---@param condition : CS.System.String
---@param stackTrace : CS.System.String
---@param type : CS.UnityEngine.LogType
function CS.UnityEngine.LogCallback:Invoke(condition, stackTrace, type)
end

---@param condition : CS.System.String
---@param stackTrace : CS.System.String
---@param type : CS.UnityEngine.LogType
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.LogCallback:BeginInvoke(condition, stackTrace, type, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.LogCallback:EndInvoke(result)
end