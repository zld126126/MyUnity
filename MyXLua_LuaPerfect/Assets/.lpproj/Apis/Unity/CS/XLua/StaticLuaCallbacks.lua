---@class CS.XLua.StaticLuaCallbacks : CS.System.Object
CS.XLua.StaticLuaCallbacks = {}

---@return CS.XLua.StaticLuaCallbacks
function CS.XLua.StaticLuaCallbacks()
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.EnumAnd(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.EnumOr(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.DelegateCall(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.LuaGC(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ToString(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.DelegateCombine(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.DelegateRemove(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ArrayIndexer(L)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param obj : CS.System.Object
---@param array_idx : CS.System.Int32
---@param obj_idx : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.StaticLuaCallbacks.TryPrimitiveArraySet(type, L, obj, array_idx, obj_idx)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ArrayNewIndexer(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ArrayLength(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.MetaFuncIndex(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.LoadAssembly(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ImportType(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ImportGenericType(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.Cast(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.XLuaAccess(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.XLuaPrivateAccessible(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.XLuaMetatableOperation(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.DelegateConstructor(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ToFunction(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.GenericMethodWraper(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.GetGenericMethod(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.StaticLuaCallbacks.ReleaseCsObject(L)
end