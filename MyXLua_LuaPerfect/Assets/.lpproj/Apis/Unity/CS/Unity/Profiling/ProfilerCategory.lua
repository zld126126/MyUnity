---@module CS.Unity.Profiling
CS.Unity.Profiling = {}

---@class CS.Unity.Profiling.ProfilerCategory : CS.System.ValueType
CS.Unity.Profiling.ProfilerCategory = {}

---@property readonly CS.Unity.Profiling.ProfilerCategory.Name : CS.System.String
CS.Unity.Profiling.ProfilerCategory.Name = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Color : CS.UnityEngine.Color32
CS.Unity.Profiling.ProfilerCategory.Color = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Render : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Render = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Scripts : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Scripts = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Gui : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Gui = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Physics : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Physics = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Animation : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Animation = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Ai : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Ai = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Audio : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Audio = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Video : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Video = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Particles : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Particles = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Lighting : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Lighting = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Network : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Network = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Loading : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Loading = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Vr : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Vr = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Input : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Input = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Memory : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Memory = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.VirtualTexturing : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.VirtualTexturing = nil

---@property readonly CS.Unity.Profiling.ProfilerCategory.Internal : CS.Unity.Profiling.ProfilerCategory
CS.Unity.Profiling.ProfilerCategory.Internal = nil

---@param categoryName : CS.System.String
---@return CS.Unity.Profiling.ProfilerCategory
function CS.Unity.Profiling.ProfilerCategory(categoryName)
end

---@return CS.System.String
function CS.Unity.Profiling.ProfilerCategory:ToString()
end

---@param category : CS.Unity.Profiling.ProfilerCategory
---@return CS.System.UInt16
function CS.Unity.Profiling.ProfilerCategory.op_Implicit(category)
end