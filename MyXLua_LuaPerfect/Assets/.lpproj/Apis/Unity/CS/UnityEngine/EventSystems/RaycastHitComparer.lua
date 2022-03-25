---@class CS.UnityEngine.EventSystems.RaycastHitComparer : CS.System.Object
CS.UnityEngine.EventSystems.RaycastHitComparer = {}

---@field public CS.UnityEngine.EventSystems.RaycastHitComparer.instance : CS.UnityEngine.EventSystems.RaycastHitComparer
CS.UnityEngine.EventSystems.RaycastHitComparer.instance = nil

---@return CS.UnityEngine.EventSystems.RaycastHitComparer
function CS.UnityEngine.EventSystems.RaycastHitComparer()
end

---@param x : CS.UnityEngine.RaycastHit
---@param y : CS.UnityEngine.RaycastHit
---@return CS.System.Int32
function CS.UnityEngine.EventSystems.RaycastHitComparer:Compare(x, y)
end