---@class CS.UnityEngine.UI.Raycast2DCallback : CS.System.MulticastDelegate
CS.UnityEngine.UI.Raycast2DCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.Raycast2DCallback
function CS.UnityEngine.UI.Raycast2DCallback(object, method)
end

---@param p1 : CS.UnityEngine.Vector2
---@param p2 : CS.UnityEngine.Vector2
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@return CS.UnityEngine.RaycastHit2D
function CS.UnityEngine.UI.Raycast2DCallback:Invoke(p1, p2, f, i)
end

---@param p1 : CS.UnityEngine.Vector2
---@param p2 : CS.UnityEngine.Vector2
---@param f : CS.System.Single
---@param i : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.Raycast2DCallback:BeginInvoke(p1, p2, f, i, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.UnityEngine.RaycastHit2D
function CS.UnityEngine.UI.Raycast2DCallback:EndInvoke(result)
end