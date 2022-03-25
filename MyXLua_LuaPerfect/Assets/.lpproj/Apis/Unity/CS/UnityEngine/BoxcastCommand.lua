---@class CS.UnityEngine.BoxcastCommand : CS.System.ValueType
CS.UnityEngine.BoxcastCommand = {}

---@property readwrite CS.UnityEngine.BoxcastCommand.center : CS.UnityEngine.Vector3
CS.UnityEngine.BoxcastCommand.center = nil

---@property readwrite CS.UnityEngine.BoxcastCommand.halfExtents : CS.UnityEngine.Vector3
CS.UnityEngine.BoxcastCommand.halfExtents = nil

---@property readwrite CS.UnityEngine.BoxcastCommand.orientation : CS.UnityEngine.Quaternion
CS.UnityEngine.BoxcastCommand.orientation = nil

---@property readwrite CS.UnityEngine.BoxcastCommand.direction : CS.UnityEngine.Vector3
CS.UnityEngine.BoxcastCommand.direction = nil

---@property readwrite CS.UnityEngine.BoxcastCommand.distance : CS.System.Single
CS.UnityEngine.BoxcastCommand.distance = nil

---@property readwrite CS.UnityEngine.BoxcastCommand.layerMask : CS.System.Int32
CS.UnityEngine.BoxcastCommand.layerMask = nil

---@param center : CS.UnityEngine.Vector3
---@param halfExtents : CS.UnityEngine.Vector3
---@param orientation : CS.UnityEngine.Quaternion
---@param direction : CS.UnityEngine.Vector3
---@param distance : CS.System.Single
---@param layerMask : CS.System.Int32
---@return CS.UnityEngine.BoxcastCommand
function CS.UnityEngine.BoxcastCommand(center, halfExtents, orientation, direction, distance, layerMask)
end

---@param commands : CS.Unity.Collections.NativeArray
---@param results : CS.Unity.Collections.NativeArray
---@param minCommandsPerJob : CS.System.Int32
---@param dependsOn : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.UnityEngine.BoxcastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn)
end