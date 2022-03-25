---@class CS.UnityEngine.ReapplyDrivenProperties : CS.System.MulticastDelegate
CS.UnityEngine.ReapplyDrivenProperties = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.ReapplyDrivenProperties
function CS.UnityEngine.ReapplyDrivenProperties(object, method)
end

---@param driven : CS.UnityEngine.RectTransform
function CS.UnityEngine.ReapplyDrivenProperties:Invoke(driven)
end

---@param driven : CS.UnityEngine.RectTransform
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.ReapplyDrivenProperties:BeginInvoke(driven, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.ReapplyDrivenProperties:EndInvoke(result)
end