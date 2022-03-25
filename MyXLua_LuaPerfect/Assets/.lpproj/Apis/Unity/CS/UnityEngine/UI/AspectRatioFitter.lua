---@class CS.UnityEngine.UI.AspectRatioFitter : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.AspectRatioFitter = {}

---@property readwrite CS.UnityEngine.UI.AspectRatioFitter.aspectMode : CS.UnityEngine.UI.AspectMode
CS.UnityEngine.UI.AspectRatioFitter.aspectMode = nil

---@property readwrite CS.UnityEngine.UI.AspectRatioFitter.aspectRatio : CS.System.Single
CS.UnityEngine.UI.AspectRatioFitter.aspectRatio = nil

function CS.UnityEngine.UI.AspectRatioFitter:SetLayoutHorizontal()
end

function CS.UnityEngine.UI.AspectRatioFitter:SetLayoutVertical()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.AspectRatioFitter:IsComponentValidOnObject()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.AspectRatioFitter:IsAspectModeValid()
end