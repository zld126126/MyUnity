---@class CS.Tutorial.GetE : CS.System.MulticastDelegate
CS.Tutorial.GetE = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.Tutorial.GetE
function CS.Tutorial.GetE(object, method)
end

---@return CS.System.Action
function CS.Tutorial.GetE:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.Tutorial.GetE:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Action
function CS.Tutorial.GetE:EndInvoke(result)
end