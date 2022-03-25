---@class CS.XLua.PushCSObject : CS.System.MulticastDelegate
CS.XLua.PushCSObject = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.PushCSObject
function CS.XLua.PushCSObject(object, method)
end

---@param L : CS.System.IntPtr
---@param obj : CS.System.Object
function CS.XLua.PushCSObject:Invoke(L, obj)
end

---@param L : CS.System.IntPtr
---@param obj : CS.System.Object
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.PushCSObject:BeginInvoke(L, obj, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.XLua.PushCSObject:EndInvoke(result)
end