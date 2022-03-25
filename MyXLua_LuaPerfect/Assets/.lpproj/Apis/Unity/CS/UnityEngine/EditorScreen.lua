---@class CS.UnityEngine.EditorScreen : CS.System.Object
CS.UnityEngine.EditorScreen = {}

---@property readonly CS.UnityEngine.EditorScreen.width : CS.System.Int32
CS.UnityEngine.EditorScreen.width = nil

---@property readonly CS.UnityEngine.EditorScreen.height : CS.System.Int32
CS.UnityEngine.EditorScreen.height = nil

---@property readonly CS.UnityEngine.EditorScreen.dpi : CS.System.Single
CS.UnityEngine.EditorScreen.dpi = nil

---@property readwrite CS.UnityEngine.EditorScreen.orientation : CS.UnityEngine.ScreenOrientation
CS.UnityEngine.EditorScreen.orientation = nil

---@property readwrite CS.UnityEngine.EditorScreen.sleepTimeout : CS.System.Int32
CS.UnityEngine.EditorScreen.sleepTimeout = nil

---@property readwrite CS.UnityEngine.EditorScreen.autorotateToPortrait : CS.System.Boolean
CS.UnityEngine.EditorScreen.autorotateToPortrait = nil

---@property readwrite CS.UnityEngine.EditorScreen.autorotateToPortraitUpsideDown : CS.System.Boolean
CS.UnityEngine.EditorScreen.autorotateToPortraitUpsideDown = nil

---@property readwrite CS.UnityEngine.EditorScreen.autorotateToLandscapeLeft : CS.System.Boolean
CS.UnityEngine.EditorScreen.autorotateToLandscapeLeft = nil

---@property readwrite CS.UnityEngine.EditorScreen.autorotateToLandscapeRight : CS.System.Boolean
CS.UnityEngine.EditorScreen.autorotateToLandscapeRight = nil

---@property readonly CS.UnityEngine.EditorScreen.currentResolution : CS.UnityEngine.Resolution
CS.UnityEngine.EditorScreen.currentResolution = nil

---@property readwrite CS.UnityEngine.EditorScreen.fullScreen : CS.System.Boolean
CS.UnityEngine.EditorScreen.fullScreen = nil

---@property readwrite CS.UnityEngine.EditorScreen.fullScreenMode : CS.UnityEngine.FullScreenMode
CS.UnityEngine.EditorScreen.fullScreenMode = nil

---@property readonly CS.UnityEngine.EditorScreen.safeArea : CS.UnityEngine.Rect
CS.UnityEngine.EditorScreen.safeArea = nil

---@property readonly CS.UnityEngine.EditorScreen.cutouts : CS.UnityEngine.Rect[]
CS.UnityEngine.EditorScreen.cutouts = nil

---@property readonly CS.UnityEngine.EditorScreen.resolutions : CS.UnityEngine.Resolution[]
CS.UnityEngine.EditorScreen.resolutions = nil

---@property readwrite CS.UnityEngine.EditorScreen.brightness : CS.System.Single
CS.UnityEngine.EditorScreen.brightness = nil

---@return CS.UnityEngine.EditorScreen
function CS.UnityEngine.EditorScreen()
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreenMode : CS.UnityEngine.FullScreenMode
---@param preferredRefreshRate : CS.System.Int32
function CS.UnityEngine.EditorScreen.SetResolution(width, height, fullscreenMode, preferredRefreshRate)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreenMode : CS.UnityEngine.FullScreenMode
function CS.UnityEngine.EditorScreen.SetResolution(width, height, fullscreenMode)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreen : CS.System.Boolean
---@param preferredRefreshRate : CS.System.Int32
function CS.UnityEngine.EditorScreen.SetResolution(width, height, fullscreen, preferredRefreshRate)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param fullscreen : CS.System.Boolean
function CS.UnityEngine.EditorScreen.SetResolution(width, height, fullscreen)
end