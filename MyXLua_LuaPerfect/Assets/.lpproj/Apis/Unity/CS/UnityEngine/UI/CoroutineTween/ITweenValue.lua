---@module CS.UnityEngine.UI.CoroutineTween
CS.UnityEngine.UI.CoroutineTween = {}

---@class CS.UnityEngine.UI.CoroutineTween.ITweenValue
CS.UnityEngine.UI.CoroutineTween.ITweenValue = {}

---@property readonly CS.UnityEngine.UI.CoroutineTween.ITweenValue.ignoreTimeScale : CS.System.Boolean
CS.UnityEngine.UI.CoroutineTween.ITweenValue.ignoreTimeScale = nil

---@property readonly CS.UnityEngine.UI.CoroutineTween.ITweenValue.duration : CS.System.Single
CS.UnityEngine.UI.CoroutineTween.ITweenValue.duration = nil

---@param floatPercentage : CS.System.Single
function CS.UnityEngine.UI.CoroutineTween.ITweenValue:TweenValue(floatPercentage)
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CoroutineTween.ITweenValue:ValidTarget()
end