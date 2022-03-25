---@class CS.XLuaTest.ArrayAccess : CS.System.MulticastDelegate
CS.XLuaTest.ArrayAccess = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.ArrayAccess
function CS.XLuaTest.ArrayAccess(object, method)
end

---@param arr : CS.System.Array
function CS.XLuaTest.ArrayAccess:Invoke(arr)
end

---@param arr : CS.System.Array
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.ArrayAccess:BeginInvoke(arr, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.XLuaTest.ArrayAccess:EndInvoke(result)
end