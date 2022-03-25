---@class CS.Tutorial.FDelegate : CS.System.MulticastDelegate
CS.Tutorial.FDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.Tutorial.FDelegate
function CS.Tutorial.FDelegate(object, method)
end

---@param a : CS.System.Int32
---@param b : CS.System.String
---@param c : CS.Tutorial.DClass
---@return CS.System.Int32
function CS.Tutorial.FDelegate:Invoke(a, b, c)
end

---@param a : CS.System.Int32
---@param b : CS.System.String
---@param c : CS.Tutorial.DClass
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.Tutorial.FDelegate:BeginInvoke(a, b, c, callback, object)
end

---@param c : CS.Tutorial.DClass
---@param result : CS.System.IAsyncResult
---@return CS.System.Int32
function CS.Tutorial.FDelegate:EndInvoke(c, result)
end