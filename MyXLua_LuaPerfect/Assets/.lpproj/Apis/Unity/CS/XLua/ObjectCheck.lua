---@class CS.XLua.ObjectCheck : CS.System.MulticastDelegate
CS.XLua.ObjectCheck = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.ObjectCheck
function CS.XLua.ObjectCheck(object, method)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.ObjectCheck:Invoke(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.ObjectCheck:BeginInvoke(L, idx, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Boolean
function CS.XLua.ObjectCheck:EndInvoke(result)
end