---@class CS.UnityEngine.EventSystems.RaycastResult : CS.System.ValueType
CS.UnityEngine.EventSystems.RaycastResult = {}

---@field public CS.UnityEngine.EventSystems.RaycastResult.module : CS.UnityEngine.EventSystems.BaseRaycaster
CS.UnityEngine.EventSystems.RaycastResult.module = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.distance : CS.System.Single
CS.UnityEngine.EventSystems.RaycastResult.distance = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.index : CS.System.Single
CS.UnityEngine.EventSystems.RaycastResult.index = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.depth : CS.System.Int32
CS.UnityEngine.EventSystems.RaycastResult.depth = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.sortingLayer : CS.System.Int32
CS.UnityEngine.EventSystems.RaycastResult.sortingLayer = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.sortingOrder : CS.System.Int32
CS.UnityEngine.EventSystems.RaycastResult.sortingOrder = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.worldPosition : CS.UnityEngine.Vector3
CS.UnityEngine.EventSystems.RaycastResult.worldPosition = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.worldNormal : CS.UnityEngine.Vector3
CS.UnityEngine.EventSystems.RaycastResult.worldNormal = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.screenPosition : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.RaycastResult.screenPosition = nil

---@field public CS.UnityEngine.EventSystems.RaycastResult.displayIndex : CS.System.Int32
CS.UnityEngine.EventSystems.RaycastResult.displayIndex = nil

---@property readwrite CS.UnityEngine.EventSystems.RaycastResult.gameObject : CS.UnityEngine.GameObject
CS.UnityEngine.EventSystems.RaycastResult.gameObject = nil

---@property readonly CS.UnityEngine.EventSystems.RaycastResult.isValid : CS.System.Boolean
CS.UnityEngine.EventSystems.RaycastResult.isValid = nil

function CS.UnityEngine.EventSystems.RaycastResult:Clear()
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.RaycastResult:ToString()
end