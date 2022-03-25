---@class CS.UnityEngine.UI.Slider : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.Slider = {}

---@property readwrite CS.UnityEngine.UI.Slider.fillRect : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Slider.fillRect = nil

---@property readwrite CS.UnityEngine.UI.Slider.handleRect : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Slider.handleRect = nil

---@property readwrite CS.UnityEngine.UI.Slider.direction : CS.UnityEngine.UI.Direction
CS.UnityEngine.UI.Slider.direction = nil

---@property readwrite CS.UnityEngine.UI.Slider.minValue : CS.System.Single
CS.UnityEngine.UI.Slider.minValue = nil

---@property readwrite CS.UnityEngine.UI.Slider.maxValue : CS.System.Single
CS.UnityEngine.UI.Slider.maxValue = nil

---@property readwrite CS.UnityEngine.UI.Slider.wholeNumbers : CS.System.Boolean
CS.UnityEngine.UI.Slider.wholeNumbers = nil

---@property readwrite CS.UnityEngine.UI.Slider.value : CS.System.Single
CS.UnityEngine.UI.Slider.value = nil

---@property readwrite CS.UnityEngine.UI.Slider.normalizedValue : CS.System.Single
CS.UnityEngine.UI.Slider.normalizedValue = nil

---@property readwrite CS.UnityEngine.UI.Slider.onValueChanged : CS.UnityEngine.UI.SliderEvent
CS.UnityEngine.UI.Slider.onValueChanged = nil

---@param input : CS.System.Single
function CS.UnityEngine.UI.Slider:SetValueWithoutNotify(input)
end

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.Slider:Rebuild(executing)
end

function CS.UnityEngine.UI.Slider:LayoutComplete()
end

function CS.UnityEngine.UI.Slider:GraphicUpdateComplete()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Slider:OnPointerDown(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Slider:OnDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.AxisEventData
function CS.UnityEngine.UI.Slider:OnMove(eventData)
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Slider:FindSelectableOnLeft()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Slider:FindSelectableOnRight()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Slider:FindSelectableOnUp()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Slider:FindSelectableOnDown()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Slider:OnInitializePotentialDrag(eventData)
end

---@param direction : CS.UnityEngine.UI.Direction
---@param includeRectLayouts : CS.System.Boolean
function CS.UnityEngine.UI.Slider:SetDirection(direction, includeRectLayouts)
end