---@class CS.UnityEngine.WaitForSecondsRealtime : CS.UnityEngine.CustomYieldInstruction
CS.UnityEngine.WaitForSecondsRealtime = {}

---@property readwrite CS.UnityEngine.WaitForSecondsRealtime.waitTime : CS.System.Single
CS.UnityEngine.WaitForSecondsRealtime.waitTime = nil

---@property readonly CS.UnityEngine.WaitForSecondsRealtime.keepWaiting : CS.System.Boolean
CS.UnityEngine.WaitForSecondsRealtime.keepWaiting = nil

---@param time : CS.System.Single
---@return CS.UnityEngine.WaitForSecondsRealtime
function CS.UnityEngine.WaitForSecondsRealtime(time)
end

function CS.UnityEngine.WaitForSecondsRealtime:Reset()
end