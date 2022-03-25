---@class CS.UnityEngine.Audio.AudioPlayableOutput : CS.System.ValueType
CS.UnityEngine.Audio.AudioPlayableOutput = {}

---@property readonly CS.UnityEngine.Audio.AudioPlayableOutput.Null : CS.UnityEngine.Audio.AudioPlayableOutput
CS.UnityEngine.Audio.AudioPlayableOutput.Null = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param name : CS.System.String
---@param target : CS.UnityEngine.AudioSource
---@return CS.UnityEngine.Audio.AudioPlayableOutput
function CS.UnityEngine.Audio.AudioPlayableOutput.Create(graph, name, target)
end

---@return CS.UnityEngine.Playables.PlayableOutputHandle
function CS.UnityEngine.Audio.AudioPlayableOutput:GetHandle()
end

---@param output : CS.UnityEngine.Audio.AudioPlayableOutput
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Audio.AudioPlayableOutput.op_Implicit(output)
end

---@param output : CS.UnityEngine.Playables.PlayableOutput
---@return CS.UnityEngine.Audio.AudioPlayableOutput
function CS.UnityEngine.Audio.AudioPlayableOutput.op_Explicit(output)
end

---@return CS.UnityEngine.AudioSource
function CS.UnityEngine.Audio.AudioPlayableOutput:GetTarget()
end

---@param value : CS.UnityEngine.AudioSource
function CS.UnityEngine.Audio.AudioPlayableOutput:SetTarget(value)
end

---@return CS.System.Boolean
function CS.UnityEngine.Audio.AudioPlayableOutput:GetEvaluateOnSeek()
end

---@param value : CS.System.Boolean
function CS.UnityEngine.Audio.AudioPlayableOutput:SetEvaluateOnSeek(value)
end