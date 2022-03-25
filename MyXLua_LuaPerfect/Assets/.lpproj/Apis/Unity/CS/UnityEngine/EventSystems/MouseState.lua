---@class CS.UnityEngine.EventSystems.MouseState : CS.System.Object
CS.UnityEngine.EventSystems.MouseState = {}

---@return CS.UnityEngine.EventSystems.MouseState
function CS.UnityEngine.EventSystems.MouseState()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.MouseState:AnyPressesThisFrame()
end

---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.MouseState:AnyReleasesThisFrame()
end

---@param button : CS.UnityEngine.EventSystems.InputButton
---@return CS.UnityEngine.EventSystems.ButtonState
function CS.UnityEngine.EventSystems.MouseState:GetButtonState(button)
end

---@param button : CS.UnityEngine.EventSystems.InputButton
---@param stateForMouseButton : CS.UnityEngine.EventSystems.FramePressState
---@param data : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.EventSystems.MouseState:SetButtonState(button, stateForMouseButton, data)
end