---@class CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction : CS.System.MulticastDelegate
CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction
function CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction(object, method)
end

---@param providerId : CS.System.UInt32
---@param interleavedSampleFrames : CS.System.IntPtr
---@param sampleFrameCount : CS.System.UInt32
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction:Invoke(providerId, interleavedSampleFrames, sampleFrameCount)
end

---@param providerId : CS.System.UInt32
---@param interleavedSampleFrames : CS.System.IntPtr
---@param sampleFrameCount : CS.System.UInt32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction:BeginInvoke(providerId, interleavedSampleFrames, sampleFrameCount, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Audio.ConsumeSampleFramesNativeFunction:EndInvoke(result)
end