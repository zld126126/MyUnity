---@class CS.UnityEngine.FrameTimingManager : CS.System.Object
CS.UnityEngine.FrameTimingManager = {}

function CS.UnityEngine.FrameTimingManager.CaptureFrameTimings()
end

---@param numFrames : CS.System.UInt32
---@param timings : CS.UnityEngine.FrameTiming[]
---@return CS.System.UInt32
function CS.UnityEngine.FrameTimingManager.GetLatestTimings(numFrames, timings)
end

---@return CS.System.Single
function CS.UnityEngine.FrameTimingManager.GetVSyncsPerSecond()
end

---@return CS.System.UInt64
function CS.UnityEngine.FrameTimingManager.GetGpuTimerFrequency()
end

---@return CS.System.UInt64
function CS.UnityEngine.FrameTimingManager.GetCpuTimerFrequency()
end