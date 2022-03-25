---@class CS.UnityEngine.UI.Scrollbar : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.Scrollbar = {}

---@property readwrite CS.UnityEngine.UI.Scrollbar.handleRect : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Scrollbar.handleRect = nil

---@property readwrite CS.UnityEngine.UI.Scrollbar.direction : CS.UnityEngine.UI.Direction
CS.UnityEngine.UI.Scrollbar.direction = nil

---@property readwrite CS.UnityEngine.UI.Scrollbar.value : CS.System.Single
CS.UnityEngine.UI.Scrollbar.value = nil

---@property readwrite CS.UnityEngine.UI.Scrollbar.size : CS.System.Single
CS.UnityEngine.UI.Scrollbar.size = nil

---@property readwrite CS.UnityEngine.UI.Scrollbar.numberOfSteps : CS.System.Int32
CS.UnityEngine.UI.Scrollbar.numberOfSteps = nil

---@property readwrite CS.UnityEngine.UI.Scrollbar.onValueChanged : CS.UnityEngine.UI.ScrollEvent
CS.UnityEngine.UI.Scrollbar.onValueChanged = nil

---@param input : CS.System.Single
function CS.UnityEngine.UI.Scrollbar:SetValueWithoutNotify(input)
end

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.Scrollbar:Rebuild(executing)
end

function CS.UnityEngine.UI.Scrollbar:LayoutComplete()
end

function CS.UnityEngine.UI.Scrollbar:GraphicUpdateComplete()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Scrollbar:OnBeginDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Scrollbar:OnDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Scrollbar:OnPointerDown(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Scrollbar:OnPointerUp(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.AxisEventData
function CS.UnityEngine.UI.Scrollbar:OnMove(eventData)
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Scrollbar:FindSelectableOnLeft()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Scrollbar:FindSelectableOnRight()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Scrollbar:FindSelectableOnUp()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Scrollbar:FindSelectableOnDown()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Scrollbar:OnInitializePotentialDrag(eventData)
end

---@param direction : CS.UnityEngine.UI.Direction
---@param includeRectLayouts : CS.System.Boolean
function CS.UnityEngine.UI.Scrollbar:SetDirection(direction, includeRectLayouts)
end