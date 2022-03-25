---@class CS.UnityEngine.BannerWasLoadedDelegate : CS.System.MulticastDelegate
CS.UnityEngine.BannerWasLoadedDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.BannerWasLoadedDelegate
function CS.UnityEngine.BannerWasLoadedDelegate(object, method)
end

function CS.UnityEngine.BannerWasLoadedDelegate:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.BannerWasLoadedDelegate:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.BannerWasLoadedDelegate:EndInvoke(result)
end