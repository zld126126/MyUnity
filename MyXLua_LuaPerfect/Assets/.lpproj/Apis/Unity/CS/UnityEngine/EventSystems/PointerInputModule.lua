---@class CS.UnityEngine.EventSystems.PointerInputModule : CS.UnityEngine.EventSystems.BaseInputModule
CS.UnityEngine.EventSystems.PointerInputModule = {}

---@field public CS.UnityEngine.EventSystems.PointerInputModule.kMouseLeftId : CS.System.Int32
CS.UnityEngine.EventSystems.PointerInputModule.kMouseLeftId = nil

---@field public CS.UnityEngine.EventSystems.PointerInputModule.kMouseRightId : CS.System.Int32
CS.UnityEngine.EventSystems.PointerInputModule.kMouseRightId = nil

---@field public CS.UnityEngine.EventSystems.PointerInputModule.kMouseMiddleId : CS.System.Int32
CS.UnityEngine.EventSystems.PointerInputModule.kMouseMiddleId = nil

---@field public CS.UnityEngine.EventSystems.PointerInputModule.kFakeTouchesId : CS.System.Int32
CS.UnityEngine.EventSystems.PointerInputModule.kFakeTouchesId = nil

---@param pointerId : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.PointerInputModule:IsPointerOverGameObject(pointerId)
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.PointerInputModule:ToString()
end