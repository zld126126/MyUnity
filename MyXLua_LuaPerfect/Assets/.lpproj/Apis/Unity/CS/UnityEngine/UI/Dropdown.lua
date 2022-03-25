---@class CS.UnityEngine.UI.Dropdown : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.Dropdown = {}

---@property readwrite CS.UnityEngine.UI.Dropdown.template : CS.UnityEngine.RectTransform
CS.UnityEngine.UI.Dropdown.template = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.captionText : CS.UnityEngine.UI.Text
CS.UnityEngine.UI.Dropdown.captionText = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.captionImage : CS.UnityEngine.UI.Image
CS.UnityEngine.UI.Dropdown.captionImage = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.itemText : CS.UnityEngine.UI.Text
CS.UnityEngine.UI.Dropdown.itemText = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.itemImage : CS.UnityEngine.UI.Image
CS.UnityEngine.UI.Dropdown.itemImage = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.options : CS.System.Collections.Generic.List
CS.UnityEngine.UI.Dropdown.options = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.onValueChanged : CS.UnityEngine.UI.DropdownEvent
CS.UnityEngine.UI.Dropdown.onValueChanged = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.alphaFadeSpeed : CS.System.Single
CS.UnityEngine.UI.Dropdown.alphaFadeSpeed = nil

---@property readwrite CS.UnityEngine.UI.Dropdown.value : CS.System.Int32
CS.UnityEngine.UI.Dropdown.value = nil

---@param input : CS.System.Int32
function CS.UnityEngine.UI.Dropdown:SetValueWithoutNotify(input)
end

function CS.UnityEngine.UI.Dropdown:RefreshShownValue()
end

---@param options : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.Dropdown:AddOptions(options)
end

---@param options : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.Dropdown:AddOptions(options)
end

---@param options : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.Dropdown:AddOptions(options)
end

function CS.UnityEngine.UI.Dropdown:ClearOptions()
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.Dropdown:OnPointerClick(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Dropdown:OnSubmit(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.Dropdown:OnCancel(eventData)
end

function CS.UnityEngine.UI.Dropdown:Show()
end

function CS.UnityEngine.UI.Dropdown:Hide()
end