---@class CS.UnityEngine.ScriptableObject : CS.UnityEngine.Object
CS.UnityEngine.ScriptableObject = {}

---@return CS.UnityEngine.ScriptableObject
function CS.UnityEngine.ScriptableObject()
end

function CS.UnityEngine.ScriptableObject:SetDirty()
end

---@param className : CS.System.String
---@return CS.UnityEngine.ScriptableObject
function CS.UnityEngine.ScriptableObject.CreateInstance(className)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.ScriptableObject
function CS.UnityEngine.ScriptableObject.CreateInstance(type)
end