---@class CS.UnityEngine.UI.Mask : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.Mask = {}

---@property readonly CS.UnityEngine.UI.Mask.rectTransform : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Mask.rectTransform = nil

---@property readwrite CS.UnityEngine.UI.Mask.showMaskGraphic : CS.System.Boolean
CS.UnityEngine.UI.Mask.showMaskGraphic = nil

---@property readonly CS.UnityEngine.UI.Mask.graphic : CS.UnityEngine.UI.Graphic
CS.UnityEngine.UI.Mask.graphic = nil

---@return CS.System.Boolean
function CS.UnityEngine.UI.Mask:MaskEnabled()
end

function CS.UnityEngine.UI.Mask:OnSiblingGraphicEnabledDisabled()
end

---@param sp : CS.UnityEngine.Vector2
---@param eventCamera : CS.UnityEngine.Camera
---@return CS.System.Boolean
function CS.UnityEngine.UI.Mask:IsRaycastLocationValid(sp, eventCamera)
end

---@param baseMaterial : CS.UnityEngine.Material
---@return CS.UnityEngine.Material
function CS.UnityEngine.UI.Mask:GetModifiedMaterial(baseMaterial)
end