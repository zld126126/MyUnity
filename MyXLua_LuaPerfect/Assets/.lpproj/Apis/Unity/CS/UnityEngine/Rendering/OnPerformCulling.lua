---@class CS.UnityEngine.Rendering.OnPerformCulling : CS.System.MulticastDelegate
CS.UnityEngine.Rendering.OnPerformCulling = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Rendering.OnPerformCulling
function CS.UnityEngine.Rendering.OnPerformCulling(object, method)
end

---@param rendererGroup : CS.UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext : CS.UnityEngine.Rendering.BatchCullingContext
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.Rendering.OnPerformCulling:Invoke(rendererGroup, cullingContext)
end

---@param rendererGroup : CS.UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext : CS.UnityEngine.Rendering.BatchCullingContext
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Rendering.OnPerformCulling:BeginInvoke(rendererGroup, cullingContext, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.Rendering.OnPerformCulling:EndInvoke(result)
end