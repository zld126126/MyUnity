---@class CS.UnityEngine.Experimental.Playables.TexturePlayableOutput : CS.System.ValueType
CS.UnityEngine.Experimental.Playables.TexturePlayableOutput = {}

---@property readonly CS.UnityEngine.Experimental.Playables.TexturePlayableOutput.Null : CS.UnityEngine.Experimental.Playables.TexturePlayableOutput
CS.UnityEngine.Experimental.Playables.TexturePlayableOutput.Null = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param name : CS.System.String
---@param target : CS.UnityEngine.RenderTexture
---@return CS.UnityEngine.Experimental.Playables.TexturePlayableOutput
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput.Create(graph, name, target)
end

---@return CS.UnityEngine.Playables.PlayableOutputHandle
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput:GetHandle()
end

---@param output : CS.UnityEngine.Experimental.Playables.TexturePlayableOutput
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput.op_Implicit(output)
end

---@param output : CS.UnityEngine.Playables.PlayableOutput
---@return CS.UnityEngine.Experimental.Playables.TexturePlayableOutput
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput.op_Explicit(output)
end

---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput:GetTarget()
end

---@param value : CS.UnityEngine.RenderTexture
function CS.UnityEngine.Experimental.Playables.TexturePlayableOutput:SetTarget(value)
end