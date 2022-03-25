---@class CS.UnityEngine.UI.OnValidateInput : CS.System.MulticastDelegate
CS.UnityEngine.UI.OnValidateInput = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.UI.OnValidateInput
function CS.UnityEngine.UI.OnValidateInput(object, method)
end

---@param text : CS.System.String
---@param charIndex : CS.System.Int32
---@param addedChar : CS.System.Char
---@return CS.System.Char
function CS.UnityEngine.UI.OnValidateInput:Invoke(text, charIndex, addedChar)
end

---@param text : CS.System.String
---@param charIndex : CS.System.Int32
---@param addedChar : CS.System.Char
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.UI.OnValidateInput:BeginInvoke(text, charIndex, addedChar, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.Char
function CS.UnityEngine.UI.OnValidateInput:EndInvoke(result)
end