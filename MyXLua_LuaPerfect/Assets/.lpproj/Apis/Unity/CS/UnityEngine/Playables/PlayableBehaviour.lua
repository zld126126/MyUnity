---@class CS.UnityEngine.Playables.PlayableBehaviour : CS.System.Object
CS.UnityEngine.Playables.PlayableBehaviour = {}

---@return CS.UnityEngine.Playables.PlayableBehaviour
function CS.UnityEngine.Playables.PlayableBehaviour()
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableBehaviour:OnGraphStart(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableBehaviour:OnGraphStop(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableBehaviour:OnPlayableCreate(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableBehaviour:OnPlayableDestroy(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.PlayableBehaviour:OnBehaviourDelay(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.PlayableBehaviour:OnBehaviourPlay(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.PlayableBehaviour:OnBehaviourPause(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.PlayableBehaviour:PrepareData(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
function CS.UnityEngine.Playables.PlayableBehaviour:PrepareFrame(playable, info)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@param info : CS.UnityEngine.Playables.FrameData
---@param playerData : CS.System.Object
function CS.UnityEngine.Playables.PlayableBehaviour:ProcessFrame(playable, info, playerData)
end

---@return CS.System.Object
function CS.UnityEngine.Playables.PlayableBehaviour:Clone()
end