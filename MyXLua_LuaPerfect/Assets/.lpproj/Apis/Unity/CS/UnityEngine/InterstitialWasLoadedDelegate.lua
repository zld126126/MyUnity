---@class CS.UnityEngine.InterstitialWasLoadedDelegate : CS.System.MulticastDelegate
CS.UnityEngine.InterstitialWasLoadedDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.InterstitialWasLoadedDelegate
function CS.UnityEngine.InterstitialWasLoadedDelegate(object, method)
end

function CS.UnityEngine.InterstitialWasLoadedDelegate:Invoke()
end

---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.InterstitialWasLoadedDelegate:BeginInvoke(callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.InterstitialWasLoadedDelegate:EndInvoke(result)
end