---@class CS.UnityEngine.AudioClip : CS.UnityEngine.Object
CS.UnityEngine.AudioClip = {}

---@property readonly CS.UnityEngine.AudioClip.length : CS.System.Single
CS.UnityEngine.AudioClip.length = nil

---@property readonly CS.UnityEngine.AudioClip.samples : CS.System.Int32
CS.UnityEngine.AudioClip.samples = nil

---@property readonly CS.UnityEngine.AudioClip.channels : CS.System.Int32
CS.UnityEngine.AudioClip.channels = nil

---@property readonly CS.UnityEngine.AudioClip.frequency : CS.System.Int32
CS.UnityEngine.AudioClip.frequency = nil

---@property readonly CS.UnityEngine.AudioClip.isReadyToPlay : CS.System.Boolean
CS.UnityEngine.AudioClip.isReadyToPlay = nil

---@property readonly CS.UnityEngine.AudioClip.loadType : CS.UnityEngine.AudioClipLoadType
CS.UnityEngine.AudioClip.loadType = nil

---@property readonly CS.UnityEngine.AudioClip.preloadAudioData : CS.System.Boolean
CS.UnityEngine.AudioClip.preloadAudioData = nil

---@property readonly CS.UnityEngine.AudioClip.ambisonic : CS.System.Boolean
CS.UnityEngine.AudioClip.ambisonic = nil

---@property readonly CS.UnityEngine.AudioClip.loadInBackground : CS.System.Boolean
CS.UnityEngine.AudioClip.loadInBackground = nil

---@property readonly CS.UnityEngine.AudioClip.loadState : CS.UnityEngine.AudioDataLoadState
CS.UnityEngine.AudioClip.loadState = nil

---@return CS.System.Boolean
function CS.UnityEngine.AudioClip:LoadAudioData()
end

---@return CS.System.Boolean
function CS.UnityEngine.AudioClip:UnloadAudioData()
end

---@param data : CS.System.Single[]
---@param offsetSamples : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.AudioClip:GetData(data, offsetSamples)
end

---@param data : CS.System.Single[]
---@param offsetSamples : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.AudioClip:SetData(data, offsetSamples)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param _3D : CS.System.Boolean
---@param stream : CS.System.Boolean
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, _3D, stream)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param _3D : CS.System.Boolean
---@param stream : CS.System.Boolean
---@param pcmreadercallback : CS.UnityEngine.PCMReaderCallback
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, _3D, stream, pcmreadercallback)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param _3D : CS.System.Boolean
---@param stream : CS.System.Boolean
---@param pcmreadercallback : CS.UnityEngine.PCMReaderCallback
---@param pcmsetpositioncallback : CS.UnityEngine.PCMSetPositionCallback
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, _3D, stream, pcmreadercallback, pcmsetpositioncallback)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param stream : CS.System.Boolean
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, stream)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param stream : CS.System.Boolean
---@param pcmreadercallback : CS.UnityEngine.PCMReaderCallback
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback)
end

---@param name : CS.System.String
---@param lengthSamples : CS.System.Int32
---@param channels : CS.System.Int32
---@param frequency : CS.System.Int32
---@param stream : CS.System.Boolean
---@param pcmreadercallback : CS.UnityEngine.PCMReaderCallback
---@param pcmsetpositioncallback : CS.UnityEngine.PCMSetPositionCallback
---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback, pcmsetpositioncallback)
end