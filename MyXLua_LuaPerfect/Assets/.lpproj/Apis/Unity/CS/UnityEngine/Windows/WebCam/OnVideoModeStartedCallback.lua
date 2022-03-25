---@class CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback
function CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback:EndInvoke(result)
end