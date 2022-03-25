---@class CS.UnityEngine.BootConfigData : CS.System.Object
CS.UnityEngine.BootConfigData = {}

---@param key : CS.System.String
function CS.UnityEngine.BootConfigData:AddKey(key)
end

---@param key : CS.System.String
---@return CS.System.String
function CS.UnityEngine.BootConfigData:Get(key)
end

---@param key : CS.System.String
---@param index : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.BootConfigData:Get(key, index)
end

---@param key : CS.System.String
---@param value : CS.System.String
function CS.UnityEngine.BootConfigData:Append(key, value)
end

---@param key : CS.System.String
---@param value : CS.System.String
function CS.UnityEngine.BootConfigData:Set(key, value)
end