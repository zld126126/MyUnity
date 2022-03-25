---@class CS.UnityEngine.UI.LayoutGroup : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.LayoutGroup = {}

---@property readwrite CS.UnityEngine.UI.LayoutGroup.padding : CS.UnityEngine.RectOffset
CS.UnityEngine.UI.LayoutGroup.padding = nil

---@property readwrite CS.UnityEngine.UI.LayoutGroup.childAlignment : CS.UnityEngine.TextAnchor
CS.UnityEngine.UI.LayoutGroup.childAlignment = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.minWidth : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.minWidth = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.preferredWidth : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.preferredWidth = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.flexibleWidth : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.flexibleWidth = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.minHeight : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.minHeight = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.preferredHeight : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.preferredHeight = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.flexibleHeight : CS.System.Single
CS.UnityEngine.UI.LayoutGroup.flexibleHeight = nil

---@property readonly CS.UnityEngine.UI.LayoutGroup.layoutPriority : CS.System.Int32
CS.UnityEngine.UI.LayoutGroup.layoutPriority = nil

function CS.UnityEngine.UI.LayoutGroup:CalculateLayoutInputHorizontal()
end

function CS.UnityEngine.UI.LayoutGroup:CalculateLayoutInputVertical()
end

function CS.UnityEngine.UI.LayoutGroup:SetLayoutHorizontal()
end

function CS.UnityEngine.UI.LayoutGroup:SetLayoutVertical()
end