---@class CS.UnityEngine.Playables.Playable : CS.System.ValueType
CS.UnityEngine.Playables.Playable = {}

---@property readonly CS.UnityEngine.Playables.Playable.Null : CS.UnityEngine.Playables.Playable
CS.UnityEngine.Playables.Playable.Null = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param inputCount : CS.System.Int32
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.Playable.Create(graph, inputCount)
end

---@return CS.UnityEngine.Playables.PlayableHandle
function CS.UnityEngine.Playables.Playable:GetHandle()
end

---@return CS.System.Type
function CS.UnityEngine.Playables.Playable:GetPlayableType()
end

---@param other : CS.UnityEngine.Playables.Playable
---@return CS.System.Boolean
function CS.UnityEngine.Playables.Playable:Equals(other)
end