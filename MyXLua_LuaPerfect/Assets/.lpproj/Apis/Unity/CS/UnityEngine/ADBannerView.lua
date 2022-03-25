---@class CS.UnityEngine.ADBannerView : CS.System.Object
CS.UnityEngine.ADBannerView = {}

---@property readonly CS.UnityEngine.ADBannerView.loaded : CS.System.Boolean
CS.UnityEngine.ADBannerView.loaded = nil

---@property readwrite CS.UnityEngine.ADBannerView.visible : CS.System.Boolean
CS.UnityEngine.ADBannerView.visible = nil

---@property readwrite CS.UnityEngine.ADBannerView.layout : CS.UnityEngine.Layout
CS.UnityEngine.ADBannerView.layout = nil

---@property readwrite CS.UnityEngine.ADBannerView.position : CS.UnityEngine.Vector2
CS.UnityEngine.ADBannerView.position = nil

---@property readonly CS.UnityEngine.ADBannerView.size : CS.UnityEngine.Vector2
CS.UnityEngine.ADBannerView.size = nil

---@param type : CS.UnityEngine.Type
---@param layout : CS.UnityEngine.Layout
---@return CS.UnityEngine.ADBannerView
function CS.UnityEngine.ADBannerView(type, layout)
end

---@param value : CS.UnityEngine.BannerWasClickedDelegate
function CS.UnityEngine.ADBannerView.add_onBannerWasClicked(value)
end

---@param value : CS.UnityEngine.BannerWasClickedDelegate
function CS.UnityEngine.ADBannerView.remove_onBannerWasClicked(value)
end

---@param value : CS.UnityEngine.BannerWasLoadedDelegate
function CS.UnityEngine.ADBannerView.add_onBannerWasLoaded(value)
end

---@param value : CS.UnityEngine.BannerWasLoadedDelegate
function CS.UnityEngine.ADBannerView.remove_onBannerWasLoaded(value)
end

---@param type : CS.UnityEngine.Type
---@return CS.System.Boolean
function CS.UnityEngine.ADBannerView.IsAvailable(type)
end