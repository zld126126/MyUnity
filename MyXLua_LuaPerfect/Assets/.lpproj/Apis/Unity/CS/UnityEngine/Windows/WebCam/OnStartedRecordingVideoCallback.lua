---@class CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback
function CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback:EndInvoke(result)
end