---@class CS.UnityEngine.EventSystems.StandaloneInputModule : CS.UnityEngine.EventSystems.PointerInputModule
CS.UnityEngine.EventSystems.StandaloneInputModule = {}

---@property readonly CS.UnityEngine.EventSystems.StandaloneInputModule.inputMode : CS.UnityEngine.EventSystems.InputMode
CS.UnityEngine.EventSystems.StandaloneInputModule.inputMode = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.allowActivationOnMobileDevice : CS.System.Boolean
CS.UnityEngine.EventSystems.StandaloneInputModule.allowActivationOnMobileDevice = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.forceModuleActive : CS.System.Boolean
CS.UnityEngine.EventSystems.StandaloneInputModule.forceModuleActive = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.inputActionsPerSecond : CS.System.Single
CS.UnityEngine.EventSystems.StandaloneInputModule.inputActionsPerSecond = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.repeatDelay : CS.System.Single
CS.UnityEngine.EventSystems.StandaloneInputModule.repeatDelay = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.horizontalAxis : CS.System.String
CS.UnityEngine.EventSystems.StandaloneInputModule.horizontalAxis = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.verticalAxis : CS.System.String
CS.UnityEngine.EventSystems.StandaloneInputModule.verticalAxis = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.submitButton : CS.System.String
CS.UnityEngine.EventSystems.StandaloneInputModule.submitButton = nil

---@property readwrite CS.UnityEngine.EventSystems.StandaloneInputModule.cancelButton : CS.System.String
CS.UnityEngine.EventSystems.StandaloneInputModule.cancelButton = nil

function CS.UnityEngine.EventSystems.StandaloneInputModule:UpdateModule()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.StandaloneInputModule:IsModuleSupported()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.StandaloneInputModule:ShouldActivateModule()
end

function CS.UnityEngine.EventSystems.StandaloneInputModule:ActivateModule()
end

function CS.UnityEngine.EventSystems.StandaloneInputModule:DeactivateModule()
end

function CS.UnityEngine.EventSystems.StandaloneInputModule:Process()
end