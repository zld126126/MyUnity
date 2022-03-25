---@class CS.XLuaTest.Vector3Param : CS.System.MulticastDelegate
CS.XLuaTest.Vector3Param = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.Vector3Param
function CS.XLuaTest.Vector3Param(object, method)
end

---@param p : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.XLuaTest.Vector3Param:Invoke(p)
end

---@param p : CS.UnityEngine.Vector3
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.Vector3Param:BeginInvoke(p, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.UnityEngine.Vector3
function CS.XLuaTest.Vector3Param:EndInvoke(result)
end