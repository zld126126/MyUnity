---@class CS.UnityEngine.Resources : CS.System.Object
CS.UnityEngine.Resources = {}

---@return CS.UnityEngine.Resources
function CS.UnityEngine.Resources()
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Resources.FindObjectsOfTypeAll(type)
end

---@param path : CS.System.String
---@return CS.UnityEngine.Object
function CS.UnityEngine.Resources.Load(path)
end

---@param path : CS.System.String
---@param systemTypeInstance : CS.System.Type
---@return CS.UnityEngine.Object
function CS.UnityEngine.Resources.Load(path, systemTypeInstance)
end

---@param path : CS.System.String
---@return CS.UnityEngine.ResourceRequest
function CS.UnityEngine.Resources.LoadAsync(path)
end

---@param path : CS.System.String
---@param type : CS.System.Type
---@return CS.UnityEngine.ResourceRequest
function CS.UnityEngine.Resources.LoadAsync(path, type)
end

---@param path : CS.System.String
---@param systemTypeInstance : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Resources.LoadAll(path, systemTypeInstance)
end

---@param path : CS.System.String
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Resources.LoadAll(path)
end

---@param type : CS.System.Type
---@param path : CS.System.String
---@return CS.UnityEngine.Object
function CS.UnityEngine.Resources.GetBuiltinResource(type, path)
end

---@param assetToUnload : CS.UnityEngine.Object
function CS.UnityEngine.Resources.UnloadAsset(assetToUnload)
end

---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Resources.UnloadUnusedAssets()
end

---@param instanceID : CS.System.Int32
---@return CS.UnityEngine.Object
function CS.UnityEngine.Resources.InstanceIDToObject(instanceID)
end

---@param instanceIDs : CS.Unity.Collections.NativeArray
---@param objects : CS.System.Collections.Generic.List
function CS.UnityEngine.Resources.InstanceIDToObjectList(instanceIDs, objects)
end

---@param assetPath : CS.System.String
---@param type : CS.System.Type
---@return CS.UnityEngine.Object
function CS.UnityEngine.Resources.LoadAssetAtPath(assetPath, type)
end