---@module CS.UnityEngine.Audio
CS.UnityEngine.Audio = {}

---@class CS.UnityEngine.Audio.AudioClipPlayable : CS.System.ValueType
CS.UnityEngine.Audio.AudioClipPlayable = {}

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param clip : CS.UnityEngine.AudioClip
---@param looping : CS.System.Boolean
---@return CS.UnityEngine.Audio.AudioClipPlayable
function CS.UnityEngine.Audio.AudioClipPlayable.Create(graph, clip, looping)
end

---@return CS.UnityEngine.Playables.PlayableHandle
function CS.UnityEngine.Audio.AudioClipPlayable:GetHandle()
end

---@param playable : CS.UnityEngine.Audio.AudioClipPlayable
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Audio.AudioClipPlayable.op_Implicit(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@return CS.UnityEngine.Audio.AudioClipPlayable
function CS.UnityEngine.Audio.AudioClipPlayable.op_Explicit(playable)
end

---@param other : CS.UnityEngine.Audio.AudioClipPlayable
---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioClipPlayable:Equals(other)
end

---@return CS.UnityEngine.AudioClip
function CS.UnityEngine.Audio.AudioClipPlayable:GetClip()
end

---@param value : CS.UnityEngine.AudioClip
function CS.UnityEngine.Audio.AudioClipPlayable:SetClip(value)
end

---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioClipPlayable:GetLooped()
end

---@param value : CS.System.Boolean
function CS.UnityEngine.Audio.AudioClipPlayable:SetLooped(value)
end

---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioClipPlayable:IsPlaying()
end

---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioClipPlayable:IsChannelPlaying()
end

---@return CS.System.Double
function CS.UnityEngine.Audio.AudioClipPlayable:GetStartDelay()
end

---@return CS.System.Double
function CS.UnityEngine.Audio.AudioClipPlayable:GetPauseDelay()
end

---@param startTime : CS.System.Double
---@param startDelay : CS.System.Double
function CS.UnityEngine.Audio.AudioClipPlayable:Seek(startTime, startDelay)
end

---@param startTime : CS.System.Double
---@param startDelay : CS.System.Double
---@param duration : CS.System.Double
function CS.UnityEngine.Audio.AudioClipPlayable:Seek(startTime, startDelay, duration)
end