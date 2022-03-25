---@module CS.UnityEngine.EventSystems
CS.UnityEngine.EventSystems = {}

---@class CS.UnityEngine.EventSystems.AxisEventData : CS.UnityEngine.EventSystems.BaseEventData
CS.UnityEngine.EventSystems.AxisEventData = {}

---@property readwrite CS.UnityEngine.EventSystems.AxisEventData.moveVector : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.AxisEventData.moveVector = nil

---@property readwrite CS.UnityEngine.EventSystems.AxisEventData.moveDir : CS.UnityEngine.EventSystems.MoveDirection
CS.UnityEngine.EventSystems.AxisEventData.moveDir = nil

---@param eventSystem : CS.UnityEngine.EventSystems.EventSystem
---@return CS.UnityEngine.EventSystems.AxisEventData
function CS.UnityEngine.EventSystems.AxisEventData(eventSystem)
end