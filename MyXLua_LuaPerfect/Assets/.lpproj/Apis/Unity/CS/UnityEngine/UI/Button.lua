---@class CS.UnityEngine.UI.Button : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.Button = {}

---@property readwrite CS.UnityEngine.UI.Button.onClick : CS.UnityEngine.UI.ButtonClickedEvent
CS.UnityEngine.UI.Button.onClick = nil

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Button:OnPointerClick(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Button:OnSubmit(eventData)
end