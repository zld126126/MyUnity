---@class CS.UnityEngine.DrivenPropertyManager : CS.System.Object
CS.UnityEngine.DrivenPropertyManager = {}

---@return CS.UnityEngine.DrivenPropertyManager
function CS.UnityEngine.DrivenPropertyManager()
end

---@param driver : CS.UnityEngine.Object
---@param target : CS.UnityEngine.Object
---@param propertyPath : CS.System.String
function CS.UnityEngine.DrivenPropertyManager.RegisterProperty(driver, target, propertyPath)
end

---@param driver : CS.UnityEngine.Object
---@param target : CS.UnityEngine.Object
---@param propertyPath : CS.System.String
function CS.UnityEngine.DrivenPropertyManager.TryRegisterProperty(driver, target, propertyPath)
end

---@param driver : CS.UnityEngine.Object
---@param target : CS.UnityEngine.Object
---@param propertyPath : CS.System.String
function CS.UnityEngine.DrivenPropertyManager.UnregisterProperty(driver, target, propertyPath)
end

---@param driver : CS.UnityEngine.Object
function CS.UnityEngine.DrivenPropertyManager.UnregisterProperties(driver)
end