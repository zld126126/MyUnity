---@class CS.UnityEngine.UI.Text : CS.UnityEngine.UI.MaskableGraphic
CS.UnityEngine.UI.Text = {}

---@property readonly CS.UnityEngine.UI.Text.cachedTextGenerator : CS.UnityEngine.TextGenerator
CS.UnityEngine.UI.Text.cachedTextGenerator = nil

---@property readonly CS.UnityEngine.UI.Text.cachedTextGeneratorForLayout : CS.UnityEngine.TextGenerator
CS.UnityEngine.UI.Text.cachedTextGeneratorForLayout = nil

---@property readonly CS.UnityEngine.UI.Text.mainTexture : CS.UnityEngine.Texture
CS.UnityEngine.UI.Text.mainTexture = nil

---@property readwrite CS.UnityEngine.UI.Text.font : CS.UnityEngine.Font
CS.UnityEngine.UI.Text.font = nil

---@property readwrite CS.UnityEngine.UI.Text.text : CS.System.String
CS.UnityEngine.UI.Text.text = nil

---@property readwrite CS.UnityEngine.UI.Text.supportRichText : CS.System.Boolean
CS.UnityEngine.UI.Text.supportRichText = nil

---@property readwrite CS.UnityEngine.UI.Text.resizeTextForBestFit : CS.System.Boolean
CS.UnityEngine.UI.Text.resizeTextForBestFit = nil

---@property readwrite CS.UnityEngine.UI.Text.resizeTextMinSize : CS.System.Int32
CS.UnityEngine.UI.Text.resizeTextMinSize = nil

---@property readwrite CS.UnityEngine.UI.Text.resizeTextMaxSize : CS.System.Int32
CS.UnityEngine.UI.Text.resizeTextMaxSize = nil

---@property readwrite CS.UnityEngine.UI.Text.alignment : CS.UnityEngine.TextAnchor
CS.UnityEngine.UI.Text.alignment = nil

---@property readwrite CS.UnityEngine.UI.Text.alignByGeometry : CS.System.Boolean
CS.UnityEngine.UI.Text.alignByGeometry = nil

---@property readwrite CS.UnityEngine.UI.Text.fontSize : CS.System.Int32
CS.UnityEngine.UI.Text.fontSize = nil

---@property readwrite CS.UnityEngine.UI.Text.horizontalOverflow : CS.UnityEngine.HorizontalWrapMode
CS.UnityEngine.UI.Text.horizontalOverflow = nil

---@property readwrite CS.UnityEngine.UI.Text.verticalOverflow : CS.UnityEngine.VerticalWrapMode
CS.UnityEngine.UI.Text.verticalOverflow = nil

---@property readwrite CS.UnityEngine.UI.Text.lineSpacing : CS.System.Single
CS.UnityEngine.UI.Text.lineSpacing = nil

---@property readwrite CS.UnityEngine.UI.Text.fontStyle : CS.UnityEngine.FontStyle
CS.UnityEngine.UI.Text.fontStyle = nil

---@property readonly CS.UnityEngine.UI.Text.pixelsPerUnit : CS.System.Single
CS.UnityEngine.UI.Text.pixelsPerUnit = nil

---@property readonly CS.UnityEngine.UI.Text.minWidth : CS.System.Single
CS.UnityEngine.UI.Text.minWidth = nil

---@property readonly CS.UnityEngine.UI.Text.preferredWidth : CS.System.Single
CS.UnityEngine.UI.Text.preferredWidth = nil

---@property readonly CS.UnityEngine.UI.Text.flexibleWidth : CS.System.Single
CS.UnityEngine.UI.Text.flexibleWidth = nil

---@property readonly CS.UnityEngine.UI.Text.minHeight : CS.System.Single
CS.UnityEngine.UI.Text.minHeight = nil

---@property readonly CS.UnityEngine.UI.Text.preferredHeight : CS.System.Single
CS.UnityEngine.UI.Text.preferredHeight = nil

---@property readonly CS.UnityEngine.UI.Text.flexibleHeight : CS.System.Single
CS.UnityEngine.UI.Text.flexibleHeight = nil

---@property readonly CS.UnityEngine.UI.Text.layoutPriority : CS.System.Int32
CS.UnityEngine.UI.Text.layoutPriority = nil

function CS.UnityEngine.UI.Text:FontTextureChanged()
end

---@param extents : CS.UnityEngine.Vector2
---@return CS.UnityEngine.TextGenerationSettings
function CS.UnityEngine.UI.Text:GetGenerationSettings(extents)
end

---@param anchor : CS.UnityEngine.TextAnchor
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.UI.Text.GetTextAnchorPivot(anchor)
end

function CS.UnityEngine.UI.Text:CalculateLayoutInputHorizontal()
end

function CS.UnityEngine.UI.Text:CalculateLayoutInputVertical()
end

function CS.UnityEngine.UI.Text:OnRebuildRequested()
end