---@class CS.UnityEngine.EventSystems.PhysicsRaycaster : CS.UnityEngine.EventSystems.BaseRaycaster
CS.UnityEngine.EventSystems.PhysicsRaycaster = {}

---@property readonly CS.UnityEngine.EventSystems.PhysicsRaycaster.eventCamera : CS.UnityEngine.Camera
CS.UnityEngine.EventSystems.PhysicsRaycaster.eventCamera = nil

---@property readonly CS.UnityEngine.EventSystems.PhysicsRaycaster.depth : CS.System.Int32
CS.UnityEngine.EventSystems.PhysicsRaycaster.depth = nil

---@property readonly CS.UnityEngine.EventSystems.PhysicsRaycaster.finalEventMask : CS.System.Int32
CS.UnityEngine.EventSystems.PhysicsRaycaster.finalEventMask = nil

---@property readwrite CS.UnityEngine.EventSystems.PhysicsRaycaster.eventMask : CS.UnityEngine.LayerMask
CS.UnityEngine.EventSystems.PhysicsRaycaster.eventMask = nil

---@property readwrite CS.UnityEngine.EventSystems.PhysicsRaycaster.maxRayIntersections : CS.System.Int32
CS.UnityEngine.EventSystems.PhysicsRaycaster.maxRayIntersections = nil

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
---@param resultAppendList : CS.System.Collections.Generic.List
function CS.UnityEngine.EventSystems.PhysicsRaycaster:Raycast(eventData, resultAppendList)
end