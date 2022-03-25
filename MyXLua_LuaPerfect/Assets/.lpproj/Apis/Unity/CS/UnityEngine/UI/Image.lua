---@class CS.UnityEngine.UI.Image : CS.UnityEngine.UI.MaskableGraphic
CS.UnityEngine.UI.Image = {}

---@property readwrite CS.UnityEngine.UI.Image.sprite : CS.UnityEngine.Sprite
CS.UnityEngine.UI.Image.sprite = nil

---@property readwrite CS.UnityEngine.UI.Image.overrideSprite : CS.UnityEngine.Sprite
CS.UnityEngine.UI.Image.overrideSprite = nil

---@property readwrite CS.UnityEngine.UI.Image.type : CS.UnityEngine.UI.Type
CS.UnityEngine.UI.Image.type = nil

---@property readwrite CS.UnityEngine.UI.Image.preserveAspect : CS.System.Boolean
CS.UnityEngine.UI.Image.preserveAspect = nil

---@property readwrite CS.UnityEngine.UI.Image.fillCenter : CS.System.Boolean
CS.UnityEngine.UI.Image.fillCenter = nil

---@property readwrite CS.UnityEngine.UI.Image.fillMethod : CS.UnityEngine.UI.FillMethod
CS.UnityEngine.UI.Image.fillMethod = nil

---@property readwrite CS.UnityEngine.UI.Image.fillAmount : CS.System.Single
CS.UnityEngine.UI.Image.fillAmount = nil

---@property readwrite CS.UnityEngine.UI.Image.fillClockwise : CS.System.Boolean
CS.UnityEngine.UI.Image.fillClockwise = nil

---@property readwrite CS.UnityEngine.UI.Image.fillOrigin : CS.System.Int32
CS.UnityEngine.UI.Image.fillOrigin = nil

---@property readwrite CS.UnityEngine.UI.Image.eventAlphaThreshold : CS.System.Single
CS.UnityEngine.UI.Image.eventAlphaThreshold = nil

---@property readwrite CS.UnityEngine.UI.Image.alphaHitTestMinimumThreshold : CS.System.Single
CS.UnityEngine.UI.Image.alphaHitTestMinimumThreshold = nil

---@property readwrite CS.UnityEngine.UI.Image.useSpriteMesh : CS.System.Boolean
CS.UnityEngine.UI.Image.useSpriteMesh = nil

---@property readonly CS.UnityEngine.UI.Image.defaultETC1GraphicMaterial : CS.UnityEngine.Material
CS.UnityEngine.UI.Image.defaultETC1GraphicMaterial = nil

---@property readonly CS.UnityEngine.UI.Image.mainTexture : CS.UnityEngine.Texture
CS.UnityEngine.UI.Image.mainTexture = nil

---@property readonly CS.UnityEngine.UI.Image.hasBorder : CS.System.Boolean
CS.UnityEngine.UI.Image.hasBorder = nil

---@property readwrite CS.UnityEngine.UI.Image.pixelsPerUnitMultiplier : CS.System.Single
CS.UnityEngine.UI.Image.pixelsPerUnitMultiplier = nil

---@property readonly CS.UnityEngine.UI.Image.pixelsPerUnit : CS.System.Single
CS.UnityEngine.UI.Image.pixelsPerUnit = nil

---@property readwrite CS.UnityEngine.UI.Image.material : CS.UnityEngine.Material
CS.UnityEngine.UI.Image.material = nil

---@property readonly CS.UnityEngine.UI.Image.minWidth : CS.System.Single
CS.UnityEngine.UI.Image.minWidth = nil

---@property readonly CS.UnityEngine.UI.Image.preferredWidth : CS.System.Single
CS.UnityEngine.UI.Image.preferredWidth = nil

---@property readonly CS.UnityEngine.UI.Image.flexibleWidth : CS.System.Single
CS.UnityEngine.UI.Image.flexibleWidth = nil

---@property readonly CS.UnityEngine.UI.Image.minHeight : CS.System.Single
CS.UnityEngine.UI.Image.minHeight = nil

---@property readonly CS.UnityEngine.UI.Image.preferredHeight : CS.System.Single
CS.UnityEngine.UI.Image.preferredHeight = nil

---@property readonly CS.UnityEngine.UI.Image.flexibleHeight : CS.System.Single
CS.UnityEngine.UI.Image.flexibleHeight = nil

---@property readonly CS.UnityEngine.UI.Image.layoutPriority : CS.System.Int32
CS.UnityEngine.UI.Image.layoutPriority = nil

function CS.UnityEngine.UI.Image:DisableSpriteOptimizations()
end

function CS.UnityEngine.UI.Image:OnBeforeSerialize()
end

function CS.UnityEngine.UI.Image:OnAfterDeserialize()
end

function CS.UnityEngine.UI.Image:SetNativeSize()
end

function CS.UnityEngine.UI.Image:CalculateLayoutInputHorizontal()
end

function CS.UnityEngine.UI.Image:CalculateLayoutInputVertical()
end

---@param screenPoint : CS.UnityEngine.Vector2
---@param eventCamera : CS.UnityEngine.Camera
---@return CS.System.Boolean
function CS.UnityEngine.UI.Image:IsRaycastLocationValid(screenPoint, eventCamera)
end