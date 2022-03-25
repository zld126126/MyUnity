---@module CS.UnityEngine.SearchService
CS.UnityEngine.SearchService = {}

---@class CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute : CS.System.Attribute
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute = {}

---@property readonly CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.labels : CS.System.String[]
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.labels = nil

---@property readonly CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.matchAll : CS.System.Boolean
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.matchAll = nil

---@param labels : CS.System.String[]
---@return CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
function CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute(labels)
end

---@param matchAll : CS.System.Boolean
---@param labels : CS.System.String[]
---@return CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
function CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute(matchAll, labels)
end