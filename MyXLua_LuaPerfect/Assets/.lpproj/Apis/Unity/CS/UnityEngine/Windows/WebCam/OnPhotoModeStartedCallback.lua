---@class CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback:EndInvoke(result)
end