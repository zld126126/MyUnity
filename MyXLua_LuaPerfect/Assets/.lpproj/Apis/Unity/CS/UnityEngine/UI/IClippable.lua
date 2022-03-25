---@class CS.UnityEngine.UI.IClippable
CS.UnityEngine.UI.IClippable = {}

---@property readonly CS.UnityEngine.UI.IClippable.gameObject : CS.UnityEngine.GameObject
CS.UnityEngine.UI.IClippable.gameObject = nil

---@property readonly CS.UnityEngine.UI.IClippable.rectTransform : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.IClippable.rectTransform = nil

function CS.UnityEngine.UI.IClippable:RecalculateClipping()
end

---@param clipRect : CS.UnityEngine.Rect
---@param validRect : CS.System.Boolean
function CS.UnityEngine.UI.IClippable:Cull(clipRect, validRect)
end

---@param value : CS.UnityEngine.Rect
---@param validRect : CS.System.Boolean
function CS.UnityEngine.UI.IClippable:SetClipRect(value, validRect)
end

---@param clipSoftness : CS.UnityEngine.Vector2
function CS.UnityEngine.UI.IClippable:SetClipSoftness(clipSoftness)
end