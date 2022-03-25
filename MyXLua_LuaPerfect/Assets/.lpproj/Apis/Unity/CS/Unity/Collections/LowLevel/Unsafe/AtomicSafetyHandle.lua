---@class CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle : CS.System.ValueType
CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle = {}

---@return CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.Create()
end

---@return CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempUnsafePtrSliceHandle()
end

---@return CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempMemoryHandle()
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.IsTempMemoryHandle(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.Release(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.IsDefaultValue(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.PrepareUndisposable(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.UseSecondaryVersion(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowWriting : CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowSecondaryVersionWriting(handle, allowWriting)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param value : CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetBumpSecondaryVersionOnScheduleWrite(handle, value)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowReadWriteAccess : CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowReadOrWriteAccess(handle, allowReadWriteAccess)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetAllowReadOrWriteAccess(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckWriteAndBumpSecondaryVersion(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompleted(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndRelease(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndDisableReadWrite(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckDeallocateAndThrow(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckGetSecondaryDataPointerAndThrow(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param maxCount : CS.System.Int32
---@param output : CS.System.IntPtr
---@return CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderArray(handle, maxCount, output)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.Unity.Jobs.JobHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetWriter(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckReadAndThrow(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckWriteAndThrow(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.ValidateNonDefaultHandle(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckExistsAndThrow(handle)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param readerIndex : CS.System.Int32
---@return CS.System.String
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderName(handle, readerIndex)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return CS.System.String
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetWriterName(handle)
end

---@param ownerTypeNameBytes : CS.System.BytePointer
---@param byteCount : CS.System.Int32
---@return CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.NewStaticSafetyId(ownerTypeNameBytes, byteCount)
end

---@param staticSafetyId : CS.System.Int32
---@param errorType : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyErrorType
---@param messageBytes : CS.System.BytePointer
---@param byteCount : CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetCustomErrorMessage(staticSafetyId, errorType, messageBytes, byteCount)
end

---@param handle : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param staticSafetyId : CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetStaticSafetyId(handle, staticSafetyId)
end