---@class CS.UnityEngine.PCMSetPositionCallback : CS.System.MulticastDelegate
CS.UnityEngine.PCMSetPositionCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.PCMSetPositionCallback
function CS.UnityEngine.PCMSetPositionCallback(object, method)
end

---@param position : CS.System.Int32
function CS.UnityEngine.PCMSetPositionCallback:Invoke(position)
end

---@param position : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.PCMSetPositionCallback:BeginInvoke(position, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.PCMSetPositionCallback:EndInvoke(result)
end