---@class CS.UnityEngine.LowLevel.UpdateFunction : CS.System.MulticastDelegate
CS.UnityEngine.LowLevel.UpdateFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.LowLevel.UpdateFunction
function CS.UnityEngine.LowLevel.UpdateFunction(object, method)
end

function CS.UnityEngine.LowLevel.UpdateFunction:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.LowLevel.UpdateFunction:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.LowLevel.UpdateFunction:EndInvoke(result)
end