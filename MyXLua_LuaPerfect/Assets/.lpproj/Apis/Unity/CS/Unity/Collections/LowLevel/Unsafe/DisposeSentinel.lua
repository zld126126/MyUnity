---@class CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel : CS.System.Object
CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel = {}

---@param safety : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param sentinel : CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel
function CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Dispose(safety, sentinel)
end

---@param safety : CS.Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param sentinel : CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@param callSiteStackDepth : CS.System.Int32
---@param allocator : CS.Unity.Collections.Allocator
function CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Create(safety, sentinel, callSiteStackDepth, allocator)
end

---@param sentinel : CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel
function CS.Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Clear(sentinel)
end