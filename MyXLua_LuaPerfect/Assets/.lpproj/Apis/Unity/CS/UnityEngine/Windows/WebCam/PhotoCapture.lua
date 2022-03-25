---@class CS.UnityEngine.Windows.WebCam.PhotoCapture : CS.System.Object
CS.UnityEngine.Windows.WebCam.PhotoCapture = {}

---@property readonly CS.UnityEngine.Windows.WebCam.PhotoCapture.SupportedResolutions : CS.System.Collections.Generic.IEnumerable
CS.UnityEngine.Windows.WebCam.PhotoCapture.SupportedResolutions = nil

---@param showHolograms : CS.System.Boolean
---@param onCreatedCallback : CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture.CreateAsync(showHolograms, onCreatedCallback)
end

---@param onCreatedCallback : CS.UnityEngine.Windows.WebCam.OnCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture.CreateAsync(onCreatedCallback)
end

---@param setupParams : CS.UnityEngine.Windows.WebCam.CameraParameters
---@param onPhotoModeStartedCallback : CS.UnityEngine.Windows.WebCam.OnPhotoModeStartedCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture:StartPhotoModeAsync(setupParams, onPhotoModeStartedCallback)
end

---@param onPhotoModeStoppedCallback : CS.UnityEngine.Windows.WebCam.OnPhotoModeStoppedCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture:StopPhotoModeAsync(onPhotoModeStoppedCallback)
end

---@param filename : CS.System.String
---@param fileOutputFormat : CS.UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
---@param onCapturedPhotoToDiskCallback : CS.UnityEngine.Windows.WebCam.OnCapturedToDiskCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture:TakePhotoAsync(filename, fileOutputFormat, onCapturedPhotoToDiskCallback)
end

---@param onCapturedPhotoToMemoryCallback : CS.UnityEngine.Windows.WebCam.OnCapturedToMemoryCallback
function CS.UnityEngine.Windows.WebCam.PhotoCapture:TakePhotoAsync(onCapturedPhotoToMemoryCallback)
end

---@return CS.System.IntPtr
function CS.UnityEngine.Windows.WebCam.PhotoCapture:GetUnsafePointerToVideoDeviceController()
end

function CS.UnityEngine.Windows.WebCam.PhotoCapture:Dispose()
end