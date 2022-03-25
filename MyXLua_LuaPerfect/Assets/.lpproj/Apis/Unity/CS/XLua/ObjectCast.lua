---@class CS.XLua.ObjectCast : CS.System.MulticastDelegate
CS.XLua.ObjectCast = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.ObjectCast
function CS.XLua.ObjectCast(object, method)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param target : CS.System.Object
---@return CS.System.Object
function CS.XLua.ObjectCast:Invoke(L, idx, target)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param target : CS.System.Object
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.ObjectCast:BeginInvoke(L, idx, target, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Object
function CS.XLua.ObjectCast:EndInvoke(result)
end