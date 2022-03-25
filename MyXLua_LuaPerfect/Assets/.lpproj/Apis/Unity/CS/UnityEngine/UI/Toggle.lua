---@class CS.UnityEngine.UI.Toggle : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.Toggle = {}

---@field public CS.UnityEngine.UI.Toggle.toggleTransition : CS.UnityEngine.UI.ToggleTransition
CS.UnityEngine.UI.Toggle.toggleTransition = nil

---@field public CS.UnityEngine.UI.Toggle.graphic : CS.UnityEngine.UI.Graphic
CS.UnityEngine.UI.Toggle.graphic = nil

---@field public CS.UnityEngine.UI.Toggle.onValueChanged : CS.UnityEngine.UI.ToggleEvent
CS.UnityEngine.UI.Toggle.onValueChanged = nil

---@property readwrite CS.UnityEngine.UI.Toggle.group : CS.UnityEngine.UI.ToggleGroup
CS.UnityEngine.UI.Toggle.group = nil

---@property readwrite CS.UnityEngine.UI.Toggle.isOn : CS.System.Boolean
CS.UnityEngine.UI.Toggle.isOn = nil

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.Toggle:Rebuild(executing)
end

function CS.UnityEngine.UI.Toggle:LayoutComplete()
end

function CS.UnityEngine.UI.Toggle:GraphicUpdateComplete()
end

---@param value : CS.System.Boolean
function CS.UnityEngine.UI.Toggle:SetIsOnWithoutNotify(value)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Toggle:OnPointerClick(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Toggle:OnSubmit(eventData)
end