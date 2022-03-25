---@class CS.UnityEngine.UI.InputField : CS.UnityEngine.UI.Selectable
CS.UnityEngine.UI.InputField = {}

---@property readwrite CS.UnityEngine.UI.InputField.shouldHideMobileInput : CS.System.Boolean
CS.UnityEngine.UI.InputField.shouldHideMobileInput = nil

---@property readwrite CS.UnityEngine.UI.InputField.shouldActivateOnSelect : CS.System.Boolean
CS.UnityEngine.UI.InputField.shouldActivateOnSelect = nil

---@property readwrite CS.UnityEngine.UI.InputField.text : CS.System.String
CS.UnityEngine.UI.InputField.text = nil

---@property readonly CS.UnityEngine.UI.InputField.isFocused : CS.System.Boolean
CS.UnityEngine.UI.InputField.isFocused = nil

---@property readwrite CS.UnityEngine.UI.InputField.caretBlinkRate : CS.System.Single
CS.UnityEngine.UI.InputField.caretBlinkRate = nil

---@property readwrite CS.UnityEngine.UI.InputField.caretWidth : CS.System.Int32
CS.UnityEngine.UI.InputField.caretWidth = nil

---@property readwrite CS.UnityEngine.UI.InputField.textComponent : CS.UnityEngine.UI.Text
CS.UnityEngine.UI.InputField.textComponent = nil

---@property readwrite CS.UnityEngine.UI.InputField.placeholder : CS.UnityEngine.UI.Graphic
CS.UnityEngine.UI.InputField.placeholder = nil

---@property readwrite CS.UnityEngine.UI.InputField.caretColor : CS.UnityEngine.Color
CS.UnityEngine.UI.InputField.caretColor = nil

---@property readwrite CS.UnityEngine.UI.InputField.customCaretColor : CS.System.Boolean
CS.UnityEngine.UI.InputField.customCaretColor = nil

---@property readwrite CS.UnityEngine.UI.InputField.selectionColor : CS.UnityEngine.Color
CS.UnityEngine.UI.InputField.selectionColor = nil

---@property readwrite CS.UnityEngine.UI.InputField.onEndEdit : CS.UnityEngine.UI.SubmitEvent
CS.UnityEngine.UI.InputField.onEndEdit = nil

---@property readwrite CS.UnityEngine.UI.InputField.onValueChange : CS.UnityEngine.UI.OnChangeEvent
CS.UnityEngine.UI.InputField.onValueChange = nil

---@property readwrite CS.UnityEngine.UI.InputField.onValueChanged : CS.UnityEngine.UI.OnChangeEvent
CS.UnityEngine.UI.InputField.onValueChanged = nil

---@property readwrite CS.UnityEngine.UI.InputField.onValidateInput : CS.UnityEngine.UI.OnValidateInput
CS.UnityEngine.UI.InputField.onValidateInput = nil

---@property readwrite CS.UnityEngine.UI.InputField.characterLimit : CS.System.Int32
CS.UnityEngine.UI.InputField.characterLimit = nil

---@property readwrite CS.UnityEngine.UI.InputField.contentType : CS.UnityEngine.UI.ContentType
CS.UnityEngine.UI.InputField.contentType = nil

---@property readwrite CS.UnityEngine.UI.InputField.lineType : CS.UnityEngine.UI.LineType
CS.UnityEngine.UI.InputField.lineType = nil

---@property readwrite CS.UnityEngine.UI.InputField.inputType : CS.UnityEngine.UI.InputType
CS.UnityEngine.UI.InputField.inputType = nil

---@property readonly CS.UnityEngine.UI.InputField.touchScreenKeyboard : CS.UnityEngine.TouchScreenKeyboard
CS.UnityEngine.UI.InputField.touchScreenKeyboard = nil

---@property readwrite CS.UnityEngine.UI.InputField.keyboardType : CS.UnityEngine.TouchScreenKeyboardType
CS.UnityEngine.UI.InputField.keyboardType = nil

---@property readwrite CS.UnityEngine.UI.InputField.characterValidation : CS.UnityEngine.UI.CharacterValidation
CS.UnityEngine.UI.InputField.characterValidation = nil

---@property readwrite CS.UnityEngine.UI.InputField.readOnly : CS.System.Boolean
CS.UnityEngine.UI.InputField.readOnly = nil

---@property readonly CS.UnityEngine.UI.InputField.multiLine : CS.System.Boolean
CS.UnityEngine.UI.InputField.multiLine = nil

---@property readwrite CS.UnityEngine.UI.InputField.asteriskChar : CS.System.Char
CS.UnityEngine.UI.InputField.asteriskChar = nil

---@property readonly CS.UnityEngine.UI.InputField.wasCanceled : CS.System.Boolean
CS.UnityEngine.UI.InputField.wasCanceled = nil

---@property readwrite CS.UnityEngine.UI.InputField.caretSelectPosition : CS.System.Int32
CS.UnityEngine.UI.InputField.caretSelectPosition = nil

---@property readwrite CS.UnityEngine.UI.InputField.caretPosition : CS.System.Int32
CS.UnityEngine.UI.InputField.caretPosition = nil

---@property readwrite CS.UnityEngine.UI.InputField.selectionAnchorPosition : CS.System.Int32
CS.UnityEngine.UI.InputField.selectionAnchorPosition = nil

---@property readwrite CS.UnityEngine.UI.InputField.selectionFocusPosition : CS.System.Int32
CS.UnityEngine.UI.InputField.selectionFocusPosition = nil

---@property readonly CS.UnityEngine.UI.InputField.minWidth : CS.System.Single
CS.UnityEngine.UI.InputField.minWidth = nil

---@property readonly CS.UnityEngine.UI.InputField.preferredWidth : CS.System.Single
CS.UnityEngine.UI.InputField.preferredWidth = nil

---@property readonly CS.UnityEngine.UI.InputField.flexibleWidth : CS.System.Single
CS.UnityEngine.UI.InputField.flexibleWidth = nil

---@property readonly CS.UnityEngine.UI.InputField.minHeight : CS.System.Single
CS.UnityEngine.UI.InputField.minHeight = nil

---@property readonly CS.UnityEngine.UI.InputField.preferredHeight : CS.System.Single
CS.UnityEngine.UI.InputField.preferredHeight = nil

---@property readonly CS.UnityEngine.UI.InputField.flexibleHeight : CS.System.Single
CS.UnityEngine.UI.InputField.flexibleHeight = nil

---@property readonly CS.UnityEngine.UI.InputField.layoutPriority : CS.System.Int32
CS.UnityEngine.UI.InputField.layoutPriority = nil

---@param input : CS.System.String
function CS.UnityEngine.UI.InputField:SetTextWithoutNotify(input)
end

---@param shift : CS.System.Boolean
function CS.UnityEngine.UI.InputField:MoveTextEnd(shift)
end

---@param shift : CS.System.Boolean
function CS.UnityEngine.UI.InputField:MoveTextStart(shift)
end

---@param screen : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.UI.InputField:ScreenToLocal(screen)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.InputField:OnBeginDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.InputField:OnDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.InputField:OnEndDrag(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.InputField:OnPointerDown(eventData)
end

---@param e : CS.UnityEngine.Event
function CS.UnityEngine.UI.InputField:ProcessEvent(e)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.InputField:OnUpdateSelected(eventData)
end

function CS.UnityEngine.UI.InputField:ForceLabelUpdate()
end

---@param update : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.InputField:Rebuild(update)
end

function CS.UnityEngine.UI.InputField:LayoutComplete()
end

function CS.UnityEngine.UI.InputField:GraphicUpdateComplete()
end

function CS.UnityEngine.UI.InputField:ActivateInputField()
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.InputField:OnSelect(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.PointerEventData
function CS.UnityEngine.UI.InputField:OnPointerClick(eventData)
end

function CS.UnityEngine.UI.InputField:DeactivateInputField()
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.InputField:OnDeselect(eventData)
end

---@param eventData : CS.UnityEngine.EventSystems.BaseEventData
function CS.UnityEngine.UI.InputField:OnSubmit(eventData)
end

function CS.UnityEngine.UI.InputField:CalculateLayoutInputHorizontal()
end

function CS.UnityEngine.UI.InputField:CalculateLayoutInputVertical()
end