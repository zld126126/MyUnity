---@class CS.XLua.GetCSObject : CS.System.MulticastDelegate
CS.XLua.GetCSObject = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.GetCSObject
function CS.XLua.GetCSObject(object, method)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Object
function CS.XLua.GetCSObject:Invoke(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.GetCSObject:BeginInvoke(L, idx, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Object
function CS.XLua.GetCSObject:EndInvoke(result)
end