---@class CS.UnityEngine.Audio.AudioMixer : CS.UnityEngine.Object
CS.UnityEngine.Audio.AudioMixer = {}

---@property readwrite CS.UnityEngine.Audio.AudioMixer.outputAudioMixerGroup : CS.UnityEngine.Audio.AudioMixerGroup
CS.UnityEngine.Audio.AudioMixer.outputAudioMixerGroup = nil

---@property readwrite CS.UnityEngine.Audio.AudioMixer.updateMode : CS.UnityEngine.Audio.AudioMixerUpdateMode
CS.UnityEngine.Audio.AudioMixer.updateMode = nil

---@param name : CS.System.String
---@return CS.UnityEngine.Audio.AudioMixerSnapshot
function CS.UnityEngine.Audio.AudioMixer:FindSnapshot(name)
end

---@param subPath : CS.System.String
---@return CS.UnityEngine.Audio.AudioMixerGroup[]
function CS.UnityEngine.Audio.AudioMixer:FindMatchingGroups(subPath)
end

---@param snapshots : CS.UnityEngine.Audio.AudioMixerSnapshot[]
---@param weights : CS.System.Single[]
---@param timeToReach : CS.System.Single
function CS.UnityEngine.Audio.AudioMixer:TransitionToSnapshots(snapshots, weights, timeToReach)
end

---@param name : CS.System.String
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioMixer:SetFloat(name, value)
end

---@param name : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioMixer:ClearFloat(name)
end

---@param name : CS.System.String
---@param value : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioMixer:GetFloat(name, value)
end