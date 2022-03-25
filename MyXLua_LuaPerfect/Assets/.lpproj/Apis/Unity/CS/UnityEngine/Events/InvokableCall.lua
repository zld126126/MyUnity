---@class CS.UnityEngine.Events.InvokableCall : CS.UnityEngine.Events.BaseInvokableCall
CS.UnityEngine.Events.InvokableCall = {}

---@param target : CS.System.Object
---@param theFunction : CS.System.Reflection.MethodInfo
---@return CS.UnityEngine.Events.InvokableCall
function CS.UnityEngine.Events.InvokableCall(target, theFunction)
end

---@param action : CS.UnityEngine.Events.UnityAction
---@return CS.UnityEngine.Events.InvokableCall
function CS.UnityEngine.Events.InvokableCall(action)
end

---@param args : CS.System.Object[]
function CS.UnityEngine.Events.InvokableCall:Invoke(args)
end

function CS.UnityEngine.Events.InvokableCall:Invoke()
end

---@param targetObj : CS.System.Object
---@param method : CS.System.Reflection.MethodInfo
---@return CS.System.Boolean
function CS.UnityEngine.Events.InvokableCall:Find(targetObj, method)
end