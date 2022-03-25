---@class CS.UnityEngine.ColorUsageAttribute : CS.UnityEngine.PropertyAttribute
CS.UnityEngine.ColorUsageAttribute = {}

---@field public CS.UnityEngine.ColorUsageAttribute.showAlpha : CS.System.Boolean
CS.UnityEngine.ColorUsageAttribute.showAlpha = nil

---@field public CS.UnityEngine.ColorUsageAttribute.hdr : CS.System.Boolean
CS.UnityEngine.ColorUsageAttribute.hdr = nil

---@field public CS.UnityEngine.ColorUsageAttribute.minBrightness : CS.System.Single
CS.UnityEngine.ColorUsageAttribute.minBrightness = nil

---@field public CS.UnityEngine.ColorUsageAttribute.maxBrightness : CS.System.Single
CS.UnityEngine.ColorUsageAttribute.maxBrightness = nil

---@field public CS.UnityEngine.ColorUsageAttribute.minExposureValue : CS.System.Single
CS.UnityEngine.ColorUsageAttribute.minExposureValue = nil

---@field public CS.UnityEngine.ColorUsageAttribute.maxExposureValue : CS.System.Single
CS.UnityEngine.ColorUsageAttribute.maxExposureValue = nil

---@param showAlpha : CS.System.Boolean
---@return CS.UnityEngine.ColorUsageAttribute
function CS.UnityEngine.ColorUsageAttribute(showAlpha)
end

---@param showAlpha : CS.System.Boolean
---@param hdr : CS.System.Boolean
---@return CS.UnityEngine.ColorUsageAttribute
function CS.UnityEngine.ColorUsageAttribute(showAlpha, hdr)
end

---@param showAlpha : CS.System.Boolean
---@param hdr : CS.System.Boolean
---@param minBrightness : CS.System.Single
---@param maxBrightness : CS.System.Single
---@param minExposureValue : CS.System.Single
---@param maxExposureValue : CS.System.Single
---@return CS.UnityEngine.ColorUsageAttribute
function CS.UnityEngine.ColorUsageAttribute(showAlpha, hdr, minBrightness, maxBrightness, minExposureValue, maxExposureValue)
end