---@class CS.UnityEngine.EventSystems.BaseRaycaster : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.EventSystems.BaseRaycaster = {}

---@property readonly CS.UnityEngine.EventSystems.BaseRaycaster.eventCamera : CS.UnityEngine.Camera
CS.UnityEngine.EventSystems.BaseRaycaster.eventCamera = nil

---@property readonly CS.UnityEngine.EventSystems.BaseRaycaster.priority : CS.System.Int32
CS.UnityEngine.EventSystems.BaseRaycaster.priority = nil

---@property readonly CS.UnityEngine.EventSystems.BaseRaycaster.sortOrderPriority : CS.System.Int32
CS.UnityEngine.EventSystems.BaseRaycaster.sortOrderPriority = nil

---@property readonly CS.UnityEngine.EventSystems.BaseRaycaster.renderOrderPriority : CS.System.Int32
CS.UnityEngine.EventSystems.BaseRaycaster.renderOrderPriority = nil

---@property readonly CS.UnityEngine.EventSystems.BaseRaycaster.rootRaycaster : CS.UnityEngine.EventSystems.BaseRaycaster
CS.UnityEngine.EventSystems.BaseRaycaster.rootRaycaster = nil

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
---@param resultAppendList : CS.System.Collections.Generic.List
function CS.UnityEngine.EventSystems.BaseRaycaster:Raycast(eventData, resultAppendList)
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.BaseRaycaster:ToString()
end