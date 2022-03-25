---@class CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame : CS.System.Object
CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame = {}

---@property readwrite CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.dataLength : CS.System.Int32
CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.dataLength = nil

---@property readwrite CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.hasLocationData : CS.System.Boolean
CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.hasLocationData = nil

---@property readwrite CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.pixelFormat : CS.UnityEngine.Windows.WebCam.CapturePixelFormat
CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame.pixelFormat = nil

---@param cameraToWorldMatrix : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:TryGetCameraToWorldMatrix(cameraToWorldMatrix)
end

---@param projectionMatrix : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:TryGetProjectionMatrix(projectionMatrix)
end

---@param nearClipPlane : CS.System.Single
---@param farClipPlane : CS.System.Single
---@param projectionMatrix : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:TryGetProjectionMatrix(nearClipPlane, farClipPlane, projectionMatrix)
end

---@param targetTexture : CS.UnityEngine.Texture2D
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:UploadImageDataToTexture(targetTexture)
end

---@return CS.System.IntPtr
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:GetUnsafePointerToBuffer()
end

---@param byteBuffer : CS.System.Collections.Generic.List
function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:CopyRawImageDataIntoBuffer(byteBuffer)
end

function CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame:Dispose()
end