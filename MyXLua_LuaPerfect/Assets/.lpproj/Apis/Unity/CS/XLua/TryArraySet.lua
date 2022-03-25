---@class CS.XLua.TryArraySet : CS.System.MulticastDelegate
CS.XLua.TryArraySet = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.TryArraySet
function CS.XLua.TryArraySet(object, method)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param obj : CS.System.Object
---@param array_idx : CS.System.Int32
---@param obj_idx : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.TryArraySet:Invoke(type, L, translator, obj, array_idx, obj_idx)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param obj : CS.System.Object
---@param array_idx : CS.System.Int32
---@param obj_idx : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.TryArraySet:BeginInvoke(type, L, translator, obj, array_idx, obj_idx, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Boolean
function CS.XLua.TryArraySet:EndInvoke(result)
end