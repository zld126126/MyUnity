---@class CS.UnityEngine.UI.LayoutUtility : CS.System.Object
CS.UnityEngine.UI.LayoutUtility = {}

---@param rect : CS.UnityEngine.RectTransform
---@param axis : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetMinSize(rect, axis)
end

---@param rect : CS.UnityEngine.RectTransform
---@param axis : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetPreferredSize(rect, axis)
end

---@param rect : CS.UnityEngine.RectTransform
---@param axis : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetFlexibleSize(rect, axis)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetMinWidth(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetPreferredWidth(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetFlexibleWidth(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetMinHeight(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetPreferredHeight(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetFlexibleHeight(rect)
end

---@param rect : CS.UnityEngine.RectTransform
---@param property : CS.System.Func
---@param defaultValue : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetLayoutProperty(rect, property, defaultValue)
end

---@param rect : CS.UnityEngine.RectTransform
---@param property : CS.System.Func
---@param defaultValue : CS.System.Single
---@param source : CS.UnityEngine.UI.ILayoutElement
---@return CS.System.Single
function CS.UnityEngine.UI.LayoutUtility.GetLayoutProperty(rect, property, defaultValue, source)
end