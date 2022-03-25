---@class CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics : CS.System.Object
CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics = {}

---@return CS.System.Boolean
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.IsEnabled()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.ClearCompletedMetrics()
end

---@param filters : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetMetrics(filters, flags)
end

---@param outMetrics : CS.System.Collections.Generic.List
---@param filters : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetMetrics(outMetrics, filters, flags)
end

---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetMetrics(flags)
end

---@param outMetrics : CS.System.Collections.Generic.List
---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetMetrics(outMetrics, flags)
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.StartCollectingMetrics()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.StopCollectingMetrics()
end

---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetCurrentSummaryMetrics(flags)
end

---@param metricsFilters : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@param flags : CS.Unity.IO.LowLevel.Unsafe.Flags
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetCurrentSummaryMetrics(metricsFilters, flags)
end

---@param metrics : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetSummaryOfMetrics(metrics)
end

---@param metrics : CS.System.Collections.Generic.List
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetSummaryOfMetrics(metrics)
end

---@param metrics : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
---@param metricsFilters : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetSummaryOfMetrics(metrics, metricsFilters)
end

---@param metrics : CS.System.Collections.Generic.List
---@param metricsFilters : CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetSummaryOfMetrics(metrics, metricsFilters)
end

---@param emptyAfterRead : CS.System.Boolean
---@return CS.System.UInt64
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetTotalSizeOfNonASRMReadsBytes(emptyAfterRead)
end