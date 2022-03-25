---@class CS.UnityEngine.UI.Raycast3DCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.Raycast3DCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.Raycast3DCallback
function CS.UnityEngine.UI.Raycast3DCallback(object, method)
end

---@param r : CS.UnityEngine.Ray
---@param hit : CS.UnityEngine.RaycastHit
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.UI.Raycast3DCallback:Invoke(r, hit, f, i)
end

---@param r : CS.UnityEngine.Ray
---@param hit : CS.UnityEngine.RaycastHit
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.Raycast3DCallback:BeginInvoke(r, hit, f, i, callback, object)
end

---@param hit : CS.UnityEngine.RaycastHit
---@param result : CS.System.IAsyncResult
---@return CS.System.Boolean
function CS.UnityEngine.UI.Raycast3DCallback:EndInvoke(hit, result)
end