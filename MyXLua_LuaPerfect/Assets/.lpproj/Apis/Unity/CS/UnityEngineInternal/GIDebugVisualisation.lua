---@class CS.UnityEngineInternal.GIDebugVisualisation : CS.System.Object
CS.UnityEngineInternal.GIDebugVisualisation = {}

---@property readonly CS.UnityEngineInternal.GIDebugVisualisation.cycleMode : CS.System.Boolean
CS.UnityEngineInternal.GIDebugVisualisation.cycleMode = nil

---@property readonly CS.UnityEngineInternal.GIDebugVisualisation.pauseCycleMode : CS.System.Boolean
CS.UnityEngineInternal.GIDebugVisualisation.pauseCycleMode = nil

---@property readwrite CS.UnityEngineInternal.GIDebugVisualisation.texType : CS.UnityEngineInternal.GITextureType
CS.UnityEngineInternal.GIDebugVisualisation.texType = nil

function CS.UnityEngineInternal.GIDebugVisualisation.ResetRuntimeInputTextures()
end

function CS.UnityEngineInternal.GIDebugVisualisation.PlayCycleMode()
end

function CS.UnityEngineInternal.GIDebugVisualisation.PauseCycleMode()
end

function CS.UnityEngineInternal.GIDebugVisualisation.StopCycleMode()
end

---@param skip : CS.System.Int32
function CS.UnityEngineInternal.GIDebugVisualisation.CycleSkipSystems(skip)
end

---@param skip : CS.System.Int32
function CS.UnityEngineInternal.GIDebugVisualisation.CycleSkipInstances(skip)
end