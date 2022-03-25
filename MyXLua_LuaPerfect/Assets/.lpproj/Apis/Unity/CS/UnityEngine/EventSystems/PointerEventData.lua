---@class CS.UnityEngine.EventSystems.PointerEventData : CS.UnityEngine.EventSystems.BaseEventData
CS.UnityEngine.EventSystems.PointerEventData = {}

---@field public CS.UnityEngine.EventSystems.PointerEventData.hovered : CS.System.Collections.Generic.List
CS.UnityEngine.EventSystems.PointerEventData.hovered = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerEnter : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.pointerEnter = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.lastPress : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.lastPress = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.rawPointerPress : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.rawPointerPress = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerDrag : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.pointerDrag = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerClick : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.pointerClick = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerCurrentRaycast : CS.UnityEngine.EventSystems.RaycastResult
CS.UnityEngine.EventSystems.PointerEventData.pointerCurrentRaycast = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerPressRaycast : CS.UnityEngine.EventSystems.RaycastResult
CS.UnityEngine.EventSystems.PointerEventData.pointerPressRaycast = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.eligibleForClick : CS.System.Boolean
CS.UnityEngine.EventSystems.PointerEventData.eligibleForClick = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerId : CS.System.Int32
CS.UnityEngine.EventSystems.PointerEventData.pointerId = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.position : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.PointerEventData.position = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.delta : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.PointerEventData.delta = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pressPosition : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.PointerEventData.pressPosition = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.worldPosition : CS.UnityEngine.Vector3
CS.UnityEngine.EventSystems.PointerEventData.worldPosition = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.worldNormal : CS.UnityEngine.Vector3
CS.UnityEngine.EventSystems.PointerEventData.worldNormal = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.clickTime : CS.System.Single
CS.UnityEngine.EventSystems.PointerEventData.clickTime = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.clickCount : CS.System.Int32
CS.UnityEngine.EventSystems.PointerEventData.clickCount = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.scrollDelta : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.PointerEventData.scrollDelta = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.useDragThreshold : CS.System.Boolean
CS.UnityEngine.EventSystems.PointerEventData.useDragThreshold = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.dragging : CS.System.Boolean
CS.UnityEngine.EventSystems.PointerEventData.dragging = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.button : CS.UnityEngine.EventSystems.InputButton
CS.UnityEngine.EventSystems.PointerEventData.button = nil

---@property readonly CS.UnityEngine.EventSystems.PointerEventData.enterEventCamera : CS.UnityEngine.Camera
CS.UnityEngine.EventSystems.PointerEventData.enterEventCamera = nil

---@property readonly CS.UnityEngine.EventSystems.PointerEventData.pressEventCamera : CS.UnityEngine.Camera
CS.UnityEngine.EventSystems.PointerEventData.pressEventCamera = nil

---@property readwrite CS.UnityEngine.EventSystems.PointerEventData.pointerPress : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.PointerEventData.pointerPress = nil

---@param eventSystem : CS.UnityEngine.EventSystems.EventSystem
---@return CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.PointerEventData(eventSystem)
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.PointerEventData:IsPointerMoving()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.PointerEventData:IsScrolling()
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.PointerEventData:ToString()
end