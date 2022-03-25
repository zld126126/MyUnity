---@class CS.UnityEngine.Events.PersistentCallGroup : CS.System.Object
CS.UnityEngine.Events.PersistentCallGroup = {}

---@property readonly CS.UnityEngine.Events.PersistentCallGroup.Count : CS.System.Int32
CS.UnityEngine.Events.PersistentCallGroup.Count = nil

---@return CS.UnityEngine.Events.PersistentCallGroup
function CS.UnityEngine.Events.PersistentCallGroup()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Events.PersistentCall
function CS.UnityEngine.Events.PersistentCallGroup:GetListener(index)
end

---@return CS.System.Collections.Generic.IEnumerable
function CS.UnityEngine.Events.PersistentCallGroup:GetListeners()
end

function CS.UnityEngine.Events.PersistentCallGroup:AddListener()
end

---@param call : CS.UnityEngine.Events.PersistentCall
function CS.UnityEngine.Events.PersistentCallGroup:AddListener(call)
end

---@param index : CS.System.Int32
function CS.UnityEngine.Events.PersistentCallGroup:RemoveListener(index)
end

function CS.UnityEngine.Events.PersistentCallGroup:Clear()
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterEventPersistentListener(index, targetObj, targetObjType, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterVoidPersistentListener(index, targetObj, targetObjType, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param argument : CS.UnityEngine.Object
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterObjectPersistentListener(index, targetObj, targetObjType, argument, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param argument : CS.System.Int32
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterIntPersistentListener(index, targetObj, targetObjType, argument, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param argument : CS.System.Single
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterFloatPersistentListener(index, targetObj, targetObjType, argument, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param argument : CS.System.String
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterStringPersistentListener(index, targetObj, targetObjType, argument, methodName)
end

---@param index : CS.System.Int32
---@param targetObj : CS.UnityEngine.Object
---@param targetObjType : CS.System.Type
---@param argument : CS.System.Boolean
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RegisterBoolPersistentListener(index, targetObj, targetObjType, argument, methodName)
end

---@param index : CS.System.Int32
function CS.UnityEngine.Events.PersistentCallGroup:UnregisterPersistentListener(index)
end

---@param target : CS.UnityEngine.Object
---@param methodName : CS.System.String
function CS.UnityEngine.Events.PersistentCallGroup:RemoveListeners(target, methodName)
end

---@param invokableList : CS.UnityEngine.Events.InvokableCallList
---@param unityEventBase : CS.UnityEngine.Events.UnityEventBase
function CS.UnityEngine.Events.PersistentCallGroup:Initialize(invokableList, unityEventBase)
end