---@class CS.UnityEngine.WSA.Toast : CS.System.Object
CS.UnityEngine.WSA.Toast = {}

---@property readwrite CS.UnityEngine.WSA.Toast.arguments : CS.System.String
CS.UnityEngine.WSA.Toast.arguments = nil

---@property readonly CS.UnityEngine.WSA.Toast.activated : CS.System.Boolean
CS.UnityEngine.WSA.Toast.activated = nil

---@property readonly CS.UnityEngine.WSA.Toast.dismissed : CS.System.Boolean
CS.UnityEngine.WSA.Toast.dismissed = nil

---@property readonly CS.UnityEngine.WSA.Toast.dismissedByUser : CS.System.Boolean
CS.UnityEngine.WSA.Toast.dismissedByUser = nil

---@param templ : CS.UnityEngine.WSA.ToastTemplate
---@return CS.System.String
function CS.UnityEngine.WSA.Toast.GetTemplate(templ)
end

---@param xml : CS.System.String
---@return CS.UnityEngine.WSA.Toast
function CS.UnityEngine.WSA.Toast.Create(xml)
end

---@param image : CS.System.String
---@param text : CS.System.String
---@return CS.UnityEngine.WSA.Toast
function CS.UnityEngine.WSA.Toast.Create(image, text)
end

function CS.UnityEngine.WSA.Toast:Show()
end

function CS.UnityEngine.WSA.Toast:Hide()
end