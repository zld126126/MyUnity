---@class CS.UnityEngine.Playables.PlayableAsset : CS.UnityEngine.ScriptableObject
CS.UnityEngine.Playables.PlayableAsset = {}

---@property readonly CS.UnityEngine.Playables.PlayableAsset.duration : CS.System.Double
CS.UnityEngine.Playables.PlayableAsset.duration = nil

---@property readonly CS.UnityEngine.Playables.PlayableAsset.outputs : CS.System.Collections.Generic.IEnumerable
CS.UnityEngine.Playables.PlayableAsset.outputs = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param owner : CS.UnityEngine.GameObject
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableAsset:CreatePlayable(graph, owner)
end