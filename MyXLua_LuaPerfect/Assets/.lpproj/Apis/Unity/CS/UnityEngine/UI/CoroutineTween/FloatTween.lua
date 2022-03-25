---@class CS.UnityEngine.UI.CoroutineTween.FloatTween : CS.System.ValueType
CS.UnityEngine.UI.CoroutineTween.FloatTween = {}

---@property readwrite CS.UnityEngine.UI.CoroutineTween.FloatTween.startValue : CS.System.Single
CS.UnityEngine.UI.CoroutineTween.FloatTween.startValue = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.FloatTween.targetValue : CS.System.Single
CS.UnityEngine.UI.CoroutineTween.FloatTween.targetValue = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.FloatTween.duration : CS.System.Single
CS.UnityEngine.UI.CoroutineTween.FloatTween.duration = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.FloatTween.ignoreTimeScale : CS.System.Boolean
CS.UnityEngine.UI.CoroutineTween.FloatTween.ignoreTimeScale = nil

---@param floatPercentage : CS.System.Single
function CS.UnityEngine.UI.CoroutineTween.FloatTween:TweenValue(floatPercentage)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.CoroutineTween.FloatTween:AddOnChangedCallback(callback)
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CoroutineTween.FloatTween:GetIgnoreTimescale()
end

---@return CS.System.Single
function CS.UnityEngine.UI.CoroutineTween.FloatTween:GetDuration()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CoroutineTween.FloatTween:ValidTarget()
end