---@class CS.Unity.Profiling.ProfilerRecorder : CS.System.ValueType
CS.Unity.Profiling.ProfilerRecorder = {}

---@property readonly CS.Unity.Profiling.ProfilerRecorder.Valid : CS.System.Boolean
CS.Unity.Profiling.ProfilerRecorder.Valid = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.DataType : CS.Unity.Profiling.LowLevel.ProfilerMarkerDataType
CS.Unity.Profiling.ProfilerRecorder.DataType = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.UnitType : CS.Unity.Profiling.ProfilerMarkerDataUnit
CS.Unity.Profiling.ProfilerRecorder.UnitType = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.CurrentValue : CS.System.Int64
CS.Unity.Profiling.ProfilerRecorder.CurrentValue = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.CurrentValueAsDouble : CS.System.Double
CS.Unity.Profiling.ProfilerRecorder.CurrentValueAsDouble = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.LastValue : CS.System.Int64
CS.Unity.Profiling.ProfilerRecorder.LastValue = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.LastValueAsDouble : CS.System.Double
CS.Unity.Profiling.ProfilerRecorder.LastValueAsDouble = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.Capacity : CS.System.Int32
CS.Unity.Profiling.ProfilerRecorder.Capacity = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.Count : CS.System.Int32
CS.Unity.Profiling.ProfilerRecorder.Count = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.IsRunning : CS.System.Boolean
CS.Unity.Profiling.ProfilerRecorder.IsRunning = nil

---@property readonly CS.Unity.Profiling.ProfilerRecorder.WrappedAround : CS.System.Boolean
CS.Unity.Profiling.ProfilerRecorder.WrappedAround = nil

---@param statName : CS.System.String
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(statName, capacity, options)
end

---@param categoryName : CS.System.String
---@param statName : CS.System.String
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(categoryName, statName, capacity, options)
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@param statName : CS.System.String
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(category, statName, capacity, options)
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@param statName : CS.System.CharPointer
---@param statNameLen : CS.System.Int32
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(category, statName, statNameLen, capacity, options)
end

---@param marker : CS.Unity.Profiling.ProfilerMarker
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(marker, capacity, options)
end

---@param statHandle : CS.Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderHandle
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder(statHandle, capacity, options)
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@param statName : CS.System.String
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder.StartNew(category, statName, capacity, options)
end

---@param marker : CS.Unity.Profiling.ProfilerMarker
---@param capacity : CS.System.Int32
---@param options : CS.Unity.Profiling.ProfilerRecorderOptions
---@return CS.Unity.Profiling.ProfilerRecorder
function CS.Unity.Profiling.ProfilerRecorder.StartNew(marker, capacity, options)
end

function CS.Unity.Profiling.ProfilerRecorder:Start()
end

function CS.Unity.Profiling.ProfilerRecorder:Stop()
end

function CS.Unity.Profiling.ProfilerRecorder:Reset()
end

---@param index : CS.System.Int32
---@return CS.Unity.Profiling.ProfilerRecorderSample
function CS.Unity.Profiling.ProfilerRecorder:GetSample(index)
end

---@param outSamples : CS.System.Collections.Generic.List
---@param reset : CS.System.Boolean
function CS.Unity.Profiling.ProfilerRecorder:CopyTo(outSamples, reset)
end

---@param dest : CS.Unity.Profiling.ProfilerRecorderSamplePointer
---@param destSize : CS.System.Int32
---@param reset : CS.System.Boolean
---@return CS.System.Int32
function CS.Unity.Profiling.ProfilerRecorder:CopyTo(dest, destSize, reset)
end

---@return CS.Unity.Profiling.ProfilerRecorderSample[]
function CS.Unity.Profiling.ProfilerRecorder:ToArray()
end

function CS.Unity.Profiling.ProfilerRecorder:Dispose()
end