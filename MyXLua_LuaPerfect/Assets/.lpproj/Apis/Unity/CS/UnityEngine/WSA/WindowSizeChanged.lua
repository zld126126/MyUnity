---@class CS.UnityEngine.WSA.WindowSizeChanged : CS.System.MulticastDelegate
CS.UnityEngine.WSA.WindowSizeChanged = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.WSA.WindowSizeChanged
function CS.UnityEngine.WSA.WindowSizeChanged(object, method)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
function CS.UnityEngine.WSA.WindowSizeChanged:Invoke(width, height)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.WSA.WindowSizeChanged:BeginInvoke(width, height, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.WSA.WindowSizeChanged:EndInvoke(result)
end