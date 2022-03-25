---@class CS.UnityEngine.iOS.OnDemandResourcesRequest : CS.UnityEngine.AsyncOperation
CS.UnityEngine.iOS.OnDemandResourcesRequest = {}

---@property readonly CS.UnityEngine.iOS.OnDemandResourcesRequest.error : CS.System.String
CS.UnityEngine.iOS.OnDemandResourcesRequest.error = nil

---@property readwrite CS.UnityEngine.iOS.OnDemandResourcesRequest.loadingPriority : CS.System.Single
CS.UnityEngine.iOS.OnDemandResourcesRequest.loadingPriority = nil

---@param resourceName : CS.System.String
---@return CS.System.String
function CS.UnityEngine.iOS.OnDemandResourcesRequest:GetResourcePath(resourceName)
end

function CS.UnityEngine.iOS.OnDemandResourcesRequest:Dispose()
end