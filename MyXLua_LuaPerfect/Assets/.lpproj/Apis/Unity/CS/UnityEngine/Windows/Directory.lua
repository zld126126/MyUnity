---@class CS.UnityEngine.Windows.Directory : CS.System.Object
CS.UnityEngine.Windows.Directory = {}

---@property readonly CS.UnityEngine.Windows.Directory.temporaryFolder : CS.System.String
CS.UnityEngine.Windows.Directory.temporaryFolder = nil

---@property readonly CS.UnityEngine.Windows.Directory.localFolder : CS.System.String
CS.UnityEngine.Windows.Directory.localFolder = nil

---@property readonly CS.UnityEngine.Windows.Directory.roamingFolder : CS.System.String
CS.UnityEngine.Windows.Directory.roamingFolder = nil

---@param path : CS.System.String
function CS.UnityEngine.Windows.Directory.CreateDirectory(path)
end

---@param path : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Windows.Directory.Exists(path)
end

---@param path : CS.System.String
function CS.UnityEngine.Windows.Directory.Delete(path)
end