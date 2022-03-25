---@class CS.XLua.TryArrayGet : CS.System.MulticastDelegate
CS.XLua.TryArrayGet = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.TryArrayGet
function CS.XLua.TryArrayGet(object, method)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param obj : CS.System.Object
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.TryArrayGet:Invoke(type, L, translator, obj, index)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param obj : CS.System.Object
---@param index : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.TryArrayGet:BeginInvoke(type, L, translator, obj, index, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Boolean
function CS.XLua.TryArrayGet:EndInvoke(result)
end