---@class CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback : CS.System.MulticastDelegate
CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback
function CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback(object, method)
end

---@param hasStarted : CS.System.Boolean
---@param errorMessage : CS.System.String
function CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback:Invoke(hasStarted, errorMessage)
end

---@param hasStarted : CS.System.Boolean
---@param errorMessage : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback:BeginInvoke(hasStarted, errorMessage, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback:EndInvoke(result)
end