---@class CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable : CS.System.ValueType
CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable = {}

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param material : CS.UnityEngine.Material
---@param pass : CS.System.Int32
---@return CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable.Create(graph, material, pass)
end

---@return CS.UnityEngine.Playables.PlayableHandle
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetHandle()
end

---@param playable : CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable.op_Implicit(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@return CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable.op_Explicit(playable)
end

---@param other : CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:Equals(other)
end

---@return CS.UnityEngine.Material
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetMaterial()
end

---@param value : CS.UnityEngine.Material
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetMaterial(value)
end

---@return CS.System.Int32
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetPass()
end

---@param value : CS.System.Int32
function CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetPass(value)
end