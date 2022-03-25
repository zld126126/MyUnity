---@class CS.UnityEngine.SpherecastCommand : CS.System.ValueType
CS.UnityEngine.SpherecastCommand = {}

---@property readwrite CS.UnityEngine.SpherecastCommand.origin : CS.UnityEngine.Vector3
CS.UnityEngine.SpherecastCommand.origin = nil

---@property readwrite CS.UnityEngine.SpherecastCommand.radius : CS.System.Single
CS.UnityEngine.SpherecastCommand.radius = nil

---@property readwrite CS.UnityEngine.SpherecastCommand.direction : CS.UnityEngine.Vector3
CS.UnityEngine.SpherecastCommand.direction = nil

---@property readwrite CS.UnityEngine.SpherecastCommand.distance : CS.System.Single
CS.UnityEngine.SpherecastCommand.distance = nil

---@property readwrite CS.UnityEngine.SpherecastCommand.layerMask : CS.System.Int32
CS.UnityEngine.SpherecastCommand.layerMask = nil

---@param origin : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param distance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.SpherecastCommand
function CS.UnityEngine.SpherecastCommand(origin, radius, direction, distance, layerMask)
end

---@param commands : CS.Unity.Collections.NativeArray
---@param results : CS.Unity.Collections.NativeArray
---@param minCommandsPerJob : CS.System.Int32
---@param dependsOn : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.SpherecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)
end