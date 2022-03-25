---@class CS.UnityEngine.UI.Selectable : CS.UnityEngine.EventSystems.UIBehaviour
CS.UnityEngine.UI.Selectable = {}

---@property readonly CS.UnityEngine.UI.Selectable.allSelectablesArray : CS.UnityEngine.UI.Selectable[]
CS.UnityEngine.UI.Selectable.allSelectablesArray = nil

---@property readonly CS.UnityEngine.UI.Selectable.allSelectableCount : CS.System.Int32
CS.UnityEngine.UI.Selectable.allSelectableCount = nil

---@property readonly CS.UnityEngine.UI.Selectable.allSelectables : CS.System.Collections.Generic.List
CS.UnityEngine.UI.Selectable.allSelectables = nil

---@property readwrite CS.UnityEngine.UI.Selectable.navigation : CS.UnityEngine.UI.Navigation
CS.UnityEngine.UI.Selectable.navigation = nil

---@property readwrite CS.UnityEngine.UI.Selectable.transition : CS.UnityEngine.UI.Transition
CS.UnityEngine.UI.Selectable.transition = nil

---@property readwrite CS.UnityEngine.UI.Selectable.colors : CS.UnityEngine.UI.ColorBlock
CS.UnityEngine.UI.Selectable.colors = nil

---@property readwrite CS.UnityEngine.UI.Selectable.spriteState : CS.UnityEngine.UI.SpriteState
CS.UnityEngine.UI.Selectable.spriteState = nil

---@property readwrite CS.UnityEngine.UI.Selectable.animationTriggers : CS.UnityEngine.UI.AnimationTriggers
CS.UnityEngine.UI.Selectable.animationTriggers = nil

---@property readwrite CS.UnityEngine.UI.Selectable.targetGraphic : CS.UnityEngine.UI.Graphic
CS.UnityEngine.UI.Selectable.targetGraphic = nil

---@property readwrite CS.UnityEngine.UI.Selectable.interactable : CS.System.Boolean
CS.UnityEngine.UI.Selectable.interactable = nil

---@property readwrite CS.UnityEngine.UI.Selectable.image : CS.UnityEngine.UI.Image
CS.UnityEngine.UI.Selectable.image = nil

---@property readonly CS.UnityEngine.UI.Selectable.animator : CS.UnityEngine.Animator
CS.UnityEngine.UI.Selectable.animator = nil

---@param selectables : CS.UnityEngine.UI.Selectable[]
---@return CS.System.Int32
function CS.UnityEngine.UI.Selectable.AllSelectablesNoAlloc(selectables)
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.Selectable:IsInteractable()
end

---@param dir : CS.UnityEngine.Vector3
---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Selectable:FindSelectable(dir)
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Selectable:FindSelectableOnLeft()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Selectable:FindSelectableOnRight()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Selectable:FindSelectableOnUp()
end

---@return CS.UnityEngine.UI.Selectable
function CS.UnityEngine.UI.Selectable:FindSelectableOnDown()
end

---@param eventData : CS.UnityEngine.EventSystems.AxisEventData
function CS.UnityEngine.UI.Selectable:OnMove(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Selectable:OnPointerDown(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Selectable:OnPointerUp(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Selectable:OnPointerEnter(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Selectable:OnPointerExit(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Selectable:OnSelect(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Selectable:OnDeselect(eventData)
end

function CS.UnityEngine.UI.Selectable:Select()
end