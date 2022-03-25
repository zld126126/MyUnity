---@class CS.UnityEngine.RaycastCommand : CS.System.ValueType
CS.UnityEngine.RaycastCommand = {}

---@property readwrite CS.UnityEngine.RaycastCommand.from : CS.UnityEngine.Vector3
CS.UnityEngine.RaycastCommand.from = nil

---@property readwrite CS.UnityEngine.RaycastCommand.direction : CS.UnityEngine.Vector3
CS.UnityEngine.RaycastCommand.direction = nil

---@property readwrite CS.UnityEngine.RaycastCommand.distance : CS.System.Single
CS.UnityEngine.RaycastCommand.distance = nil

---@property readwrite CS.UnityEngine.RaycastCommand.layerMask : CS.System.Int32
CS.UnityEngine.RaycastCommand.layerMask = nil

---@property readwrite CS.UnityEngine.RaycastCommand.maxHits : CS.System.Int32
CS.UnityEngine.RaycastCommand.maxHits = nil

---@param from : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
---@param distance : CS.System.Single
---@param layerMask : CS.System.Int32
---@param maxHits : CS.System.Int32
---@return CS.UnityEngine.RaycastCommand
function CS.UnityEngine.RaycastCommand(from, direction, distance, layerMask, maxHits)
end

---@param commands : CS.Unity.Collections.NativeArray
---@param results : CS.Unity.Collections.NativeArray
---@param minCommandsPerJob : CS.System.Int32
---@param dependsOn : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.RaycastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)
end