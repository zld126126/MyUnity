---@class CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility : CS.System.Object
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility = {}

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryRender : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryRender = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryScripts : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryScripts = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryGUI : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryGUI = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryPhysics : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryPhysics = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAnimation : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAnimation = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAi : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAi = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAudio : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAudio = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVideo : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVideo = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryParticles : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryParticles = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLighting : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLighting = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLightning : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLightning = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryNetwork : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryNetwork = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLoading : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryLoading = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryOther : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryOther = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVr : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVr = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAllocation : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryAllocation = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryInternal : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryInternal = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryInput : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryInput = nil

---@field public CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVirtualTexturing : CS.System.UInt16
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CategoryVirtualTexturing = nil

---@property readonly CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.Timestamp : CS.System.Int64
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.Timestamp = nil

---@property readonly CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.TimestampToNanosecondsConversionRatio : CS.Unity.Profiling.LowLevel.Unsafe.TimestampConversionRatio
CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.TimestampToNanosecondsConversionRatio = nil

---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@return CS.System.UInt16
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.GetCategoryByName(name, nameLen)
end

---@param categoryId : CS.System.UInt16
---@return CS.Unity.Profiling.LowLevel.Unsafe.ProfilerCategoryDescription
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.GetCategoryDescription(categoryId)
end

---@param name : CS.System.String
---@param categoryId : CS.System.UInt16
---@param flags : CS.Unity.Profiling.LowLevel.MarkerFlags
---@param metadataCount : CS.System.Int32
---@return CS.System.IntPtr
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateMarker(name, categoryId, flags, metadataCount)
end

---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@param categoryId : CS.System.UInt16
---@param flags : CS.Unity.Profiling.LowLevel.MarkerFlags
---@param metadataCount : CS.System.Int32
---@return CS.System.IntPtr
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateMarker(name, nameLen, categoryId, flags, metadataCount)
end

---@param markerPtr : CS.System.IntPtr
---@param index : CS.System.Int32
---@param name : CS.System.String
---@param type : CS.System.Byte
---@param unit : CS.System.Byte
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.SetMarkerMetadata(markerPtr, index, name, type, unit)
end

---@param markerPtr : CS.System.IntPtr
---@param index : CS.System.Int32
---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@param type : CS.System.Byte
---@param unit : CS.System.Byte
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.SetMarkerMetadata(markerPtr, index, name, nameLen, type, unit)
end

---@param markerPtr : CS.System.IntPtr
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.BeginSample(markerPtr)
end

---@param markerPtr : CS.System.IntPtr
---@param metadataCount : CS.System.Int32
---@param metadata : CS.System.VoidPointer
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.BeginSampleWithMetadata(markerPtr, metadataCount, metadata)
end

---@param markerPtr : CS.System.IntPtr
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.EndSample(markerPtr)
end

---@param markerPtr : CS.System.IntPtr
---@param metadataCount : CS.System.Int32
---@param metadata : CS.System.VoidPointer
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.SingleSampleWithMetadata(markerPtr, metadataCount, metadata)
end

---@param counterPtr : CS.System.IntPtr
---@param name : CS.System.String
---@param categoryId : CS.System.UInt16
---@param flags : CS.Unity.Profiling.LowLevel.MarkerFlags
---@param dataType : CS.System.Byte
---@param dataUnit : CS.System.Byte
---@param dataSize : CS.System.Int32
---@param counterOptions : CS.Unity.Profiling.ProfilerCounterOptions
---@return CS.System.VoidPointer
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateCounterValue(counterPtr, name, categoryId, flags, dataType, dataUnit, dataSize, counterOptions)
end

---@param counterPtr : CS.System.IntPtr
---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@param categoryId : CS.System.UInt16
---@param flags : CS.Unity.Profiling.LowLevel.MarkerFlags
---@param dataType : CS.System.Byte
---@param dataUnit : CS.System.Byte
---@param dataSize : CS.System.Int32
---@param counterOptions : CS.Unity.Profiling.ProfilerCounterOptions
---@return CS.System.VoidPointer
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateCounterValue(counterPtr, name, nameLen, categoryId, flags, dataType, dataUnit, dataSize, counterOptions)
end

---@param counterValuePtr : CS.System.VoidPointer
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.FlushCounterValue(counterValuePtr)
end

---@param categoryId : CS.System.UInt16
---@return CS.System.UInt32
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateFlow(categoryId)
end

---@param flowId : CS.System.UInt32
---@param flowEventType : CS.Unity.Profiling.ProfilerFlowEventType
function CS.Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.FlowEvent(flowId, flowEventType)
end