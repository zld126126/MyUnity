---@class CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters : CS.System.ValueType
CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters = {}

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.Dependency : CS.Unity.Jobs.JobHandle
CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.Dependency = nil

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.ScheduleMode : CS.System.Int32
CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.ScheduleMode = nil

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.ReflectionData : CS.System.IntPtr
CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.ReflectionData = nil

---@field public CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.JobDataPtr : CS.System.IntPtr
CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters.JobDataPtr = nil

---@param i_jobData : CS.System.VoidPointer
---@param i_reflectionData : CS.System.IntPtr
---@param i_dependency : CS.Unity.Jobs.JobHandle
---@param i_scheduleMode : CS.Unity.Jobs.LowLevel.Unsafe.ScheduleMode
---@return CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters
function CS.Unity.Jobs.LowLevel.Unsafe.JobScheduleParameters(i_jobData, i_reflectionData, i_dependency, i_scheduleMode)
end