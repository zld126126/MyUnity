---@class CS.UnityEngine.EventSystems.EventSystem : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.EventSystems.EventSystem = {}

---@property readwrite CS.UnityEngine.EventSystems.EventSystem.current : CS.UnityEngine.EventSystems.EventSystem
CS.UnityEngine.EventSystems.EventSystem.current = nil

---@property readwrite CS.UnityEngine.EventSystems.EventSystem.sendNavigationEvents : CS.System.Boolean
CS.UnityEngine.EventSystems.EventSystem.sendNavigationEvents = nil

---@property readwrite CS.UnityEngine.EventSystems.EventSystem.pixelDragThreshold : CS.System.Int32
CS.UnityEngine.EventSystems.EventSystem.pixelDragThreshold = nil

---@property readonly CS.UnityEngine.EventSystems.EventSystem.currentInputModule : CS.UnityEngine.EventSystems.BaseInputModule
CS.UnityEngine.EventSystems.EventSystem.currentInputModule = nil

---@property readwrite CS.UnityEngine.EventSystems.EventSystem.firstSelectedGameObject : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.EventSystem.firstSelectedGameObject = nil

---@property readonly CS.UnityEngine.EventSystems.EventSystem.currentSelectedGameObject : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.EventSystem.currentSelectedGameObject = nil

---@property readonly CS.UnityEngine.EventSystems.EventSystem.lastSelectedGameObject : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.EventSystem.lastSelectedGameObject = nil

---@property readonly CS.UnityEngine.EventSystems.EventSystem.isFocused : CS.System.Boolean
CS.UnityEngine.EventSystems.EventSystem.isFocused = nil

---@property readonly CS.UnityEngine.EventSystems.EventSystem.alreadySelecting : CS.System.Boolean
CS.UnityEngine.EventSystems.EventSystem.alreadySelecting = nil

function CS.UnityEngine.EventSystems.EventSystem:UpdateModules()
end

---@param selected : CS.UnityEngine.GameObject
---@param pointer : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.EventSystems.EventSystem:SetSelectedGameObject(selected, pointer)
end

---@param selected : CS.UnityEngine.GameObject
function CS.UnityEngine.EventSystems.EventSystem:SetSelectedGameObject(selected)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
---@param raycastResults : CS.System.Collections.Generic.List
function CS.UnityEngine.EventSystems.EventSystem:RaycastAll(eventData, raycastResults)
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.EventSystem:IsPointerOverGameObject()
end

---@param pointerId : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.EventSystem:IsPointerOverGameObject(pointerId)
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.EventSystem:ToString()
end