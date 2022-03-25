---@class CS.UnityEngine.AudioSettings : CS.System.Object
CS.UnityEngine.AudioSettings = {}

---@property readonly CS.UnityEngine.AudioSettings.driverCaps : CS.UnityEngine.AudioSpeakerMode
CS.UnityEngine.AudioSettings.driverCaps = nil

---@property readonly CS.UnityEngine.AudioSettings.driverCapabilities : CS.UnityEngine.AudioSpeakerMode
CS.UnityEngine.AudioSettings.driverCapabilities = nil

---@property readwrite CS.UnityEngine.AudioSettings.speakerMode : CS.UnityEngine.AudioSpeakerMode
CS.UnityEngine.AudioSettings.speakerMode = nil

---@property readonly CS.UnityEngine.AudioSettings.dspTime : CS.System.Double
CS.UnityEngine.AudioSettings.dspTime = nil

---@property readwrite CS.UnityEngine.AudioSettings.outputSampleRate : CS.System.Int32
CS.UnityEngine.AudioSettings.outputSampleRate = nil

---@return CS.UnityEngine.AudioSettings
function CS.UnityEngine.AudioSettings()
end

---@param bufferLength : CS.System.Int32
---@param numBuffers : CS.System.Int32
function CS.UnityEngine.AudioSettings.GetDSPBufferSize(bufferLength, numBuffers)
end

---@param bufferLength : CS.System.Int32
---@param numBuffers : CS.System.Int32
function CS.UnityEngine.AudioSettings.SetDSPBufferSize(bufferLength, numBuffers)
end

---@return CS.System.String[]
function CS.UnityEngine.AudioSettings.GetSpatializerPluginNames()
end

---@return CS.System.String
function CS.UnityEngine.AudioSettings.GetSpatializerPluginName()
end

---@param pluginName : CS.System.String
function CS.UnityEngine.AudioSettings.SetSpatializerPluginName(pluginName)
end

---@return CS.UnityEngine.AudioConfiguration
function CS.UnityEngine.AudioSettings.GetConfiguration()
end

---@param config : CS.UnityEngine.AudioConfiguration
---@return CS.System.Boolean
function CS.UnityEngine.AudioSettings.Reset(config)
end

---@param value : CS.UnityEngine.AudioConfigurationChangeHandler
function CS.UnityEngine.AudioSettings.add_OnAudioConfigurationChanged(value)
end

---@param value : CS.UnityEngine.AudioConfigurationChangeHandler
function CS.UnityEngine.AudioSettings.remove_OnAudioConfigurationChanged(value)
end