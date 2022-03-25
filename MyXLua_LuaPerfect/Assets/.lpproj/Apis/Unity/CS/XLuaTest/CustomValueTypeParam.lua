---@class CS.XLuaTest.CustomValueTypeParam : CS.System.MulticastDelegate
CS.XLuaTest.CustomValueTypeParam = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.CustomValueTypeParam
function CS.XLuaTest.CustomValueTypeParam(object, method)
end

---@param p : CS.XLuaTest.MyStruct
---@return CS.XLuaTest.MyStruct
function CS.XLuaTest.CustomValueTypeParam:Invoke(p)
end

---@param p : CS.XLuaTest.MyStruct
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.CustomValueTypeParam:BeginInvoke(p, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.XLuaTest.MyStruct
function CS.XLuaTest.CustomValueTypeParam:EndInvoke(result)
end