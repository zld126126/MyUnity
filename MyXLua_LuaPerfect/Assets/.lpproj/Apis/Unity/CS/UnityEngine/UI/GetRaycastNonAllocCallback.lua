---@class CS.UnityEngine.UI.GetRaycastNonAllocCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.GetRaycastNonAllocCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.GetRaycastNonAllocCallback
function CS.UnityEngine.UI.GetRaycastNonAllocCallback(object, method)
end

---@param r : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.UI.GetRaycastNonAllocCallback:Invoke(r, results, f, i)
end

---@param r : CS.UnityEngine.Ray
---@param results : CS.UnityEngine.RaycastHit[]
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.GetRaycastNonAllocCallback:BeginInvoke(r, results, f, i, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Int32
function CS.UnityEngine.UI.GetRaycastNonAllocCallback:EndInvoke(result)
end