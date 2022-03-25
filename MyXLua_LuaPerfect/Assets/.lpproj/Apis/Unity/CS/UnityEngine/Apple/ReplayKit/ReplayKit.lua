---@module CS.UnityEngine.Apple.ReplayKit
CS.UnityEngine.Apple.ReplayKit = {}

---@class CS.UnityEngine.Apple.ReplayKit.ReplayKit : CS.System.Object
CS.UnityEngine.Apple.ReplayKit.ReplayKit = {}

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.APIAvailable : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.APIAvailable = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.broadcastingAPIAvailable : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.broadcastingAPIAvailable = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.recordingAvailable : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.recordingAvailable = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.isRecording : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.isRecording = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.isBroadcasting : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.isBroadcasting = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.isBroadcastingPaused : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.isBroadcastingPaused = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.isPreviewControllerActive : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.isPreviewControllerActive = nil

---@property readwrite CS.UnityEngine.Apple.ReplayKit.ReplayKit.cameraEnabled : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.cameraEnabled = nil

---@property readwrite CS.UnityEngine.Apple.ReplayKit.ReplayKit.microphoneEnabled : CS.System.Boolean
CS.UnityEngine.Apple.ReplayKit.ReplayKit.microphoneEnabled = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.broadcastURL : CS.System.String
CS.UnityEngine.Apple.ReplayKit.ReplayKit.broadcastURL = nil

---@property readonly CS.UnityEngine.Apple.ReplayKit.ReplayKit.lastError : CS.System.String
CS.UnityEngine.Apple.ReplayKit.ReplayKit.lastError = nil

---@param enableMicrophone : CS.System.Boolean
---@param enableCamera : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartRecording(enableMicrophone, enableCamera)
end

---@param enableMicrophone : CS.System.Boolean
---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartRecording(enableMicrophone)
end

---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartRecording()
end

---@param callback : CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback
---@param enableMicrophone : CS.System.Boolean
---@param enableCamera : CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartBroadcasting(callback, enableMicrophone, enableCamera)
end

---@param callback : CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback
---@param enableMicrophone : CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartBroadcasting(callback, enableMicrophone)
end

---@param callback : CS.UnityEngine.Apple.ReplayKit.BroadcastStatusCallback
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StartBroadcasting(callback)
end

---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StopRecording()
end

function CS.UnityEngine.Apple.ReplayKit.ReplayKit.StopBroadcasting()
end

function CS.UnityEngine.Apple.ReplayKit.ReplayKit.PauseBroadcasting()
end

function CS.UnityEngine.Apple.ReplayKit.ReplayKit.ResumeBroadcasting()
end

---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.Preview()
end

---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.Discard()
end

---@param posX : CS.System.Single
---@param posY : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.ShowCameraPreviewAt(posX, posY)
end

---@param posX : CS.System.Single
---@param posY : CS.System.Single
---@param width : CS.System.Single
---@param height : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Apple.ReplayKit.ReplayKit.ShowCameraPreviewAt(posX, posY, width, height)
end

function CS.UnityEngine.Apple.ReplayKit.ReplayKit.HideCameraPreview()
end