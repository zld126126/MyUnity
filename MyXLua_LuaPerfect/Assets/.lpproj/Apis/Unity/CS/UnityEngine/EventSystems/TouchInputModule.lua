---@class CS.UnityEngine.EventSystems.TouchInputModule : CS.UnityEngine.EventSystems.PointerInputModule
CS.UnityEngine.EventSystems.TouchInputModule = {}

---@property readwrite CS.UnityEngine.EventSystems.TouchInputModule.allowActivationOnStandalone : CS.System.Boolean
CS.UnityEngine.EventSystems.TouchInputModule.allowActivationOnStandalone = nil

---@property readwrite CS.UnityEngine.EventSystems.TouchInputModule.forceModuleActive : CS.System.Boolean
CS.UnityEngine.EventSystems.TouchInputModule.forceModuleActive = nil

function CS.UnityEngine.EventSystems.TouchInputModule:UpdateModule()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.TouchInputModule:IsModuleSupported()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.TouchInputModule:ShouldActivateModule()
end

function CS.UnityEngine.EventSystems.TouchInputModule:Process()
end

function CS.UnityEngine.EventSystems.TouchInputModule:DeactivateModule()
end

---@return CS.System.String
function CS.UnityEngine.EventSystems.TouchInputModule:ToString()
end