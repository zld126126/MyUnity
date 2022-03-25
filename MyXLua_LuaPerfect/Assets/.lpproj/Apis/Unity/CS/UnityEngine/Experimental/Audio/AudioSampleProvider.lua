---@class CS.UnityEngine.Experimental.Audio.AudioSampleProvider : CS.System.Object
CS.UnityEngine.Experimental.Audio.AudioSampleProvider = {}

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.id : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.id = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.trackIndex : CS.System.UInt16
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.trackIndex = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.owner : CS.UnityEngine.Object
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.owner = nil

---@property readonly CS.UnityEngine.Experimental.Audio.AudioSampleProvider.valid : CS.System.Boolean
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.valid = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.channelCount : CS.System.UInt16
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.channelCount = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.sampleRate : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.sampleRate = nil

---@property readonly CS.UnityEngine.Experimental.Audio.AudioSampleProvider.maxSampleFrameCount : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.maxSampleFrameCount = nil

---@property readonly CS.UnityEngine.Experimental.Audio.AudioSampleProvider.availableSampleFrameCount : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.availableSampleFrameCount = nil

---@property readonly CS.UnityEngine.Experimental.Audio.AudioSampleProvider.freeSampleFrameCount : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.freeSampleFrameCount = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.freeSampleFrameCountLowThreshold : CS.System.UInt32
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.freeSampleFrameCountLowThreshold = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.enableSampleFramesAvailableEvents : CS.System.Boolean
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.enableSampleFramesAvailableEvents = nil

---@property readwrite CS.UnityEngine.Experimental.Audio.AudioSampleProvider.enableSilencePadding : CS.System.Boolean
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.enableSilencePadding = nil

---@property readonly CS.UnityEngine.Experimental.Audio.AudioSampleProvider.consumeSampleFramesNativeFunction : CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.consumeSampleFramesNativeFunction = nil

function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:Dispose()
end

---@param sampleFrames : CS.Unity.Collections.NativeArray
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:ConsumeSampleFrames(sampleFrames)
end

---@param value : CS.UnityEngine.Experimental.Audio.SampleFramesHandler
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:add_sampleFramesAvailable(value)
end

---@param value : CS.UnityEngine.Experimental.Audio.SampleFramesHandler
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:remove_sampleFramesAvailable(value)
end

---@param value : CS.UnityEngine.Experimental.Audio.SampleFramesHandler
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:add_sampleFramesOverflow(value)
end

---@param value : CS.UnityEngine.Experimental.Audio.SampleFramesHandler
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:remove_sampleFramesOverflow(value)
end

---@param handler : CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction
---@param userData : CS.System.IntPtr
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesAvailableNativeHandler(handler, userData)
end

function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesAvailableNativeHandler()
end

---@param handler : CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction
---@param userData : CS.System.IntPtr
function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesOverflowNativeHandler(handler, userData)
end

function CS.UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesOverflowNativeHandler()
end