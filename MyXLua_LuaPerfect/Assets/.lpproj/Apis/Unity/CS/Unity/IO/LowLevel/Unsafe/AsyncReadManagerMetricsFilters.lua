---@class CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters : CS.System.Object
CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters = {}

---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters()
end

---@param typeID : CS.System.UInt64
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(typeID)
end

---@param state : CS.Unity.IO.LowLevel.Unsafe.ProcessingState
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(state)
end

---@param readType : CS.Unity.IO.LowLevel.Unsafe.FileReadType
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(readType)
end

---@param priorityLevel : CS.Unity.IO.LowLevel.Unsafe.Priority
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(priorityLevel)
end

---@param subsystem : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(subsystem)
end

---@param typeIDs : CS.System.UInt64[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(typeIDs)
end

---@param states : CS.Unity.IO.LowLevel.Unsafe.ProcessingState[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(states)
end

---@param readTypes : CS.Unity.IO.LowLevel.Unsafe.FileReadType[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(readTypes)
end

---@param priorityLevels : CS.Unity.IO.LowLevel.Unsafe.Priority[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(priorityLevels)
end

---@param subsystems : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(subsystems)
end

---@param typeIDs : CS.System.UInt64[]
---@param states : CS.Unity.IO.LowLevel.Unsafe.ProcessingState[]
---@param readTypes : CS.Unity.IO.LowLevel.Unsafe.FileReadType[]
---@param priorityLevels : CS.Unity.IO.LowLevel.Unsafe.Priority[]
---@param subsystems : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem[]
---@return CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters(typeIDs, states, readTypes, priorityLevels, subsystems)
end

---@param _typeIDs : CS.System.UInt64[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetTypeIDFilter(_typeIDs)
end

---@param _states : CS.Unity.IO.LowLevel.Unsafe.ProcessingState[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetStateFilter(_states)
end

---@param _readTypes : CS.Unity.IO.LowLevel.Unsafe.FileReadType[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetReadTypeFilter(_readTypes)
end

---@param _priorityLevels : CS.Unity.IO.LowLevel.Unsafe.Priority[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetPriorityFilter(_priorityLevels)
end

---@param _subsystems : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem[]
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetSubsystemFilter(_subsystems)
end

---@param _typeID : CS.System.UInt64
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetTypeIDFilter(_typeID)
end

---@param _state : CS.Unity.IO.LowLevel.Unsafe.ProcessingState
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetStateFilter(_state)
end

---@param _readType : CS.Unity.IO.LowLevel.Unsafe.FileReadType
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetReadTypeFilter(_readType)
end

---@param _priorityLevel : CS.Unity.IO.LowLevel.Unsafe.Priority
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetPriorityFilter(_priorityLevel)
end

---@param _subsystem : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:SetSubsystemFilter(_subsystem)
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:RemoveTypeIDFilter()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:RemoveStateFilter()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:RemoveReadTypeFilter()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:RemovePriorityFilter()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:RemoveSubsystemFilter()
end

function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters:ClearFilters()
end