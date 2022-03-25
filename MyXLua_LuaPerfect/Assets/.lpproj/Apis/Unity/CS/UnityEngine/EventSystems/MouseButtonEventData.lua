---@class CS.UnityEngine.EventSystems.MouseButtonEventData : CS.System.Object
CS.UnityEngine.EventSystems.MouseButtonEventData = {}

---@field public CS.UnityEngine.EventSystems.MouseButtonEventData.buttonState : CS.UnityEngine.EventSystems.FramePressState
CS.UnityEngine.EventSystems.MouseButtonEventData.buttonState = nil

---@field public CS.UnityEngine.EventSystems.MouseButtonEventData.buttonData : CS.UnityEngine.EventSystems.PointerEventData
CS.UnityEngine.EventSystems.MouseButtonEventData.buttonData = nil

---@return CS.UnityEngine.EventSystems.MouseButtonEventData
function CS.UnityEngine.EventSystems.MouseButtonEventData()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.MouseButtonEventData:PressedThisFrame()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.MouseButtonEventData:ReleasedThisFrame()
end