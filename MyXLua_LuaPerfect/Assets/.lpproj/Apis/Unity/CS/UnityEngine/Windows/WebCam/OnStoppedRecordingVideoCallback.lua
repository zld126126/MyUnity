---@class CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback
function CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.VideoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback:EndInvoke(result)
end