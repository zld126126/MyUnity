---@class CS.UnityEngine.ScreenShimBase : CS.System.Object
CS.UnityEngine.ScreenShimBase = {}

---@property readonly CS.UnityEngine.ScreenShimBase.width : CS.System.Int32
CS.UnityEngine.ScreenShimBase.width = nil

---@property readonly CS.UnityEngine.ScreenShimBase.height : CS.System.Int32
CS.UnityEngine.ScreenShimBase.height = nil

---@property readonly CS.UnityEngine.ScreenShimBase.dpi : CS.System.Single
CS.UnityEngine.ScreenShimBase.dpi = nil

---@property readonly CS.UnityEngine.ScreenShimBase.currentResolution : CS.UnityEngine.Resolution
CS.UnityEngine.ScreenShimBase.currentResolution = nil

---@property readonly CS.UnityEngine.ScreenShimBase.resolutions : CS.UnityEngine.Resolution[]
CS.UnityEngine.ScreenShimBase.resolutions = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.fullScreen : CS.System.Boolean
CS.UnityEngine.ScreenShimBase.fullScreen = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.fullScreenMode : CS.UnityEngine.FullScreenMode
CS.UnityEngine.ScreenShimBase.fullScreenMode = nil

---@property readonly CS.UnityEngine.ScreenShimBase.safeArea : CS.UnityEngine.Rect
CS.UnityEngine.ScreenShimBase.safeArea = nil

---@property readonly CS.UnityEngine.ScreenShimBase.cutouts : CS.UnityEngine.Rect[]
CS.UnityEngine.ScreenShimBase.cutouts = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.autorotateToPortrait : CS.System.Boolean
CS.UnityEngine.ScreenShimBase.autorotateToPortrait = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.autorotateToPortraitUpsideDown : CS.System.Boolean
CS.UnityEngine.ScreenShimBase.autorotateToPortraitUpsideDown = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.autorotateToLandscapeLeft : CS.System.Boolean
CS.UnityEngine.ScreenShimBase.autorotateToLandscapeLeft = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.autorotateToLandscapeRight : CS.System.Boolean
CS.UnityEngine.ScreenShimBase.autorotateToLandscapeRight = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.orientation : CS.UnityEngine.ScreenOrientation
CS.UnityEngine.ScreenShimBase.orientation = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.sleepTimeout : CS.System.Int32
CS.UnityEngine.ScreenShimBase.sleepTimeout = nil

---@property readwrite CS.UnityEngine.ScreenShimBase.brightness : CS.System.Single
CS.UnityEngine.ScreenShimBase.brightness = nil

---@return CS.UnityEngine.ScreenShimBase
function CS.UnityEngine.ScreenShimBase()
end

function CS.UnityEngine.ScreenShimBase:Dispose()
end

---@return CS.System.Boolean
function CS.UnityEngine.ScreenShimBase:IsActive()
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreenMode : CS.UnityEngine.FullScreenMode
---@param preferredRefreshRate : CS.System.Int32
function CS.UnityEngine.ScreenShimBase:SetResolution(width, height, fullscreenMode, preferredRefreshRate)
end