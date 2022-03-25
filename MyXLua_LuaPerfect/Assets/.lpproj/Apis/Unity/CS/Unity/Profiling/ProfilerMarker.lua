---@class CS.Unity.Profiling.ProfilerMarker : CS.System.ValueType
CS.Unity.Profiling.ProfilerMarker = {}

---@property readonly CS.Unity.Profiling.ProfilerMarker.Handle : CS.System.IntPtr
CS.Unity.Profiling.ProfilerMarker.Handle = nil

---@param name : CS.System.String
---@return CS.Unity.Profiling.ProfilerMarker
function CS.Unity.Profiling.ProfilerMarker(name)
end

---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@return CS.Unity.Profiling.ProfilerMarker
function CS.Unity.Profiling.ProfilerMarker(name, nameLen)
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@param name : CS.System.String
---@return CS.Unity.Profiling.ProfilerMarker
function CS.Unity.Profiling.ProfilerMarker(category, name)
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@param name : CS.System.CharPointer
---@param nameLen : CS.System.Int32
---@return CS.Unity.Profiling.ProfilerMarker
function CS.Unity.Profiling.ProfilerMarker(category, name, nameLen)
end

function CS.Unity.Profiling.ProfilerMarker:Begin()
end

---@param contextUnityObject : CS.UnityEngine.Object
function CS.Unity.Profiling.ProfilerMarker:Begin(contextUnityObject)
end

function CS.Unity.Profiling.ProfilerMarker:End()
end

---@return CS.Unity.Profiling.AutoScope
function CS.Unity.Profiling.ProfilerMarker:Auto()
end