---@class CS.Unity.IO.LowLevel.Unsafe.ReadHandle : CS.System.ValueType
CS.Unity.IO.LowLevel.Unsafe.ReadHandle = {}

---@property readonly CS.Unity.IO.LowLevel.Unsafe.ReadHandle.JobHandle : CS.Unity.Jobs.JobHandle
CS.Unity.IO.LowLevel.Unsafe.ReadHandle.JobHandle = nil

---@property readonly CS.Unity.IO.LowLevel.Unsafe.ReadHandle.Status : CS.Unity.IO.LowLevel.Unsafe.ReadStatus
CS.Unity.IO.LowLevel.Unsafe.ReadHandle.Status = nil

---@return CS.System.Boolean
function CS.Unity.IO.LowLevel.Unsafe.ReadHandle:IsValid()
end

function CS.Unity.IO.LowLevel.Unsafe.ReadHandle:Dispose()
end