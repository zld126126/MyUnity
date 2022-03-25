---@class CS.UnityEngine.WorkRequest : CS.System.ValueType
CS.UnityEngine.WorkRequest = {}

---@param callback : CS.System.Threading.SendOrPostCallback
---@param state : CS.System.Object
---@param waitHandle : CS.System.Threading.ManualResetEvent
---@return CS.UnityEngine.WorkRequest
function CS.UnityEngine.WorkRequest(callback, state, waitHandle)
end

function CS.UnityEngine.WorkRequest:Invoke()
end