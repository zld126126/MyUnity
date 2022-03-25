---@class CS.UnityEngine.EventSystems.BaseEventData : CS.UnityEngine.EventSystems.AbstractEventData
CS.UnityEngine.EventSystems.BaseEventData = {}

---@property readonly CS.UnityEngine.EventSystems.BaseEventData.currentInputModule : CS.UnityEngine.EventSystems.BaseInputModule
CS.UnityEngine.EventSystems.BaseEventData.currentInputModule = nil

---@property readwrite CS.UnityEngine.EventSystems.BaseEventData.selectedObject : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.BaseEventData.selectedObject = nil

---@param eventSystem : CS.UnityEngine.EventSystems.EventSystem
---@return CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.BaseEventData(eventSystem)
end