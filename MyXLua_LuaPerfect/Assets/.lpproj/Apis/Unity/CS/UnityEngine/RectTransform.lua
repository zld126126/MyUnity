---@class CS.UnityEngine.RectTransform : CS.UnityEngine.Transform
CS.UnityEngine.RectTransform = {}

---@property readonly CS.UnityEngine.RectTransform.rect : CS.UnityEngine.Rect
CS.UnityEngine.RectTransform.rect = nil

---@property readwrite CS.UnityEngine.RectTransform.anchorMin : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.anchorMin = nil

---@property readwrite CS.UnityEngine.RectTransform.anchorMax : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.anchorMax = nil

---@property readwrite CS.UnityEngine.RectTransform.anchoredPosition : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.anchoredPosition = nil

---@property readwrite CS.UnityEngine.RectTransform.sizeDelta : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.sizeDelta = nil

---@property readwrite CS.UnityEngine.RectTransform.pivot : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.pivot = nil

---@property readwrite CS.UnityEngine.RectTransform.anchoredPosition3D : CS.UnityEngine.Vector3
CS.UnityEngine.RectTransform.anchoredPosition3D = nil

---@property readwrite CS.UnityEngine.RectTransform.offsetMin : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.offsetMin = nil

---@property readwrite CS.UnityEngine.RectTransform.offsetMax : CS.UnityEngine.Vector2
CS.UnityEngine.RectTransform.offsetMax = nil

---@return CS.UnityEngine.RectTransform
function CS.UnityEngine.RectTransform()
end

---@param value : CS.UnityEngine.ReapplyDrivenProperties
function CS.UnityEngine.RectTransform.add_reapplyDrivenProperties(value)
end

---@param value : CS.UnityEngine.ReapplyDrivenProperties
function CS.UnityEngine.RectTransform.remove_reapplyDrivenProperties(value)
end

function CS.UnityEngine.RectTransform:ForceUpdateRectTransforms()
end

---@param fourCornersArray : CS.UnityEngine.Vector3[]
function CS.UnityEngine.RectTransform:GetLocalCorners(fourCornersArray)
end

---@param fourCornersArray : CS.UnityEngine.Vector3[]
function CS.UnityEngine.RectTransform:GetWorldCorners(fourCornersArray)
end

---@param edge : CS.UnityEngine.Edge
---@param inset : CS.System.Single
---@param size : CS.System.Single
function CS.UnityEngine.RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size)
end

---@param axis : CS.UnityEngine.Axis
---@param size : CS.System.Single
function CS.UnityEngine.RectTransform:SetSizeWithCurrentAnchors(axis, size)
end