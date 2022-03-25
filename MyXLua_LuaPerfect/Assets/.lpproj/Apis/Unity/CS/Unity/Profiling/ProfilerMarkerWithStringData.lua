---@class CS.Unity.Profiling.ProfilerMarkerWithStringData : CS.System.ValueType
CS.Unity.Profiling.ProfilerMarkerWithStringData = {}

---@param name : CS.System.String
---@param parameterName : CS.System.String
---@return CS.Unity.Profiling.ProfilerMarkerWithStringData
function CS.Unity.Profiling.ProfilerMarkerWithStringData.Create(name, parameterName)
end

---@param enabled : CS.System.Boolean
---@param parameterValue : CS.System.Func
---@return CS.Unity.Profiling.AutoScope
function CS.Unity.Profiling.ProfilerMarkerWithStringData:Auto(enabled, parameterValue)
end

---@param value : CS.System.String
---@return CS.Unity.Profiling.AutoScope
function CS.Unity.Profiling.ProfilerMarkerWithStringData:Auto(value)
end