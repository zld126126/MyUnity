---@class CS.UnityEngine.Handheld : CS.System.Object
CS.UnityEngine.Handheld = {}

---@property readwrite CS.UnityEngine.Handheld.use32BitDisplayBuffer : CS.System.Boolean
CS.UnityEngine.Handheld.use32BitDisplayBuffer = nil

---@return CS.UnityEngine.Handheld
function CS.UnityEngine.Handheld()
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.FullScreenMovieControlMode
---@param scalingMode : CS.UnityEngine.FullScreenMovieScalingMode
---@return CS.System.Boolean
function CS.UnityEngine.Handheld.PlayFullScreenMovie(path, bgColor, controlMode, scalingMode)
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@param controlMode : CS.UnityEngine.FullScreenMovieControlMode
---@return CS.System.Boolean
function CS.UnityEngine.Handheld.PlayFullScreenMovie(path, bgColor, controlMode)
end

---@param path : CS.System.String
---@param bgColor : CS.UnityEngine.Color
---@return CS.System.Boolean
function CS.UnityEngine.Handheld.PlayFullScreenMovie(path, bgColor)
end

---@param path : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Handheld.PlayFullScreenMovie(path)
end

function CS.UnityEngine.Handheld.Vibrate()
end

---@param style : CS.UnityEngine.iOS.ActivityIndicatorStyle
function CS.UnityEngine.Handheld.SetActivityIndicatorStyle(style)
end

---@param style : CS.UnityEngine.AndroidActivityIndicatorStyle
function CS.UnityEngine.Handheld.SetActivityIndicatorStyle(style)
end

---@return CS.System.Int32
function CS.UnityEngine.Handheld.GetActivityIndicatorStyle()
end

function CS.UnityEngine.Handheld.StartActivityIndicator()
end

function CS.UnityEngine.Handheld.StopActivityIndicator()
end

function CS.UnityEngine.Handheld.ClearShaderCache()
end