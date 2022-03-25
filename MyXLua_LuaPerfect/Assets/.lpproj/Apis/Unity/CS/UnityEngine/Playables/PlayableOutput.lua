---@class CS.UnityEngine.Playables.PlayableOutput : CS.System.ValueType
CS.UnityEngine.Playables.PlayableOutput = {}

---@property readonly CS.UnityEngine.Playables.PlayableOutput.Null : CS.UnityEngine.Playables.PlayableOutput
CS.UnityEngine.Playables.PlayableOutput.Null = nil

---@return CS.UnityEngine.Playables.PlayableOutputHandle
function CS.UnityEngine.Playables.PlayableOutput:GetHandle()
end

---@return CS.System.Type
function CS.UnityEngine.Playables.PlayableOutput:GetPlayableOutputType()
end

---@param other : CS.UnityEngine.Playables.PlayableOutput
---@return CS.System.Boolean
function CS.UnityEngine.Playables.PlayableOutput:Equals(other)
end