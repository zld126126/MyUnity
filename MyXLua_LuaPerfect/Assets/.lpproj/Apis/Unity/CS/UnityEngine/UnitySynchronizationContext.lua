---@class CS.UnityEngine.UnitySynchronizationContext : CS.System.Threading.SynchronizationContext
CS.UnityEngine.UnitySynchronizationContext = {}

---@param callback : CS.System.Threading.SendOrPostCallback
---@param state : CS.System.Object
function CS.UnityEngine.UnitySynchronizationContext:Send(callback, state)
end

function CS.UnityEngine.UnitySynchronizationContext:OperationStarted()
end

function CS.UnityEngine.UnitySynchronizationContext:OperationCompleted()
end

---@param callback : CS.System.Threading.SendOrPostCallback
---@param state : CS.System.Object
function CS.UnityEngine.UnitySynchronizationContext:Post(callback, state)
end

---@return CS.System.Threading.SynchronizationContext
function CS.UnityEngine.UnitySynchronizationContext:CreateCopy()
end