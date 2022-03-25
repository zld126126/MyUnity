---@class CS.UnityEngine.EventSystems.BaseInput : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.EventSystems.BaseInput = {}

---@property readonly CS.UnityEngine.EventSystems.BaseInput.compositionString : CS.System.String
CS.UnityEngine.EventSystems.BaseInput.compositionString = nil

---@property readwrite CS.UnityEngine.EventSystems.BaseInput.imeCompositionMode : CS.UnityEngine.IMECompositionMode
CS.UnityEngine.EventSystems.BaseInput.imeCompositionMode = nil

---@property readwrite CS.UnityEngine.EventSystems.BaseInput.compositionCursorPos : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.BaseInput.compositionCursorPos = nil

---@property readonly CS.UnityEngine.EventSystems.BaseInput.mousePresent : CS.System.Boolean
CS.UnityEngine.EventSystems.BaseInput.mousePresent = nil

---@property readonly CS.UnityEngine.EventSystems.BaseInput.mousePosition : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.BaseInput.mousePosition = nil

---@property readonly CS.UnityEngine.EventSystems.BaseInput.mouseScrollDelta : CS.UnityEngine.Vector2
CS.UnityEngine.EventSystems.BaseInput.mouseScrollDelta = nil

---@property readonly CS.UnityEngine.EventSystems.BaseInput.touchSupported : CS.System.Boolean
CS.UnityEngine.EventSystems.BaseInput.touchSupported = nil

---@property readonly CS.UnityEngine.EventSystems.BaseInput.touchCount : CS.System.Int32
CS.UnityEngine.EventSystems.BaseInput.touchCount = nil

---@return CS.UnityEngine.EventSystems.BaseInput
function CS.UnityEngine.EventSystems.BaseInput()
end

---@param button : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInput:GetMouseButtonDown(button)
end

---@param button : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInput:GetMouseButtonUp(button)
end

---@param button : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInput:GetMouseButton(button)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Touch
function CS.UnityEngine.EventSystems.BaseInput:GetTouch(index)
end

---@param axisName : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.EventSystems.BaseInput:GetAxisRaw(axisName)
end

---@param buttonName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.EventSystems.BaseInput:GetButtonDown(buttonName)
end