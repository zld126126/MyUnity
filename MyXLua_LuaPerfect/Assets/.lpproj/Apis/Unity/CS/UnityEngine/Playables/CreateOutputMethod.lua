---@class CS.UnityEngine.Playables.CreateOutputMethod : CS.System.MulticastDelegate
CS.UnityEngine.Playables.CreateOutputMethod = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Playables.CreateOutputMethod
function CS.UnityEngine.Playables.CreateOutputMethod(object, method)
end

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param name : CS.System.String
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Playables.CreateOutputMethod:Invoke(graph, name)
end

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param name : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Playables.CreateOutputMethod:BeginInvoke(graph, name, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Playables.CreateOutputMethod:EndInvoke(result)
end