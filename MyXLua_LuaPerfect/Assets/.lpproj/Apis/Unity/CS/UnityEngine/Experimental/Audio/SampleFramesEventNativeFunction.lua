---@class CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction : CS.System.MulticastDelegate
CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction
function CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction(object, method)
end

---@param userData : CS.System.IntPtr
---@param providerId : CS.System.UInt32
---@param sampleFrameCount : CS.System.UInt32
function CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction:Invoke(userData, providerId, sampleFrameCount)
end

---@param userData : CS.System.IntPtr
---@param providerId : CS.System.UInt32
---@param sampleFrameCount : CS.System.UInt32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction:BeginInvoke(userData, providerId, sampleFrameCount, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Experimental.Audio.SampleFramesEventNativeFunction:EndInvoke(result)
end