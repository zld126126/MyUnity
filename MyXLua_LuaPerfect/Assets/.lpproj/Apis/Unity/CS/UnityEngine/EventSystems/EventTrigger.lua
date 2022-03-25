---@class CS.UnityEngine.EventSystems.EventTrigger : CS.UnityEngine.MonoBehaviour
CS.UnityEngine.EventSystems.EventTrigger = {}

---@property readwrite CS.UnityEngine.EventSystems.EventTrigger.delegates : CS.System.Collections.Generic.List
CS.UnityEngine.EventSystems.EventTrigger.delegates = nil

---@property readwrite CS.UnityEngine.EventSystems.EventTrigger.triggers : CS.System.Collections.Generic.List
CS.UnityEngine.EventSystems.EventTrigger.triggers = nil

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnPointerEnter(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnPointerExit(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnDrop(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnPointerDown(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnPointerUp(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnPointerClick(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnSelect(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnDeselect(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnScroll(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.AxisEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnMove(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnUpdateSelected(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnInitializePotentialDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnBeginDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnEndDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnSubmit(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventTrigger:OnCancel(eventData)
end