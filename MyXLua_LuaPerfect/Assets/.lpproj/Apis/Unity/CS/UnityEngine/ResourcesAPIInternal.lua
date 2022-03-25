---@class CS.UnityEngine.ResourcesAPIInternal : CS.System.Object
CS.UnityEngine.ResourcesAPIInternal = {}

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.ResourcesAPIInternal.FindObjectsOfTypeAll(type)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Shader
function CS.UnityEngine.ResourcesAPIInternal.FindShaderByName(name)
end

---@param path : CS.System.String
---@param systemTypeInstance : CS.System.Type
---@return CS.UnityEngine.Object
function CS.UnityEngine.ResourcesAPIInternal.Load(path, systemTypeInstance)
end

---@param path : CS.System.String
---@param systemTypeInstance : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.ResourcesAPIInternal.LoadAll(path, systemTypeInstance)
end

---@param assetToUnload : CS.UnityEngine.Object
function CS.UnityEngine.ResourcesAPIInternal.UnloadAsset(assetToUnload)
end