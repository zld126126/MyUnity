---@class CS.UnityEngine.UI.RaycastAllCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.RaycastAllCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.RaycastAllCallback
function CS.UnityEngine.UI.RaycastAllCallback(object, method)
end

---@param r : CS.UnityEngine.Ray
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.UI.RaycastAllCallback:Invoke(r, f, i)
end

---@param r : CS.UnityEngine.Ray
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.RaycastAllCallback:BeginInvoke(r, f, i, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.UnityEngine.RaycastHit[]
function CS.UnityEngine.UI.RaycastAllCallback:EndInvoke(result)
end