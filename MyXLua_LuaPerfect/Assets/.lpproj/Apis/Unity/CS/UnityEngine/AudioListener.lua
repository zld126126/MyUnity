---@class CS.UnityEngine.AudioListener : CS.UnityEngine.AudioBehaviour
CS.UnityEngine.AudioListener = {}

---@property readwrite CS.UnityEngine.AudioListener.volume : CS.System.Single
CS.UnityEngine.AudioListener.volume = nil

---@property readwrite CS.UnityEngine.AudioListener.pause : CS.System.Boolean
CS.UnityEngine.AudioListener.pause = nil

---@property readwrite CS.UnityEngine.AudioListener.velocityUpdateMode : CS.UnityEngine.AudioVelocityUpdateMode
CS.UnityEngine.AudioListener.velocityUpdateMode = nil

---@return CS.UnityEngine.AudioListener
function CS.UnityEngine.AudioListener()
end

---@param numSamples : CS.System.Int32
---@param channel : CS.System.Int32
---@return CS.System.Single[]
function CS.UnityEngine.AudioListener.GetOutputData(numSamples, channel)
end

---@param samples : CS.System.Single[]
---@param channel : CS.System.Int32
function CS.UnityEngine.AudioListener.GetOutputData(samples, channel)
end

---@param numSamples : CS.System.Int32
---@param channel : CS.System.Int32
---@param window : CS.UnityEngine.FFTWindow
---@return CS.System.Single[]
function CS.UnityEngine.AudioListener.GetSpectrumData(numSamples, channel, window)
end

---@param samples : CS.System.Single[]
---@param channel : CS.System.Int32
---@param window : CS.UnityEngine.FFTWindow
function CS.UnityEngine.AudioListener.GetSpectrumData(samples, channel, window)
end