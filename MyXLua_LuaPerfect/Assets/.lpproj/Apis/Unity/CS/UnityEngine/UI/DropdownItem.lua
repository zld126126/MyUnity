---@class CS.UnityEngine.UI.DropdownItem : CS.UnityEngine.MonoBehaviour
CS.UnityEngine.UI.DropdownItem = {}

---@property readwrite CS.UnityEngine.UI.DropdownItem.text : CS.UnityEngine.UI.Text
CS.UnityEngine.UI.DropdownItem.text = nil

---@property readwrite CS.UnityEngine.UI.DropdownItem.image : CS.UnityEngine.UI.Image
CS.UnityEngine.UI.DropdownItem.image = nil

---@property readwrite CS.UnityEngine.UI.DropdownItem.rectTransform : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.DropdownItem.rectTransform = nil

---@property readwrite CS.UnityEngine.UI.DropdownItem.toggle : CS.UnityEngine.UI.Toggle
CS.UnityEngine.UI.DropdownItem.toggle = nil

---@return CS.UnityEngine.UI.DropdownItem
function CS.UnityEngine.UI.DropdownItem()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.DropdownItem:OnPointerEnter(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.DropdownItem:OnCancel(eventData)
end