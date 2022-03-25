---@class CS.UnityEngine.iOS.ADBannerView : CS.System.Object
CS.UnityEngine.iOS.ADBannerView = {}

---@property readonly CS.UnityEngine.iOS.ADBannerView.loaded : CS.System.Boolean
CS.UnityEngine.iOS.ADBannerView.loaded = nil

---@property readwrite CS.UnityEngine.iOS.ADBannerView.visible : CS.System.Boolean
CS.UnityEngine.iOS.ADBannerView.visible = nil

---@property readwrite CS.UnityEngine.iOS.ADBannerView.layout : CS.UnityEngine.iOS.Layout
CS.UnityEngine.iOS.ADBannerView.layout = nil

---@property readwrite CS.UnityEngine.iOS.ADBannerView.position : CS.UnityEngine.Vector2
CS.UnityEngine.iOS.ADBannerView.position = nil

---@property readonly CS.UnityEngine.iOS.ADBannerView.size : CS.UnityEngine.Vector2
CS.UnityEngine.iOS.ADBannerView.size = nil

---@param type : CS.UnityEngine.iOS.Type
---@param layout : CS.UnityEngine.iOS.Layout
---@return CS.UnityEngine.iOS.ADBannerView
function CS.UnityEngine.iOS.ADBannerView(type, layout)
end

---@param type : CS.UnityEngine.iOS.Type
---@return CS.System.Boolean
function CS.UnityEngine.iOS.ADBannerView.IsAvailable(type)
end

---@param value : CS.UnityEngine.iOS.BannerWasClickedDelegate
function CS.UnityEngine.iOS.ADBannerView.add_onBannerWasClicked(value)
end

---@param value : CS.UnityEngine.iOS.BannerWasClickedDelegate
function CS.UnityEngine.iOS.ADBannerView.remove_onBannerWasClicked(value)
end

---@param value : CS.UnityEngine.iOS.BannerWasLoadedDelegate
function CS.UnityEngine.iOS.ADBannerView.add_onBannerWasLoaded(value)
end

---@param value : CS.UnityEngine.iOS.BannerWasLoadedDelegate
function CS.UnityEngine.iOS.ADBannerView.remove_onBannerWasLoaded(value)
end

---@param value : CS.UnityEngine.iOS.BannerFailedToLoadDelegate
function CS.UnityEngine.iOS.ADBannerView.add_onBannerFailedToLoad(value)
end

---@param value : CS.UnityEngine.iOS.BannerFailedToLoadDelegate
function CS.UnityEngine.iOS.ADBannerView.remove_onBannerFailedToLoad(value)
end