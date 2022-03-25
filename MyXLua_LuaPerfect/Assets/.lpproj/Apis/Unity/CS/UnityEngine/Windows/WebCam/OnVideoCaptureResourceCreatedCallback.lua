---@class CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback(object, method)
end

---@param captureObject : CS.UnityEngine.Windows.WebCam.VideoCapture
function CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback:Invoke(captureObject)
end

---@param captureObject : CS.UnityEngine.Windows.WebCam.VideoCapture
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback:BeginInvoke(captureObject, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback:EndInvoke(result)
end