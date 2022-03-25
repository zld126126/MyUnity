---@module CS.XLua.LuaDLL
CS.XLua.LuaDLL = {}

---@class CS.XLua.LuaDLL.lua_CSFunction : CS.System.MulticastDelegate
CS.XLua.LuaDLL.lua_CSFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.LuaDLL.lua_CSFunction(object, method)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.lua_CSFunction:Invoke(L)
end

---@param L : CS.System.IntPtr
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.LuaDLL.lua_CSFunction:BeginInvoke(L, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Int32
function CS.XLua.LuaDLL.lua_CSFunction:EndInvoke(result)
end