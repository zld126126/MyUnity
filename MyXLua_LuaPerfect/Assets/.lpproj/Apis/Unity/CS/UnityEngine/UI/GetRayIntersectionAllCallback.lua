---@class CS.UnityEngine.UI.GetRayIntersectionAllCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.GetRayIntersectionAllCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.GetRayIntersectionAllCallback
function CS.UnityEngine.UI.GetRayIntersectionAllCallback(object, method)
end

---@param r : CS.UnityEngine.Ray
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.UnityEngine.RaycastHit2D[]
function CS.UnityEngine.UI.GetRayIntersectionAllCallback:Invoke(r, f, i)
end

---@param r : CS.UnityEngine.Ray
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.GetRayIntersectionAllCallback:BeginInvoke(r, f, i, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.UnityEngine.RaycastHit2D[]
function CS.UnityEngine.UI.GetRayIntersectionAllCallback:EndInvoke(result)
end