---@class CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility : CS.System.Object
CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility = {}

---@param field : CS.System.Reflection.FieldInfo
---@return CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.GetFieldOffset(field)
end

---@param target : CS.System.Object
---@param gcHandle : CS.System.UInt64
---@return CS.System.VoidPointer
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCObjectAndGetAddress(target, gcHandle)
end

---@param target : CS.System.Array
---@param gcHandle : CS.System.UInt64
---@return CS.System.VoidPointer
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCArrayAndGetDataAddress(target, gcHandle)
end

---@param gcHandle : CS.System.UInt64
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.ReleaseGCObject(gcHandle)
end

---@param target : CS.System.Object
---@param dstPtr : CS.System.VoidPointer
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.CopyObjectAddressToPtr(target, dstPtr)
end

---@param size : CS.System.Int64
---@param alignment : CS.System.Int32
---@param allocator : CS.Unity.Collections.Allocator
---@return CS.System.VoidPointer
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Malloc(size, alignment, allocator)
end

---@param memory : CS.System.VoidPointer
---@param allocator : CS.Unity.Collections.Allocator
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Free(memory, allocator)
end

---@param allocator : CS.Unity.Collections.Allocator
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsValidAllocator(allocator)
end

---@param destination : CS.System.VoidPointer
---@param source : CS.System.VoidPointer
---@param size : CS.System.Int64
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpy(destination, source, size)
end

---@param destination : CS.System.VoidPointer
---@param source : CS.System.VoidPointer
---@param size : CS.System.Int32
---@param count : CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpyReplicate(destination, source, size, count)
end

---@param destination : CS.System.VoidPointer
---@param destinationStride : CS.System.Int32
---@param source : CS.System.VoidPointer
---@param sourceStride : CS.System.Int32
---@param elementSize : CS.System.Int32
---@param count : CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpyStride(destination, destinationStride, source, sourceStride, elementSize, count)
end

---@param destination : CS.System.VoidPointer
---@param source : CS.System.VoidPointer
---@param size : CS.System.Int64
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemMove(destination, source, size)
end

---@param destination : CS.System.VoidPointer
---@param value : CS.System.Byte
---@param size : CS.System.Int64
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemSet(destination, value, size)
end

---@param destination : CS.System.VoidPointer
---@param size : CS.System.Int64
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemClear(destination, size)
end

---@param ptr1 : CS.System.VoidPointer
---@param ptr2 : CS.System.VoidPointer
---@param size : CS.System.Int64
---@return CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCmp(ptr1, ptr2, size)
end

---@param type : CS.System.Type
---@return CS.System.Int32
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.SizeOf(type)
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsBlittable(type)
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsUnmanaged(type)
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsValidNativeContainerElementType(type)
end