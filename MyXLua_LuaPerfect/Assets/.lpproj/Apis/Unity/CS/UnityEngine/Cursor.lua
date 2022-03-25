---@class CS.UnityEngine.Cursor : CS.System.Object
CS.UnityEngine.Cursor = {}

---@property readwrite CS.UnityEngine.Cursor.visible : CS.System.Boolean
CS.UnityEngine.Cursor.visible = nil

---@property readwrite CS.UnityEngine.Cursor.lockState : CS.UnityEngine.CursorLockMode
CS.UnityEngine.Cursor.lockState = nil

---@return CS.UnityEngine.Cursor
function CS.UnityEngine.Cursor()
end

---@param texture : CS.UnityEngine.Texture2D
---@param hotspot : CS.UnityEngine.Vector2
---@param cursorMode : CS.UnityEngine.CursorMode
function CS.UnityEngine.Cursor.SetCursor(texture, hotspot, cursorMode)
end