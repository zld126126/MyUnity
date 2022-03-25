---@class CS.UnityEngine.CameraCallback : CS.System.MulticastDelegate
CS.UnityEngine.CameraCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.CameraCallback
function CS.UnityEngine.CameraCallback(object, method)
end

---@param cam : CS.UnityEngine.Camera
function CS.UnityEngine.CameraCallback:Invoke(cam)
end

---@param cam : CS.UnityEngine.Camera
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.CameraCallback:BeginInvoke(cam, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.CameraCallback:EndInvoke(result)
end