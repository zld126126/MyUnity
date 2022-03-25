---@class CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback : CS.System.MulticastDelegate
CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback
function CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback(object, method)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
function CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback:Invoke(result)
end

---@param result : CS.UnityEngine.Windows.WebCam.PhotoCaptureResult
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback:BeginInvoke(result, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback:EndInvoke(result)
end