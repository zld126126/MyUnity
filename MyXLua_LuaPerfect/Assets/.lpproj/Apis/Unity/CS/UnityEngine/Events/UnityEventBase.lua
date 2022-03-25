---@class CS.UnityEngine.Events.UnityEventBase : CS.System.Object
CS.UnityEngine.Events.UnityEventBase = {}

---@return CS.System.Int32
function CS.UnityEngine.Events.UnityEventBase:GetPersistentEventCount()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Object
function CS.UnityEngine.Events.UnityEventBase:GetPersistentTarget(index)
end

---@param index : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.Events.UnityEventBase:GetPersistentMethodName(index)
end

---@param index : CS.System.Int32
---@param state : CS.UnityEngine.Events.UnityEventCallState
function CS.UnityEngine.Events.UnityEventBase:SetPersistentListenerState(index, state)
end

function CS.UnityEngine.Events.UnityEventBase:RemoveAllListeners()
end

---@return CS.System.String
function CS.UnityEngine.Events.UnityEventBase:ToString()
end

---@param obj : CS.System.Object
---@param functionName : CS.System.String
---@param argumentTypes : CS.System.Type[]
---@return CS.System.Reflection.MethodInfo
function CS.UnityEngine.Events.UnityEventBase.GetValidMethodInfo(obj, functionName, argumentTypes)
end

---@param objectType : CS.System.Type
---@param functionName : CS.System.String
---@param argumentTypes : CS.System.Type[]
---@return CS.System.Reflection.MethodInfo
function CS.UnityEngine.Events.UnityEventBase.GetValidMethodInfo(objectType, functionName, argumentTypes)
end