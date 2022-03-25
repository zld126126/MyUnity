---@class CS.UnityEngine.Playables.IPlayableBehaviour
CS.UnityEngine.Playables.IPlayableBehaviour = {}

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.IPlayableBehaviour:OnGraphStart(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.IPlayableBehaviour:OnGraphStop(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.IPlayableBehaviour:OnPlayableCreate(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.IPlayableBehaviour:OnPlayableDestroy(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.IPlayableBehaviour:OnBehaviourPlay(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.IPlayableBehaviour:OnBehaviourPause(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.IPlayableBehaviour:PrepareFrame(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
---@param playerData : CS.System.Object
function CS.UnityEngine.Playables.IPlayableBehaviour:ProcessFrame(playable, info, playerData)
end