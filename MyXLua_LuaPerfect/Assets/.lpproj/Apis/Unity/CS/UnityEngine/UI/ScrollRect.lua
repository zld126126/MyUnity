---@class CS.UnityEngine.UI.ScrollRect : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.ScrollRect = {}

---@property readwrite CS.UnityEngine.UI.ScrollRect.content : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.ScrollRect.content = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.horizontal : CS.System.Boolean
CS.UnityEngine.UI.ScrollRect.horizontal = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.vertical : CS.System.Boolean
CS.UnityEngine.UI.ScrollRect.vertical = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.movementType : CS.UnityEngine.UI.MovementType
CS.UnityEngine.UI.ScrollRect.movementType = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.elasticity : CS.System.Single
CS.UnityEngine.UI.ScrollRect.elasticity = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.inertia : CS.System.Boolean
CS.UnityEngine.UI.ScrollRect.inertia = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.decelerationRate : CS.System.Single
CS.UnityEngine.UI.ScrollRect.decelerationRate = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.scrollSensitivity : CS.System.Single
CS.UnityEngine.UI.ScrollRect.scrollSensitivity = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.viewport : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.ScrollRect.viewport = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.horizontalScrollbar : CS.UnityEngine.UI.Scrollbar
CS.UnityEngine.UI.ScrollRect.horizontalScrollbar = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.verticalScrollbar : CS.UnityEngine.UI.Scrollbar
CS.UnityEngine.UI.ScrollRect.verticalScrollbar = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.horizontalScrollbarVisibility : CS.UnityEngine.UI.ScrollbarVisibility
CS.UnityEngine.UI.ScrollRect.horizontalScrollbarVisibility = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.verticalScrollbarVisibility : CS.UnityEngine.UI.ScrollbarVisibility
CS.UnityEngine.UI.ScrollRect.verticalScrollbarVisibility = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.horizontalScrollbarSpacing : CS.System.Single
CS.UnityEngine.UI.ScrollRect.horizontalScrollbarSpacing = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.verticalScrollbarSpacing : CS.System.Single
CS.UnityEngine.UI.ScrollRect.verticalScrollbarSpacing = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.onValueChanged : CS.UnityEngine.UI.ScrollRectEvent
CS.UnityEngine.UI.ScrollRect.onValueChanged = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.velocity : CS.UnityEngine.Vector2
CS.UnityEngine.UI.ScrollRect.velocity = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.normalizedPosition : CS.UnityEngine.Vector2
CS.UnityEngine.UI.ScrollRect.normalizedPosition = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.horizontalNormalizedPosition : CS.System.Single
CS.UnityEngine.UI.ScrollRect.horizontalNormalizedPosition = nil

---@property readwrite CS.UnityEngine.UI.ScrollRect.verticalNormalizedPosition : CS.System.Single
CS.UnityEngine.UI.ScrollRect.verticalNormalizedPosition = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.minWidth : CS.System.Single
CS.UnityEngine.UI.ScrollRect.minWidth = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.preferredWidth : CS.System.Single
CS.UnityEngine.UI.ScrollRect.preferredWidth = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.flexibleWidth : CS.System.Single
CS.UnityEngine.UI.ScrollRect.flexibleWidth = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.minHeight : CS.System.Single
CS.UnityEngine.UI.ScrollRect.minHeight = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.preferredHeight : CS.System.Single
CS.UnityEngine.UI.ScrollRect.preferredHeight = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.flexibleHeight : CS.System.Single
CS.UnityEngine.UI.ScrollRect.flexibleHeight = nil

---@property readonly CS.UnityEngine.UI.ScrollRect.layoutPriority : CS.System.Int32
CS.UnityEngine.UI.ScrollRect.layoutPriority = nil

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.ScrollRect:Rebuild(executing)
end

function CS.UnityEngine.UI.ScrollRect:LayoutComplete()
end

function CS.UnityEngine.UI.ScrollRect:GraphicUpdateComplete()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.ScrollRect:IsActive()
end

function CS.UnityEngine.UI.ScrollRect:StopMovement()
end

---@param data : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.ScrollRect:OnScroll(data)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.ScrollRect:OnInitializePotentialDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.ScrollRect:OnBeginDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.ScrollRect:OnEndDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.ScrollRect:OnDrag(eventData)
end

function CS.UnityEngine.UI.ScrollRect:CalculateLayoutInputHorizontal()
end

function CS.UnityEngine.UI.ScrollRect:CalculateLayoutInputVertical()
end

function CS.UnityEngine.UI.ScrollRect:SetLayoutHorizontal()
end

function CS.UnityEngine.UI.ScrollRect:SetLayoutVertical()
end