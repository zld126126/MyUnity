---@class CS.UnityEngine.Microphone : CS.System.Object
CS.UnityEngine.Microphone = {}

---@property readonly CS.UnityEngine.Microphone.devices : CS.System.String[]
CS.UnityEngine.Microphone.devices = nil

---@return CS.UnityEngine.Microphone
function CS.UnityEngine.Microphone()
end

---@param deviceName : CS.System.String
---@param loop : CS.System.Boolean
---@param lengthSec : CS.System.Int32
---@param frequency : CS.System.Int32
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.Microphone.Start(deviceName, loop, lengthSec, frequency)
end

---@param deviceName : CS.System.String
function CS.UnityEngine.Microphone.End(deviceName)
end

---@param deviceName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Microphone.IsRecording(deviceName)
end

---@param deviceName : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Microphone.GetPosition(deviceName)
end

---@param deviceName : CS.System.String
---@param minFreq : CS.System.Int32
---@param maxFreq : CS.System.Int32
function CS.UnityEngine.Microphone.GetDeviceCaps(deviceName, minFreq, maxFreq)
end