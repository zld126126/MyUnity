---@class CS.UnityEngine.WSA.Launcher : CS.System.Object
CS.UnityEngine.WSA.Launcher = {}

---@return CS.UnityEngine.WSA.Launcher
function CS.UnityEngine.WSA.Launcher()
end

---@param folder : CS.UnityEngine.WSA.Folder
---@param relativeFilePath : CS.System.String
---@param showWarning : CS.System.Boolean
function CS.UnityEngine.WSA.Launcher.LaunchFile(folder, relativeFilePath, showWarning)
end

---@param fileExtension : CS.System.String
function CS.UnityEngine.WSA.Launcher.LaunchFileWithPicker(fileExtension)
end

---@param uri : CS.System.String
---@param showWarning : CS.System.Boolean
function CS.UnityEngine.WSA.Launcher.LaunchUri(uri, showWarning)
end