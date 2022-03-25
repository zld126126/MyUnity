---@class CS.UnityEngine.IExposedPropertyTable
CS.UnityEngine.IExposedPropertyTable = {}

---@param id : CS.UnityEngine.PropertyName
---@param value : CS.UnityEngine.Object
function CS.UnityEngine.IExposedPropertyTable:SetReferenceValue(id, value)
end

---@param id : CS.UnityEngine.PropertyName
---@param idValid : CS.System.Boolean
---@return CS.UnityEngine.Object
function CS.UnityEngine.IExposedPropertyTable:GetReferenceValue(id, idValid)
end

---@param id : CS.UnityEngine.PropertyName
function CS.UnityEngine.IExposedPropertyTable:ClearReferenceValue(id)
end