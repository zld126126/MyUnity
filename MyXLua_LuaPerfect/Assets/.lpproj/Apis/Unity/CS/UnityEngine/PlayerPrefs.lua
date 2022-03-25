---@class CS.UnityEngine.PlayerPrefs : CS.System.Object
CS.UnityEngine.PlayerPrefs = {}

---@return CS.UnityEngine.PlayerPrefs
function CS.UnityEngine.PlayerPrefs()
end

---@param key : CS.System.String
---@param value : CS.System.Int32
function CS.UnityEngine.PlayerPrefs.SetInt(key, value)
end

---@param key : CS.System.String
---@param defaultValue : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.PlayerPrefs.GetInt(key, defaultValue)
end

---@param key : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.PlayerPrefs.GetInt(key)
end

---@param key : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.PlayerPrefs.SetFloat(key, value)
end

---@param key : CS.System.String
---@param defaultValue : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.PlayerPrefs.GetFloat(key, defaultValue)
end

---@param key : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.PlayerPrefs.GetFloat(key)
end

---@param key : CS.System.String
---@param value : CS.System.String
function CS.UnityEngine.PlayerPrefs.SetString(key, value)
end

---@param key : CS.System.String
---@param defaultValue : CS.System.String
---@return CS.System.String
function CS.UnityEngine.PlayerPrefs.GetString(key, defaultValue)
end

---@param key : CS.System.String
---@return CS.System.String
function CS.UnityEngine.PlayerPrefs.GetString(key)
end

---@param key : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.PlayerPrefs.HasKey(key)
end

---@param key : CS.System.String
function CS.UnityEngine.PlayerPrefs.DeleteKey(key)
end

function CS.UnityEngine.PlayerPrefs.DeleteAll()
end

function CS.UnityEngine.PlayerPrefs.Save()
end