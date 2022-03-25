---@class CS.UnityEngine.UI.Graphic : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.Graphic = {}

---@property readonly CS.UnityEngine.UI.Graphic.defaultGraphicMaterial : CS.UnityEngine.Material
CS.UnityEngine.UI.Graphic.defaultGraphicMaterial = nil

---@property readwrite CS.UnityEngine.UI.Graphic.color : CS.UnityEngine.Color
CS.UnityEngine.UI.Graphic.color = nil

---@property readwrite CS.UnityEngine.UI.Graphic.raycastTarget : CS.System.Boolean
CS.UnityEngine.UI.Graphic.raycastTarget = nil

---@property readwrite CS.UnityEngine.UI.Graphic.raycastPadding : CS.UnityEngine.Vector4
CS.UnityEngine.UI.Graphic.raycastPadding = nil

---@property readonly CS.UnityEngine.UI.Graphic.depth : CS.System.Int32
CS.UnityEngine.UI.Graphic.depth = nil

---@property readonly CS.UnityEngine.UI.Graphic.rectTransform : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Graphic.rectTransform = nil

---@property readonly CS.UnityEngine.UI.Graphic.canvas : CS.UnityEngine.Canvas
CS.UnityEngine.UI.Graphic.canvas = nil

---@property readonly CS.UnityEngine.UI.Graphic.canvasRenderer : CS.UnityEngine.CanvasRenderer
CS.UnityEngine.UI.Graphic.canvasRenderer = nil

---@property readonly CS.UnityEngine.UI.Graphic.defaultMaterial : CS.UnityEngine.Material
CS.UnityEngine.UI.Graphic.defaultMaterial = nil

---@property readwrite CS.UnityEngine.UI.Graphic.material : CS.UnityEngine.Material
CS.UnityEngine.UI.Graphic.material = nil

---@property readonly CS.UnityEngine.UI.Graphic.materialForRendering : CS.UnityEngine.Material
CS.UnityEngine.UI.Graphic.materialForRendering = nil

---@property readonly CS.UnityEngine.UI.Graphic.mainTexture : CS.UnityEngine.Texture
CS.UnityEngine.UI.Graphic.mainTexture = nil

function CS.UnityEngine.UI.Graphic:SetAllDirty()
end

function CS.UnityEngine.UI.Graphic:SetLayoutDirty()
end

function CS.UnityEngine.UI.Graphic:SetVerticesDirty()
end

function CS.UnityEngine.UI.Graphic:SetMaterialDirty()
end

function CS.UnityEngine.UI.Graphic:OnCullingChanged()
end

---@param update : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.Graphic:Rebuild(update)
end

function CS.UnityEngine.UI.Graphic:LayoutComplete()
end

function CS.UnityEngine.UI.Graphic:GraphicUpdateComplete()
end

function CS.UnityEngine.UI.Graphic:OnRebuildRequested()
end

function CS.UnityEngine.UI.Graphic:SetNativeSize()
end

---@param sp : CS.UnityEngine.Vector2
---@param eventCamera : CS.UnityEngine.Camera
---@return CS.System.Boolean
function CS.UnityEngine.UI.Graphic:Raycast(sp, eventCamera)
end

---@param point : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.UI.Graphic:PixelAdjustPoint(point)
end

---@return CS.UnityEngine.Rect
function CS.UnityEngine.UI.Graphic:GetPixelAdjustedRect()
end

---@param targetColor : CS.UnityEngine.Color
---@param duration : CS.System.Single
---@param ignoreTimeScale : CS.System.Boolean
---@param useAlpha : CS.System.Boolean
function CS.UnityEngine.UI.Graphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

---@param targetColor : CS.UnityEngine.Color
---@param duration : CS.System.Single
---@param ignoreTimeScale : CS.System.Boolean
---@param useAlpha : CS.System.Boolean
---@param useRGB : CS.System.Boolean
function CS.UnityEngine.UI.Graphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

---@param alpha : CS.System.Single
---@param duration : CS.System.Single
---@param ignoreTimeScale : CS.System.Boolean
function CS.UnityEngine.UI.Graphic:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:RegisterDirtyLayoutCallback(action)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:UnregisterDirtyLayoutCallback(action)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:RegisterDirtyVerticesCallback(action)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:UnregisterDirtyVerticesCallback(action)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:RegisterDirtyMaterialCallback(action)
end

---@param action : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.UI.Graphic:UnregisterDirtyMaterialCallback(action)
end