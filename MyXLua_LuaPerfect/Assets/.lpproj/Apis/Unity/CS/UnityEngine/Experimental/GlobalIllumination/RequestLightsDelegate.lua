---@class CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate
function CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate(object, method)
end

---@param requests : CS.UnityEngine.Light[]
---@param lightsOutput : CS.Unity.Collections.NativeArray
function CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate:Invoke(requests, lightsOutput)
end

---@param requests : CS.UnityEngine.Light[]
---@param lightsOutput : CS.Unity.Collections.NativeArray
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate:BeginInvoke(requests, lightsOutput, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Experimental.GlobalIllumination.RequestLightsDelegate:EndInvoke(result)
end