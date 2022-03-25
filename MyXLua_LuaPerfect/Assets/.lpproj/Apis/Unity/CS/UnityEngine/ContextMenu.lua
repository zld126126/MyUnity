---@class CS.UnityEngine.ContextMenu : CS.System.Attribute
CS.UnityEngine.ContextMenu = {}

---@field public CS.UnityEngine.ContextMenu.menuItem : CS.System.String
CS.UnityEngine.ContextMenu.menuItem = nil

---@field public CS.UnityEngine.ContextMenu.validate : CS.System.Boolean
CS.UnityEngine.ContextMenu.validate = nil

---@field public CS.UnityEngine.ContextMenu.priority : CS.System.Int32
CS.UnityEngine.ContextMenu.priority = nil

---@param itemName : CS.System.String
---@return CS.UnityEngine.ContextMenu
function CS.UnityEngine.ContextMenu(itemName)
end

---@param itemName : CS.System.String
---@param isValidateFunction : CS.System.Boolean
---@return CS.UnityEngine.ContextMenu
function CS.UnityEngine.ContextMenu(itemName, isValidateFunction)
end

---@param itemName : CS.System.String
---@param isValidateFunction : CS.System.Boolean
---@param priority : CS.System.Int32
---@return CS.UnityEngine.ContextMenu
function CS.UnityEngine.ContextMenu(itemName, isValidateFunction, priority)
end