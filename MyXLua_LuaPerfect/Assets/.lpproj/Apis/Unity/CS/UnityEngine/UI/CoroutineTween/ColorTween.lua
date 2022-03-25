---@class CS.UnityEngine.UI.CoroutineTween.ColorTween : CS.System.ValueType
CS.UnityEngine.UI.CoroutineTween.ColorTween = {}

---@property readwrite CS.UnityEngine.UI.CoroutineTween.ColorTween.startColor : CS.UnityEngine.Color
CS.UnityEngine.UI.CoroutineTween.ColorTween.startColor = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.ColorTween.targetColor : CS.UnityEngine.Color
CS.UnityEngine.UI.CoroutineTween.ColorTween.targetColor = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.ColorTween.tweenMode : CS.UnityEngine.UI.CoroutineTween.ColorTweenMode
CS.UnityEngine.UI.CoroutineTween.ColorTween.tweenMode = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.ColorTween.duration : CS.System.Single
CS.UnityEngine.UI.CoroutineTween.ColorTween.duration = nil

---@property readwrite CS.UnityEngine.UI.CoroutineTween.ColorTween.ignoreTimeScale : CS.System.Boolean
CS.UnityEngine.UI.CoroutineTween.ColorTween.ignoreTimeScale = nil

---@param floatPercentage : CS.System.Single
function CS.UnityEngine.UI.CoroutineTween.ColorTween:TweenValue(floatPercentage)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.CoroutineTween.ColorTween:AddOnChangedCallback(callback)
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CoroutineTween.ColorTween:GetIgnoreTimescale()
end

---@return CS.System.Single
function CS.UnityEngine.UI.CoroutineTween.ColorTween:GetDuration()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CoroutineTween.ColorTween:ValidTarget()
end