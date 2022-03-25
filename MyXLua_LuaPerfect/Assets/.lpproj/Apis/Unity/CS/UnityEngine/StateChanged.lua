---@class CS.UnityEngine.StateChanged : CS.System.MulticastDelegate
CS.UnityEngine.StateChanged = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.StateChanged
function CS.UnityEngine.StateChanged(object, method)
end

---@param sphere : CS.UnityEngine.CullingGroupEvent
function CS.UnityEngine.StateChanged:Invoke(sphere)
end

---@param sphere : CS.UnityEngine.CullingGroupEvent
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.StateChanged:BeginInvoke(sphere, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.StateChanged:EndInvoke(result)
end