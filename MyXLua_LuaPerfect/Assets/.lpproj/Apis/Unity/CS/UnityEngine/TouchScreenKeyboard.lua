---@class CS.UnityEngine.TouchScreenKeyboard : CS.System.Object
CS.UnityEngine.TouchScreenKeyboard = {}

---@property readonly CS.UnityEngine.TouchScreenKeyboard.isSupported : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.isSupported = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.isInPlaceEditingAllowed : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.isInPlaceEditingAllowed = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.text : CS.System.String
CS.UnityEngine.TouchScreenKeyboard.text = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.hideInput : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.hideInput = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.active : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.active = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.done : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.done = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.wasCanceled : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.wasCanceled = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.status : CS.UnityEngine.Status
CS.UnityEngine.TouchScreenKeyboard.status = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.characterLimit : CS.System.Int32
CS.UnityEngine.TouchScreenKeyboard.characterLimit = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.canGetSelection : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.canGetSelection = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.canSetSelection : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.canSetSelection = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.selection : CS.UnityEngine.RangeInt
CS.UnityEngine.TouchScreenKeyboard.selection = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.type : CS.UnityEngine.TouchScreenKeyboardType
CS.UnityEngine.TouchScreenKeyboard.type = nil

---@property readwrite CS.UnityEngine.TouchScreenKeyboard.targetDisplay : CS.System.Int32
CS.UnityEngine.TouchScreenKeyboard.targetDisplay = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.area : CS.UnityEngine.Rect
CS.UnityEngine.TouchScreenKeyboard.area = nil

---@property readonly CS.UnityEngine.TouchScreenKeyboard.visible : CS.System.Boolean
CS.UnityEngine.TouchScreenKeyboard.visible = nil

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@param secure : CS.System.Boolean
---@param alert : CS.System.Boolean
---@param textPlaceholder : CS.System.String
---@param characterLimit : CS.System.Int32
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard(text, keyboardType, autocorrection, multiline, secure, alert, textPlaceholder, characterLimit)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@param secure : CS.System.Boolean
---@param alert : CS.System.Boolean
---@param textPlaceholder : CS.System.String
---@param characterLimit : CS.System.Int32
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection, multiline, secure, alert, textPlaceholder, characterLimit)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@param secure : CS.System.Boolean
---@param alert : CS.System.Boolean
---@param textPlaceholder : CS.System.String
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection, multiline, secure, alert, textPlaceholder)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@param secure : CS.System.Boolean
---@param alert : CS.System.Boolean
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection, multiline, secure, alert)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@param secure : CS.System.Boolean
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection, multiline, secure)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@param multiline : CS.System.Boolean
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection, multiline)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@param autocorrection : CS.System.Boolean
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType, autocorrection)
end

---@param text : CS.System.String
---@param keyboardType : CS.UnityEngine.TouchScreenKeyboardType
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text, keyboardType)
end

---@param text : CS.System.String
---@return CS.UnityEngine.TouchScreenKeyboard
function CS.UnityEngine.TouchScreenKeyboard.Open(text)
end