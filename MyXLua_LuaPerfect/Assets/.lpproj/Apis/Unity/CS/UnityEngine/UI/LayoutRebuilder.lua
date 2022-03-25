---@class CS.UnityEngine.UI.LayoutRebuilder : CS.System.Object
CS.UnityEngine.UI.LayoutRebuilder = {}

---@property readonly CS.UnityEngine.UI.LayoutRebuilder.transform : CS.UnityEngine.Transform
CS.UnityEngine.UI.LayoutRebuilder.transform = nil

---@return CS.UnityEngine.UI.LayoutRebuilder
function CS.UnityEngine.UI.LayoutRebuilder()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.LayoutRebuilder:IsDestroyed()
end

---@param layoutRoot : CS.UnityEngine.RectTransform
function CS.UnityEngine.UI.LayoutRebuilder.ForceRebuildLayoutImmediate(layoutRoot)
end

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.LayoutRebuilder:Rebuild(executing)
end

---@param rect : CS.UnityEngine.RectTransform
function CS.UnityEngine.UI.LayoutRebuilder.MarkLayoutForRebuild(rect)
end

function CS.UnityEngine.UI.LayoutRebuilder:LayoutComplete()
end

function CS.UnityEngine.UI.LayoutRebuilder:GraphicUpdateComplete()
end

---@return CS.System.Int32
function CS.UnityEngine.UI.LayoutRebuilder:GetHashCode()
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.UI.LayoutRebuilder:Equals(obj)
end

---@return CS.System.String
function CS.UnityEngine.UI.LayoutRebuilder:ToString()
end