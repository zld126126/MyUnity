---@class CS.XLuaTest.IntParam : CS.System.MulticastDelegate
CS.XLuaTest.IntParam = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.IntParam
function CS.XLuaTest.IntParam(object, method)
end

---@param p : CS.System.Int32
---@return CS.System.Int32
function CS.XLuaTest.IntParam:Invoke(p)
end

---@param p : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.IntParam:BeginInvoke(p, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Int32
function CS.XLuaTest.IntParam:EndInvoke(result)
end