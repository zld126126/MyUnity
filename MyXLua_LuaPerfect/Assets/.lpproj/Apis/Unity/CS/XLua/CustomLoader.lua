---@class CS.XLua.CustomLoader : CS.System.MulticastDelegate
CS.XLua.CustomLoader = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLua.CustomLoader
function CS.XLua.CustomLoader(object, method)
end

---@param filepath : CS.System.String
---@return CS.System.Byte[]
function CS.XLua.CustomLoader:Invoke(filepath)
end

---@param filepath : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLua.CustomLoader:BeginInvoke(filepath, callback, object)
end

---@param filepath : CS.System.String
---@param result : CS.System.IAsyncResult
---@return CS.System.Byte[]
function CS.XLua.CustomLoader:EndInvoke(filepath, result)
end