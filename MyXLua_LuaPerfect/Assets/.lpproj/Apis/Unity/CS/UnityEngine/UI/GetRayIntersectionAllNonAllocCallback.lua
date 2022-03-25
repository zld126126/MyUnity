---@class CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback
function CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback(object, method)
end

---@param r : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit2D[]
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback:Invoke(r, results, f, i)
end

---@param r : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit2D[]
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback:BeginInvoke(r, results, f, i, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Int32
function CS.UnityEngine.UI.GetRayIntersectionAllNonAllocCallback:EndInvoke(result)
end