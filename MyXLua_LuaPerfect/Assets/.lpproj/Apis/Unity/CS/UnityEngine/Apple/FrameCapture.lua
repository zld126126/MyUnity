---@class CS.UnityEngine.Apple.FrameCapture : CS.System.Object
CS.UnityEngine.Apple.FrameCapture = {}

---@param dest : CS.UnityEngine.Apple.FrameCaptureDestination
---@return CS.System.Boolean
function CS.UnityEngine.Apple.FrameCapture.IsDestinationSupported(dest)
end

function CS.UnityEngine.Apple.FrameCapture.BeginCaptureToXcode()
end

---@param path : CS.System.String
function CS.UnityEngine.Apple.FrameCapture.BeginCaptureToFile(path)
end

function CS.UnityEngine.Apple.FrameCapture.EndCapture()
end

function CS.UnityEngine.Apple.FrameCapture.CaptureNextFrameToXcode()
end

---@param path : CS.System.String
function CS.UnityEngine.Apple.FrameCapture.CaptureNextFrameToFile(path)
end