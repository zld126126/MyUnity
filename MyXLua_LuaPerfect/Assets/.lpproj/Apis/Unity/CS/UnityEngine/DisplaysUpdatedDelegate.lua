---@class CS.UnityEngine.DisplaysUpdatedDelegate : CS.System.MulticastDelegate
CS.UnityEngine.DisplaysUpdatedDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.DisplaysUpdatedDelegate
function CS.UnityEngine.DisplaysUpdatedDelegate(object, method)
end

function CS.UnityEngine.DisplaysUpdatedDelegate:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.DisplaysUpdatedDelegate:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.DisplaysUpdatedDelegate:EndInvoke(result)
end