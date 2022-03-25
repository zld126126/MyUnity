---@class CS.UnityEngine.UI.MaskableGraphic : CS.UnityEngine.UI.Graphic
CS.UnityEngine.UI.MaskableGraphic = {}

---@property readwrite CS.UnityEngine.UI.MaskableGraphic.onCullStateChanged : CS.UnityEngine.UI.CullStateChangedEvent
CS.UnityEngine.UI.MaskableGraphic.onCullStateChanged = nil

---@property readwrite CS.UnityEngine.UI.MaskableGraphic.maskable : CS.System.Boolean
CS.UnityEngine.UI.MaskableGraphic.maskable = nil

---@property readwrite CS.UnityEngine.UI.MaskableGraphic.isMaskingGraphic : CS.System.Boolean
CS.UnityEngine.UI.MaskableGraphic.isMaskingGraphic = nil

---@param baseMaterial : CS.UnityEngine.Material
---@return CS.UnityEngine.Material
function CS.UnityEngine.UI.MaskableGraphic:GetModifiedMaterial(baseMaterial)
end

---@param clipRect : CS.UnityEngine.Rect
---@param validRect : CS.System.Boolean
function CS.UnityEngine.UI.MaskableGraphic:Cull(clipRect, validRect)
end

---@param clipRect : CS.UnityEngine.Rect
---@param validRect : CS.System.Boolean
function CS.UnityEngine.UI.MaskableGraphic:SetClipRect(clipRect, validRect)
end

---@param clipSoftness : CS.UnityEngine.Vector2
function CS.UnityEngine.UI.MaskableGraphic:SetClipSoftness(clipSoftness)
end

function CS.UnityEngine.UI.MaskableGraphic:ParentMaskStateChanged()
end

function CS.UnityEngine.UI.MaskableGraphic:RecalculateClipping()
end

function CS.UnityEngine.UI.MaskableGraphic:RecalculateMasking()
end