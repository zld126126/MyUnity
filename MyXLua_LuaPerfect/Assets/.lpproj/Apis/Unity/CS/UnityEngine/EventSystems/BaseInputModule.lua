---@class CS.UnityEngine.EventSystems.BaseInputModule : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.EventSystems.BaseInputModule = {}

---@property readonly CS.UnityEngine.EventSystems.BaseInputModule.input : CS.UnityEngine.EventSystems.BaseInput
CS.UnityEngine.EventSystems.BaseInputModule.input = nil

---@property readwrite CS.UnityEngine.EventSystems.BaseInputModule.inputOverride : CS.UnityEngine.EventSystems.BaseInput
CS.UnityEngine.EventSystems.BaseInputModule.inputOverride = nil

function CS.UnityEngine.EventSystems.BaseInputModule:Process()
end

---@param pointerId : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInputModule:IsPointerOverGameObject(pointerId)
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInputModule:ShouldActivateModule()
end

function CS.UnityEngine.EventSystems.BaseInputModule:DeactivateModule()
end

function CS.UnityEngine.EventSystems.BaseInputModule:ActivateModule()
end

function CS.UnityEngine.EventSystems.BaseInputModule:UpdateModule()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInputModule:IsModuleSupported()
end