---@class CS.UnityEngine.Events.ArgumentCache : CS.System.Object
CS.UnityEngine.Events.ArgumentCache = {}

---@property readwrite CS.UnityEngine.Events.ArgumentCache.unityObjectArgument : CS.UnityEngine.Object
CS.UnityEngine.Events.ArgumentCache.unityObjectArgument = nil

---@property readonly CS.UnityEngine.Events.ArgumentCache.unityObjectArgumentAssemblyTypeName : CS.System.String
CS.UnityEngine.Events.ArgumentCache.unityObjectArgumentAssemblyTypeName = nil

---@property readwrite CS.UnityEngine.Events.ArgumentCache.intArgument : CS.System.Int32
CS.UnityEngine.Events.ArgumentCache.intArgument = nil

---@property readwrite CS.UnityEngine.Events.ArgumentCache.floatArgument : CS.System.Single
CS.UnityEngine.Events.ArgumentCache.floatArgument = nil

---@property readwrite CS.UnityEngine.Events.ArgumentCache.stringArgument : CS.System.String
CS.UnityEngine.Events.ArgumentCache.stringArgument = nil

---@property readwrite CS.UnityEngine.Events.ArgumentCache.boolArgument : CS.System.Boolean
CS.UnityEngine.Events.ArgumentCache.boolArgument = nil

---@return CS.UnityEngine.Events.ArgumentCache
function CS.UnityEngine.Events.ArgumentCache()
end

function CS.UnityEngine.Events.ArgumentCache:OnBeforeSerialize()
end

function CS.UnityEngine.Events.ArgumentCache:OnAfterDeserialize()
end