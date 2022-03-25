---@class CS.UnityEngine.Playables.IPlayableAsset
CS.UnityEngine.Playables.IPlayableAsset = {}

---@property readonly CS.UnityEngine.Playables.IPlayableAsset.duration : CS.System.Double
CS.UnityEngine.Playables.IPlayableAsset.duration = nil

---@property readonly CS.UnityEngine.Playables.IPlayableAsset.outputs : CS.System.Collections.Generic.IEnumerable
CS.UnityEngine.Playables.IPlayableAsset.outputs = nil

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param owner : CS.UnityEngine.GameObject
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.IPlayableAsset:CreatePlayable(graph, owner)
end