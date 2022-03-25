---@class CS.UnityEngine.Screen : CS.System.Object
CS.UnityEngine.Screen = {}

---@property readonly CS.UnityEngine.Screen.width : CS.System.Int32
CS.UnityEngine.Screen.width = nil

---@property readonly CS.UnityEngine.Screen.height : CS.System.Int32
CS.UnityEngine.Screen.height = nil

---@property readonly CS.UnityEngine.Screen.dpi : CS.System.Single
CS.UnityEngine.Screen.dpi = nil

---@property readonly CS.UnityEngine.Screen.currentResolution : CS.UnityEngine.Resolution
CS.UnityEngine.Screen.currentResolution = nil

---@property readonly CS.UnityEngine.Screen.resolutions : CS.UnityEngine.Resolution[]
CS.UnityEngine.Screen.resolutions = nil

---@property readwrite CS.UnityEngine.Screen.fullScreen : CS.System.Boolean
CS.UnityEngine.Screen.fullScreen = nil

---@property readwrite CS.UnityEngine.Screen.fullScreenMode : CS.UnityEngine.FullScreenMode
CS.UnityEngine.Screen.fullScreenMode = nil

---@property readonly CS.UnityEngine.Screen.safeArea : CS.UnityEngine.Rect
CS.UnityEngine.Screen.safeArea = nil

---@property readonly CS.UnityEngine.Screen.cutouts : CS.UnityEngine.Rect[]
CS.UnityEngine.Screen.cutouts = nil

---@property readwrite CS.UnityEngine.Screen.autorotateToPortrait : CS.System.Boolean
CS.UnityEngine.Screen.autorotateToPortrait = nil

---@property readwrite CS.UnityEngine.Screen.autorotateToPortraitUpsideDown : CS.System.Boolean
CS.UnityEngine.Screen.autorotateToPortraitUpsideDown = nil

---@property readwrite CS.UnityEngine.Screen.autorotateToLandscapeLeft : CS.System.Boolean
CS.UnityEngine.Screen.autorotateToLandscapeLeft = nil

---@property readwrite CS.UnityEngine.Screen.autorotateToLandscapeRight : CS.System.Boolean
CS.UnityEngine.Screen.autorotateToLandscapeRight = nil

---@property readwrite CS.UnityEngine.Screen.orientation : CS.UnityEngine.ScreenOrientation
CS.UnityEngine.Screen.orientation = nil

---@property readwrite CS.UnityEngine.Screen.sleepTimeout : CS.System.Int32
CS.UnityEngine.Screen.sleepTimeout = nil

---@property readwrite CS.UnityEngine.Screen.brightness : CS.System.Single
CS.UnityEngine.Screen.brightness = nil

---@property readonly CS.UnityEngine.Screen.GetResolution : CS.UnityEngine.Resolution[]
CS.UnityEngine.Screen.GetResolution = nil

---@property readwrite CS.UnityEngine.Screen.showCursor : CS.System.Boolean
CS.UnityEngine.Screen.showCursor = nil

---@property readwrite CS.UnityEngine.Screen.lockCursor : CS.System.Boolean
CS.UnityEngine.Screen.lockCursor = nil

---@return CS.UnityEngine.Screen
function CS.UnityEngine.Screen()
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreenMode : CS.UnityEngine.FullScreenMode
---@param preferredRefreshRate : CS.System.Int32
function CS.UnityEngine.Screen.SetResolution(width, height, fullscreenMode, preferredRefreshRate)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreenMode : CS.UnityEngine.FullScreenMode
function CS.UnityEngine.Screen.SetResolution(width, height, fullscreenMode)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreen : CS.System.Boolean
---@param preferredRefreshRate : CS.System.Int32
function CS.UnityEngine.Screen.SetResolution(width, height, fullscreen, preferredRefreshRate)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreen : CS.System.Boolean
function CS.UnityEngine.Screen.SetResolution(width, height, fullscreen)
end