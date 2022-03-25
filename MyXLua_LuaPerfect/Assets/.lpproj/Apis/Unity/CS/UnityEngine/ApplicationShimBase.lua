---@class CS.UnityEngine.ApplicationShimBase : CS.System.Object
CS.UnityEngine.ApplicationShimBase = {}

---@property readonly CS.UnityEngine.ApplicationShimBase.isEditor : CS.System.Boolean
CS.UnityEngine.ApplicationShimBase.isEditor = nil

---@property readonly CS.UnityEngine.ApplicationShimBase.platform : CS.UnityEngine.RuntimePlatform
CS.UnityEngine.ApplicationShimBase.platform = nil

---@property readonly CS.UnityEngine.ApplicationShimBase.isMobilePlatform : CS.System.Boolean
CS.UnityEngine.ApplicationShimBase.isMobilePlatform = nil

---@property readonly CS.UnityEngine.ApplicationShimBase.isConsolePlatform : CS.System.Boolean
CS.UnityEngine.ApplicationShimBase.isConsolePlatform = nil

---@property readonly CS.UnityEngine.ApplicationShimBase.systemLanguage : CS.UnityEngine.SystemLanguage
CS.UnityEngine.ApplicationShimBase.systemLanguage = nil

---@property readonly CS.UnityEngine.ApplicationShimBase.internetReachability : CS.UnityEngine.NetworkReachability
CS.UnityEngine.ApplicationShimBase.internetReachability = nil

---@return CS.UnityEngine.ApplicationShimBase
function CS.UnityEngine.ApplicationShimBase()
end

function CS.UnityEngine.ApplicationShimBase:Dispose()
end

---@return CS.System.Boolean
function CS.UnityEngine.ApplicationShimBase:IsActive()
end

function CS.UnityEngine.ApplicationShimBase:OnLowMemory()
end