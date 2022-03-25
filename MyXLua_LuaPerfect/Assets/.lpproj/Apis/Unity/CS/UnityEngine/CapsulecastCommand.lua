---@class CS.UnityEngine.CapsulecastCommand : CS.System.ValueType
CS.UnityEngine.CapsulecastCommand = {}

---@property readwrite CS.UnityEngine.CapsulecastCommand.point1 : CS.UnityEngine.Vector3
CS.UnityEngine.CapsulecastCommand.point1 = nil

---@property readwrite CS.UnityEngine.CapsulecastCommand.point2 : CS.UnityEngine.Vector3
CS.UnityEngine.CapsulecastCommand.point2 = nil

---@property readwrite CS.UnityEngine.CapsulecastCommand.radius : CS.System.Single
CS.UnityEngine.CapsulecastCommand.radius = nil

---@property readwrite CS.UnityEngine.CapsulecastCommand.direction : CS.UnityEngine.Vector3
CS.UnityEngine.CapsulecastCommand.direction = nil

---@property readwrite CS.UnityEngine.CapsulecastCommand.distance : CS.System.Single
CS.UnityEngine.CapsulecastCommand.distance = nil

---@property readwrite CS.UnityEngine.CapsulecastCommand.layerMask : CS.System.Int32
CS.UnityEngine.CapsulecastCommand.layerMask = nil

---@param p1 : CS.UnityEngine.Vector3
---@param p2 : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
---@param direction : CS.UnityEngine.Vector3
---@param distance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.CapsulecastCommand
function CS.UnityEngine.CapsulecastCommand(p1, p2, radius, direction, distance, layerMask)
end

---@param commands : CS.Unity.Collections.NativeArray
---@param results : CS.Unity.Collections.NativeArray
---@param minCommandsPerJob : CS.System.Int32
---@param dependsOn : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.CapsulecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)
end