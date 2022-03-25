---@class CS.UnityEngine.SystemClock : CS.System.Object
CS.UnityEngine.SystemClock = {}

---@property readonly CS.UnityEngine.SystemClock.now : CS.System.DateTime
CS.UnityEngine.SystemClock.now = nil

---@return CS.UnityEngine.SystemClock
function CS.UnityEngine.SystemClock()
end

---@param date : CS.System.DateTime
---@return CS.System.Int64
function CS.UnityEngine.SystemClock.ToUnixTimeMilliseconds(date)
end

---@param date : CS.System.DateTime
---@return CS.System.Int64
function CS.UnityEngine.SystemClock.ToUnixTimeSeconds(date)
end