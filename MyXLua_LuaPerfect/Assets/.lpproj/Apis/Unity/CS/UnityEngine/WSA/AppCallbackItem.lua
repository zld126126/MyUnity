---@module CS.UnityEngine.WSA
CS.UnityEngine.WSA = {}

---@class CS.UnityEngine.WSA.AppCallbackItem : CS.System.MulticastDelegate
CS.UnityEngine.WSA.AppCallbackItem = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.WSA.AppCallbackItem
function CS.UnityEngine.WSA.AppCallbackItem(object, method)
end

function CS.UnityEngine.WSA.AppCallbackItem:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.WSA.AppCallbackItem:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.WSA.AppCallbackItem:EndInvoke(result)
end