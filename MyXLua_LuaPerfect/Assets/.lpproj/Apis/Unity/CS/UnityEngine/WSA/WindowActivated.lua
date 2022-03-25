---@class CS.UnityEngine.WSA.WindowActivated : CS.System.MulticastDelegate
CS.UnityEngine.WSA.WindowActivated = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.WSA.WindowActivated
function CS.UnityEngine.WSA.WindowActivated(object, method)
end

---@param state : CS.UnityEngine.WSA.WindowActivationState
function CS.UnityEngine.WSA.WindowActivated:Invoke(state)
end

---@param state : CS.UnityEngine.WSA.WindowActivationState
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.WSA.WindowActivated:BeginInvoke(state, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.WSA.WindowActivated:EndInvoke(result)
end