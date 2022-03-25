---@class CS.UnityEngine.iPhoneUtils : CS.System.Object
CS.UnityEngine.iPhoneUtils = {}

---@property readonly CS.UnityEngine.iPhoneUtils.isApplicationGenuine : CS.System.Boolean
CS.UnityEngine.iPhoneUtils.isApplicationGenuine = nil

---@property readonly CS.UnityEngine.iPhoneUtils.isApplicationGenuineAvailable : CS.System.Boolean
CS.UnityEngine.iPhoneUtils.isApplicationGenuineAvailable = nil

---@return CS.UnityEngine.iPhoneUtils
function CS.UnityEngine.iPhoneUtils()
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.iPhoneMovieControlMode
---@param scalingMode : CS.UnityEngine.iPhoneMovieScalingMode
function CS.UnityEngine.iPhoneUtils.PlayMovie(path, bgColor, controlMode, scalingMode)
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.iPhoneMovieControlMode
function CS.UnityEngine.iPhoneUtils.PlayMovie(path, bgColor, controlMode)
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
function CS.UnityEngine.iPhoneUtils.PlayMovie(path, bgColor)
end

---@param url : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.iPhoneMovieControlMode
---@param scalingMode : CS.UnityEngine.iPhoneMovieScalingMode
function CS.UnityEngine.iPhoneUtils.PlayMovieURL(url, bgColor, controlMode, scalingMode)
end

---@param url : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.iPhoneMovieControlMode
function CS.UnityEngine.iPhoneUtils.PlayMovieURL(url, bgColor, controlMode)
end

---@param url : CS.System.String
---@param bgColor : CS.UnityEngine.Color
function CS.UnityEngine.iPhoneUtils.PlayMovieURL(url, bgColor)
end

function CS.UnityEngine.iPhoneUtils.Vibrate()
end