---@class CS.UnityEngine.iOS.ADInterstitialAd : CS.System.Object
CS.UnityEngine.iOS.ADInterstitialAd = {}

---@property readonly CS.UnityEngine.iOS.ADInterstitialAd.isAvailable : CS.System.Boolean
CS.UnityEngine.iOS.ADInterstitialAd.isAvailable = nil

---@property readonly CS.UnityEngine.iOS.ADInterstitialAd.loaded : CS.System.Boolean
CS.UnityEngine.iOS.ADInterstitialAd.loaded = nil

---@param autoReload : CS.System.Boolean
---@return CS.UnityEngine.iOS.ADInterstitialAd
function CS.UnityEngine.iOS.ADInterstitialAd(autoReload)
end

---@return CS.UnityEngine.iOS.ADInterstitialAd
function CS.UnityEngine.iOS.ADInterstitialAd()
end

function CS.UnityEngine.iOS.ADInterstitialAd:Show()
end

function CS.UnityEngine.iOS.ADInterstitialAd:ReloadAd()
end

---@param value : CS.UnityEngine.iOS.InterstitialWasLoadedDelegate
function CS.UnityEngine.iOS.ADInterstitialAd.add_onInterstitialWasLoaded(value)
end

---@param value : CS.UnityEngine.iOS.InterstitialWasLoadedDelegate
function CS.UnityEngine.iOS.ADInterstitialAd.remove_onInterstitialWasLoaded(value)
end

---@param value : CS.UnityEngine.iOS.InterstitialWasViewedDelegate
function CS.UnityEngine.iOS.ADInterstitialAd.add_onInterstitialWasViewed(value)
end

---@param value : CS.UnityEngine.iOS.InterstitialWasViewedDelegate
function CS.UnityEngine.iOS.ADInterstitialAd.remove_onInterstitialWasViewed(value)
end