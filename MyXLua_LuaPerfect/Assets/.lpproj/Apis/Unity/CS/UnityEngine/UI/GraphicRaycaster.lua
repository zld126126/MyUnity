---@class CS.UnityEngine.UI.GraphicRaycaster : CS.UnityEngine.EventSystems.BaseRaycaster
CS.UnityEngine.UI.GraphicRaycaster = {}

---@property readonly CS.UnityEngine.UI.GraphicRaycaster.sortOrderPriority : CS.System.Int32
CS.UnityEngine.UI.GraphicRaycaster.sortOrderPriority = nil

---@property readonly CS.UnityEngine.UI.GraphicRaycaster.renderOrderPriority : CS.System.Int32
CS.UnityEngine.UI.GraphicRaycaster.renderOrderPriority = nil

---@property readwrite CS.UnityEngine.UI.GraphicRaycaster.ignoreReversedGraphics : CS.System.Boolean
CS.UnityEngine.UI.GraphicRaycaster.ignoreReversedGraphics = nil

---@property readwrite CS.UnityEngine.UI.GraphicRaycaster.blockingObjects : CS.UnityEngine.UI.BlockingObjects
CS.UnityEngine.UI.GraphicRaycaster.blockingObjects = nil

---@property readwrite CS.UnityEngine.UI.GraphicRaycaster.blockingMask : CS.UnityEngine.LayerMask
CS.UnityEngine.UI.GraphicRaycaster.blockingMask = nil

---@property readonly CS.UnityEngine.UI.GraphicRaycaster.eventCamera : CS.UnityEngine.Camera
CS.UnityEngine.UI.GraphicRaycaster.eventCamera = nil

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
---@param resultAppendList : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.GraphicRaycaster:Raycast(eventData, resultAppendList)
end