---@class CS.UnityEngine.AudioSource : CS.UnityEngine.AudioBehaviour
CS.UnityEngine.AudioSource = {}

---@property readwrite CS.UnityEngine.AudioSource.panLevel : CS.System.Single
CS.UnityEngine.AudioSource.panLevel = nil

---@property readwrite CS.UnityEngine.AudioSource.pan : CS.System.Single
CS.UnityEngine.AudioSource.pan = nil

---@property readwrite CS.UnityEngine.AudioSource.volume : CS.System.Single
CS.UnityEngine.AudioSource.volume = nil

---@property readwrite CS.UnityEngine.AudioSource.pitch : CS.System.Single
CS.UnityEngine.AudioSource.pitch = nil

---@property readwrite CS.UnityEngine.AudioSource.time : CS.System.Single
CS.UnityEngine.AudioSource.time = nil

---@property readwrite CS.UnityEngine.AudioSource.timeSamples : CS.System.Int32
CS.UnityEngine.AudioSource.timeSamples = nil

---@property readwrite CS.UnityEngine.AudioSource.clip : CS.UnityEngine.AudioClip
CS.UnityEngine.AudioSource.clip = nil

---@property readwrite CS.UnityEngine.AudioSource.outputAudioMixerGroup : CS.UnityEngine.Audio.AudioMixerGroup
CS.UnityEngine.AudioSource.outputAudioMixerGroup = nil

---@property readonly CS.UnityEngine.AudioSource.isPlaying : CS.System.Boolean
CS.UnityEngine.AudioSource.isPlaying = nil

---@property readonly CS.UnityEngine.AudioSource.isVirtual : CS.System.Boolean
CS.UnityEngine.AudioSource.isVirtual = nil

---@property readwrite CS.UnityEngine.AudioSource.loop : CS.System.Boolean
CS.UnityEngine.AudioSource.loop = nil

---@property readwrite CS.UnityEngine.AudioSource.ignoreListenerVolume : CS.System.Boolean
CS.UnityEngine.AudioSource.ignoreListenerVolume = nil

---@property readwrite CS.UnityEngine.AudioSource.playOnAwake : CS.System.Boolean
CS.UnityEngine.AudioSource.playOnAwake = nil

---@property readwrite CS.UnityEngine.AudioSource.ignoreListenerPause : CS.System.Boolean
CS.UnityEngine.AudioSource.ignoreListenerPause = nil

---@property readwrite CS.UnityEngine.AudioSource.velocityUpdateMode : CS.UnityEngine.AudioVelocityUpdateMode
CS.UnityEngine.AudioSource.velocityUpdateMode = nil

---@property readwrite CS.UnityEngine.AudioSource.panStereo : CS.System.Single
CS.UnityEngine.AudioSource.panStereo = nil

---@property readwrite CS.UnityEngine.AudioSource.spatialBlend : CS.System.Single
CS.UnityEngine.AudioSource.spatialBlend = nil

---@property readwrite CS.UnityEngine.AudioSource.spatialize : CS.System.Boolean
CS.UnityEngine.AudioSource.spatialize = nil

---@property readwrite CS.UnityEngine.AudioSource.spatializePostEffects : CS.System.Boolean
CS.UnityEngine.AudioSource.spatializePostEffects = nil

---@property readwrite CS.UnityEngine.AudioSource.reverbZoneMix : CS.System.Single
CS.UnityEngine.AudioSource.reverbZoneMix = nil

---@property readwrite CS.UnityEngine.AudioSource.bypassEffects : CS.System.Boolean
CS.UnityEngine.AudioSource.bypassEffects = nil

---@property readwrite CS.UnityEngine.AudioSource.bypassListenerEffects : CS.System.Boolean
CS.UnityEngine.AudioSource.bypassListenerEffects = nil

---@property readwrite CS.UnityEngine.AudioSource.bypassReverbZones : CS.System.Boolean
CS.UnityEngine.AudioSource.bypassReverbZones = nil

---@property readwrite CS.UnityEngine.AudioSource.dopplerLevel : CS.System.Single
CS.UnityEngine.AudioSource.dopplerLevel = nil

---@property readwrite CS.UnityEngine.AudioSource.spread : CS.System.Single
CS.UnityEngine.AudioSource.spread = nil

---@property readwrite CS.UnityEngine.AudioSource.priority : CS.System.Int32
CS.UnityEngine.AudioSource.priority = nil

---@property readwrite CS.UnityEngine.AudioSource.mute : CS.System.Boolean
CS.UnityEngine.AudioSource.mute = nil

---@property readwrite CS.UnityEngine.AudioSource.minDistance : CS.System.Single
CS.UnityEngine.AudioSource.minDistance = nil

---@property readwrite CS.UnityEngine.AudioSource.maxDistance : CS.System.Single
CS.UnityEngine.AudioSource.maxDistance = nil

---@property readwrite CS.UnityEngine.AudioSource.rolloffMode : CS.UnityEngine.AudioRolloffMode
CS.UnityEngine.AudioSource.rolloffMode = nil

---@property readwrite CS.UnityEngine.AudioSource.minVolume : CS.System.Single
CS.UnityEngine.AudioSource.minVolume = nil

---@property readwrite CS.UnityEngine.AudioSource.maxVolume : CS.System.Single
CS.UnityEngine.AudioSource.maxVolume = nil

---@property readwrite CS.UnityEngine.AudioSource.rolloffFactor : CS.System.Single
CS.UnityEngine.AudioSource.rolloffFactor = nil

---@return CS.UnityEngine.AudioSource
function CS.UnityEngine.AudioSource()
end

function CS.UnityEngine.AudioSource:Play()
end

---@param delay : CS.System.UInt64
function CS.UnityEngine.AudioSource:Play(delay)
end

---@param delay : CS.System.Single
function CS.UnityEngine.AudioSource:PlayDelayed(delay)
end

---@param time : CS.System.Double
function CS.UnityEngine.AudioSource:PlayScheduled(time)
end

---@param clip : CS.UnityEngine.AudioClip
function CS.UnityEngine.AudioSource:PlayOneShot(clip)
end

---@param clip : CS.UnityEngine.AudioClip
---@param volumeScale : CS.System.Single
function CS.UnityEngine.AudioSource:PlayOneShot(clip, volumeScale)
end

---@param time : CS.System.Double
function CS.UnityEngine.AudioSource:SetScheduledStartTime(time)
end

---@param time : CS.System.Double
function CS.UnityEngine.AudioSource:SetScheduledEndTime(time)
end

function CS.UnityEngine.AudioSource:Stop()
end

function CS.UnityEngine.AudioSource:Pause()
end

function CS.UnityEngine.AudioSource:UnPause()
end

---@param clip : CS.UnityEngine.AudioClip
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.AudioSource.PlayClipAtPoint(clip, position)
end

---@param clip : CS.UnityEngine.AudioClip
---@param position : CS.UnityEngine.Vector3
---@param volume : CS.System.Single
function CS.UnityEngine.AudioSource.PlayClipAtPoint(clip, position, volume)
end

---@param type : CS.UnityEngine.AudioSourceCurveType
---@param curve : CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AudioSource:SetCustomCurve(type, curve)
end

---@param type : CS.UnityEngine.AudioSourceCurveType
---@return CS.UnityEngine.AnimationCurve
function CS.UnityEngine.AudioSource:GetCustomCurve(type)
end

---@param numSamples : CS.System.Int32
---@param channel : CS.System.Int32
---@return CS.System.Single[]
function CS.UnityEngine.AudioSource:GetOutputData(numSamples, channel)
end

---@param samples : CS.System.Single[]
---@param channel : CS.System.Int32
function CS.UnityEngine.AudioSource:GetOutputData(samples, channel)
end

---@param numSamples : CS.System.Int32
---@param channel : CS.System.Int32
---@param window : CS.UnityEngine.FFTWindow
---@return CS.System.Single[]
function CS.UnityEngine.AudioSource:GetSpectrumData(numSamples, channel, window)
end

---@param samples : CS.System.Single[]
---@param channel : CS.System.Int32
---@param window : CS.UnityEngine.FFTWindow
function CS.UnityEngine.AudioSource:GetSpectrumData(samples, channel, window)
end

---@param index : CS.System.Int32
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.AudioSource:SetSpatializerFloat(index, value)
end

---@param index : CS.System.Int32
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.AudioSource:GetSpatializerFloat(index, value)
end

---@param index : CS.System.Int32
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.AudioSource:GetAmbisonicDecoderFloat(index, value)
end

---@param index : CS.System.Int32
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.AudioSource:SetAmbisonicDecoderFloat(index, value)
end