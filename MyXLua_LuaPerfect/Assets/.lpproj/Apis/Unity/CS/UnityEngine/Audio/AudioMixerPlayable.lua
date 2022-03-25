---@class CS.UnityEngine.Audio.AudioMixerPlayable : CS.System.ValueType
CS.UnityEngine.Audio.AudioMixerPlayable = {}

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param inputCount : CS.System.Int32
---@param normalizeInputVolumes : CS.System.Boolean
---@return CS.UnityEngine.Audio.AudioMixerPlayable
function CS.UnityEngine.Audio.AudioMixerPlayable.Create(graph, inputCount, normalizeInputVolumes)
end

---@return CS.UnityEngine.Playables.PlayableHandle
function CS.UnityEngine.Audio.AudioMixerPlayable:GetHandle()
end

---@param playable : CS.UnityEngine.Audio.AudioMixerPlayable
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Audio.AudioMixerPlayable.op_Implicit(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@return CS.UnityEngine.Audio.AudioMixerPlayable
function CS.UnityEngine.Audio.AudioMixerPlayable.op_Explicit(playable)
end

---@param other : CS.UnityEngine.Audio.AudioMixerPlayable
---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioMixerPlayable:Equals(other)
end