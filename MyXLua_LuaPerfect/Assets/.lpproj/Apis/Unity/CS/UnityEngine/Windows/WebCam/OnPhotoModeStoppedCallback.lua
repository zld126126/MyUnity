---@class CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback:EndInvoke(result)
end