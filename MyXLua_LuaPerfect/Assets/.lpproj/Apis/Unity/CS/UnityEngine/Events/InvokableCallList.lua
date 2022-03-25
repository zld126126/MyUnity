---@class CS.UnityEngine.Events.InvokableCallList : CS.System.Object
CS.UnityEngine.Events.InvokableCallList = {}

---@property readonly CS.UnityEngine.Events.InvokableCallList.Count : CS.System.Int32
CS.UnityEngine.Events.InvokableCallList.Count = nil

---@return CS.UnityEngine.Events.InvokableCallList
function CS.UnityEngine.Events.InvokableCallList()
end

---@param call : CS.UnityEngine.Events.BaseInvokableCall
function CS.UnityEngine.Events.InvokableCallList:AddPersistentInvokableCall(call)
end

---@param call : CS.UnityEngine.Events.BaseInvokableCall
function CS.UnityEngine.Events.InvokableCallList:AddListener(call)
end

---@param targetObj : CS.System.Object
---@param method : CS.System.Reflection.MethodInfo
function CS.UnityEngine.Events.InvokableCallList:RemoveListener(targetObj, method)
end

function CS.UnityEngine.Events.InvokableCallList:Clear()
end

function CS.UnityEngine.Events.InvokableCallList:ClearPersistent()
end

---@return CS.System.Collections.Generic.List
function CS.UnityEngine.Events.InvokableCallList:PrepareInvoke()
end