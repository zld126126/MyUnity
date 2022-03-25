---@class CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback
function CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
---@param photoCaptureFrame : CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame
function CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback:Invoke(result, photoCaptureFrame)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
---@param photoCaptureFrame : CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback:BeginInvoke(result, photoCaptureFrame, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback:EndInvoke(result)
end