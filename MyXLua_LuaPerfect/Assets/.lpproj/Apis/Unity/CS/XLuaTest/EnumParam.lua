---@class CS.XLuaTest.EnumParam : CS.System.MulticastDelegate
CS.XLuaTest.EnumParam = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.EnumParam
function CS.XLuaTest.EnumParam(object, method)
end

---@param p : CS.XLuaTest.MyEnum
---@return CS.XLuaTest.MyEnum
function CS.XLuaTest.EnumParam:Invoke(p)
end

---@param p : CS.XLuaTest.MyEnum
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.EnumParam:BeginInvoke(p, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.XLuaTest.MyEnum
function CS.XLuaTest.EnumParam:EndInvoke(result)
end