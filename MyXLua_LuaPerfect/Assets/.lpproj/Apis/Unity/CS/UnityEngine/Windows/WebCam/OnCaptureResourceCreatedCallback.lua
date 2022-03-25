---@class CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback(object, method)
end

---@param captureObject : CS.UnityEngine.Windows.WebCam.PhotoCapture
function CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback:Invoke(captureObject)
end

---@param captureObject : CS.UnityEngine.Windows.WebCam.PhotoCapture
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback:BeginInvoke(captureObject, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback:EndInvoke(result)
end