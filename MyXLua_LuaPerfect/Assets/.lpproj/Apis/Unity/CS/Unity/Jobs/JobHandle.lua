---@class CS.Unity.Jobs.JobHandle : CS.System.ValueType
CS.Unity.Jobs.JobHandle = {}

---@property readonly CS.Unity.Jobs.JobHandle.IsCompleted : CS.System.Boolean
CS.Unity.Jobs.JobHandle.IsCompleted = nil

function CS.Unity.Jobs.JobHandle:Complete()
end

---@param job0 : CS.Unity.Jobs.JobHandle
---@param job1 : CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CompleteAll(job0, job1)
end

---@param job0 : CS.Unity.Jobs.JobHandle
---@param job1 : CS.Unity.Jobs.JobHandle
---@param job2 : CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CompleteAll(job0, job1, job2)
end

---@param jobs : CS.Unity.Collections.NativeArray
function CS.Unity.Jobs.JobHandle.CompleteAll(jobs)
end

function CS.Unity.Jobs.JobHandle.ScheduleBatchedJobs()
end

---@param job0 : CS.Unity.Jobs.JobHandle
---@param job1 : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CombineDependencies(job0, job1)
end

---@param job0 : CS.Unity.Jobs.JobHandle
---@param job1 : CS.Unity.Jobs.JobHandle
---@param job2 : CS.Unity.Jobs.JobHandle
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CombineDependencies(job0, job1, job2)
end

---@param jobs : CS.Unity.Collections.NativeArray
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CombineDependencies(jobs)
end

---@param jobs : CS.Unity.Collections.NativeSlice
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Jobs.JobHandle.CombineDependencies(jobs)
end

---@param jobHandle : CS.Unity.Jobs.JobHandle
---@param dependsOn : CS.Unity.Jobs.JobHandle
---@return CS.System.Boolean
function CS.Unity.Jobs.JobHandle.CheckFenceIsDependencyOrDidSyncFence(jobHandle, dependsOn)
end