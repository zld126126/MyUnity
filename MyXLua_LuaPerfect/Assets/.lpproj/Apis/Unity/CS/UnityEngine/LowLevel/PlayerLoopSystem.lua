---@class CS.UnityEngine.LowLevel.PlayerLoopSystem : CS.System.ValueType
CS.UnityEngine.LowLevel.PlayerLoopSystem = {}

---@field public CS.UnityEngine.LowLevel.PlayerLoopSystem.type : CS.System.Type
CS.UnityEngine.LowLevel.PlayerLoopSystem.type = nil

---@field public CS.UnityEngine.LowLevel.PlayerLoopSystem.subSystemList : CS.UnityEngine.LowLevel.PlayerLoopSystem[]
CS.UnityEngine.LowLevel.PlayerLoopSystem.subSystemList = nil

---@field public CS.UnityEngine.LowLevel.PlayerLoopSystem.updateDelegate : CS.UnityEngine.LowLevel.UpdateFunction
CS.UnityEngine.LowLevel.PlayerLoopSystem.updateDelegate = nil

---@field public CS.UnityEngine.LowLevel.PlayerLoopSystem.updateFunction : CS.System.IntPtr
CS.UnityEngine.LowLevel.PlayerLoopSystem.updateFunction = nil

---@field public CS.UnityEngine.LowLevel.PlayerLoopSystem.loopConditionFunction : CS.System.IntPtr
CS.UnityEngine.LowLevel.PlayerLoopSystem.loopConditionFunction = nil

---@return CS.System.String
function CS.UnityEngine.LowLevel.PlayerLoopSystem:ToString()
end