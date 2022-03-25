---@class CS.UnityEngine.Windows.WebCam.VideoCapture : CS.System.Object
CS.UnityEngine.Windows.WebCam.VideoCapture = {}

---@property readonly CS.UnityEngine.Windows.WebCam.VideoCapture.SupportedResolutions : CS.System.Collections.Generic.IEnumerable
CS.UnityEngine.Windows.WebCam.VideoCapture.SupportedResolutions = nil

---@property readonly CS.UnityEngine.Windows.WebCam.VideoCapture.IsRecording : CS.System.Boolean
CS.UnityEngine.Windows.WebCam.VideoCapture.IsRecording = nil

---@param resolution : CS.UnityEngine.Resolution
---@return CS.System.Collections.Generic.IEnumerable
function CS.UnityEngine.Windows.WebCam.VideoCapture.GetSupportedFrameRatesForResolution(resolution)
end

---@param showHolograms : CS.System.Boolean
---@param onCreatedCallback : CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture.CreateAsync(showHolograms, onCreatedCallback)
end

---@param onCreatedCallback : CS.UnityEngine.Windows.WebCam.OnVideoCaptureResourceCreatedCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture.CreateAsync(onCreatedCallback)
end

---@param setupParams : CS.UnityEngine.Windows.WebCam.CameraParameters
---@param audioState : CS.UnityEngine.Windows.WebCam.AudioState
---@param onVideoModeStartedCallback : CS.UnityEngine.Windows.WebCam.OnVideoModeStartedCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture:StartVideoModeAsync(setupParams, audioState, onVideoModeStartedCallback)
end

---@param onVideoModeStoppedCallback : CS.UnityEngine.Windows.WebCam.OnVideoModeStoppedCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture:StopVideoModeAsync(onVideoModeStoppedCallback)
end

---@param filename : CS.System.String
---@param onStartedRecordingVideoCallback : CS.UnityEngine.Windows.WebCam.OnStartedRecordingVideoCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture:StartRecordingAsync(filename, onStartedRecordingVideoCallback)
end

---@param onStoppedRecordingVideoCallback : CS.UnityEngine.Windows.WebCam.OnStoppedRecordingVideoCallback
function CS.UnityEngine.Windows.WebCam.VideoCapture:StopRecordingAsync(onStoppedRecordingVideoCallback)
end

---@return CS.System.IntPtr
function CS.UnityEngine.Windows.WebCam.VideoCapture:GetUnsafePointerToVideoDeviceController()
end

function CS.UnityEngine.Windows.WebCam.VideoCapture:Dispose()
end