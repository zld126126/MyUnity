---@class CS.UnityEngine.UI.ToggleGroup : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.ToggleGroup = {}

---@property readwrite CS.UnityEngine.UI.ToggleGroup.allowSwitchOff : CS.System.Boolean
CS.UnityEngine.UI.ToggleGroup.allowSwitchOff = nil

---@param toggle : CS.UnityEngine.UI.Toggle
---@param sendCallback : CS.System.Boolean
function CS.UnityEngine.UI.ToggleGroup:NotifyToggleOn(toggle, sendCallback)
end

---@param toggle : CS.UnityEngine.UI.Toggle
function CS.UnityEngine.UI.ToggleGroup:UnregisterToggle(toggle)
end

---@param toggle : CS.UnityEngine.UI.Toggle
function CS.UnityEngine.UI.ToggleGroup:RegisterToggle(toggle)
end

function CS.UnityEngine.UI.ToggleGroup:EnsureValidState()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.ToggleGroup:AnyTogglesOn()
end

---@return CS.System.Collections.Generic.IEnumerable
function CS.UnityEngine.UI.ToggleGroup:ActiveToggles()
end

---@return CS.UnityEngine.UI.Toggle
function CS.UnityEngine.UI.ToggleGroup:GetFirstActiveToggle()
end

---@param sendCallback : CS.System.Boolean
function CS.UnityEngine.UI.ToggleGroup:SetAllTogglesOff(sendCallback)
end