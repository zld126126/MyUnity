---@class CS.UnityEngine.Experimental.Audio.SampleFramesHandler : CS.System.MulticastDelegate
CS.UnityEngine.Experimental.Audio.SampleFramesHandler = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Experimental.Audio.SampleFramesHandler
function CS.UnityEngine.Experimental.Audio.SampleFramesHandler(object, method)
end

---@param provider : CS.UnityEngine.Experimental.Audio.AudioSampleProvider
---@param sampleFrameCount : CS.System.UInt32
function CS.UnityEngine.Experimental.Audio.SampleFramesHandler:Invoke(provider, sampleFrameCount)
end

---@param provider : CS.UnityEngine.Experimental.Audio.AudioSampleProvider
---@param sampleFrameCount : CS.System.UInt32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Experimental.Audio.SampleFramesHandler:BeginInvoke(provider, sampleFrameCount, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Experimental.Audio.SampleFramesHandler:EndInvoke(result)
end