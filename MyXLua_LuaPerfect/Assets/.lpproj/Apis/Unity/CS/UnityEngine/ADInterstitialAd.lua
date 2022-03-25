---@class CS.UnityEngine.ADInterstitialAd : CS.System.Object
CS.UnityEngine.ADInterstitialAd = {}

---@property readonly CS.UnityEngine.ADInterstitialAd.isAvailable : CS.System.Boolean
CS.UnityEngine.ADInterstitialAd.isAvailable = nil

---@property readonly CS.UnityEngine.ADInterstitialAd.loaded : CS.System.Boolean
CS.UnityEngine.ADInterstitialAd.loaded = nil

---@param autoReload : CS.System.Boolean
---@return CS.UnityEngine.ADInterstitialAd
function CS.UnityEngine.ADInterstitialAd(autoReload)
end

---@return CS.UnityEngine.ADInterstitialAd
function CS.UnityEngine.ADInterstitialAd()
end

---@param value : CS.UnityEngine.InterstitialWasLoadedDelegate
function CS.UnityEngine.ADInterstitialAd.add_onInterstitialWasLoaded(value)
end

---@param value : CS.UnityEngine.InterstitialWasLoadedDelegate
function CS.UnityEngine.ADInterstitialAd.remove_onInterstitialWasLoaded(value)
end

function CS.UnityEngine.ADInterstitialAd:Show()
end

function CS.UnityEngine.ADInterstitialAd:ReloadAd()
end