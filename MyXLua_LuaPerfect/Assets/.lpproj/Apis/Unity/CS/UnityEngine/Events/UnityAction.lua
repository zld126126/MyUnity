---@class CS.UnityEngine.Events.UnityAction : CS.System.MulticastDelegate
CS.UnityEngine.Events.UnityAction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Events.UnityAction(object, method)
end

function CS.UnityEngine.Events.UnityAction:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Events.UnityAction:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Events.UnityAction:EndInvoke(result)
end