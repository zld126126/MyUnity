---@class CS.XLua.UpdateCSObject : CS.System.MulticastDelegate
CS.XLua.UpdateCSObject = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.UpdateCSObject
function CS.XLua.UpdateCSObject(object, method)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param obj : CS.System.Object
function CS.XLua.UpdateCSObject:Invoke(L, idx, obj)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param obj : CS.System.Object
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.UpdateCSObject:BeginInvoke(L, idx, obj, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.XLua.UpdateCSObject:EndInvoke(result)
end