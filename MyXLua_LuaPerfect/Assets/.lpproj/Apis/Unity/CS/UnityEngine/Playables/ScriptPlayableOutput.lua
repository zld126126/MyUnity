---@class CS.UnityEngine.Playables.ScriptPlayableOutput : CS.System.ValueType
CS.UnityEngine.Playables.ScriptPlayableOutput = {}

---@property readonly CS.UnityEngine.Playables.ScriptPlayableOutput.Null : CS.UnityEngine.Playables.ScriptPlayableOutput
CS.UnityEngine.Playables.ScriptPlayableOutput.Null = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param name : CS.System.String
---@return CS.UnityEngine.Playables.ScriptPlayableOutput
function CS.UnityEngine.Playables.ScriptPlayableOutput.Create(graph, name)
end

---@return CS.UnityEngine.Playables.PlayableOutputHandle
function CS.UnityEngine.Playables.ScriptPlayableOutput:GetHandle()
end

---@param output : CS.UnityEngine.Playables.ScriptPlayableOutput
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Playables.ScriptPlayableOutput.op_Implicit(output)
end

---@param output : CS.UnityEngine.Playables.PlayableOutput
---@return CS.UnityEngine.Playables.ScriptPlayableOutput
function CS.UnityEngine.Playables.ScriptPlayableOutput.op_Explicit(output)
end