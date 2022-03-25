---@module CS.Unity.Burst.LowLevel
CS.Unity.Burst.LowLevel = {}

---@class CS.Unity.Burst.LowLevel.BurstCompilerService : CS.System.Object
CS.Unity.Burst.LowLevel.BurstCompilerService = {}

---@property readonly CS.Unity.Burst.LowLevel.BurstCompilerService.IsInitialized : CS.System.Boolean
CS.Unity.Burst.LowLevel.BurstCompilerService.IsInitialized = nil

---@param m : CS.System.Reflection.MethodInfo
---@param compilerOptions : CS.System.String
---@return CS.System.String
function CS.Unity.Burst.LowLevel.BurstCompilerService.GetDisassembly(m, compilerOptions)
end

---@param delegateMethod : CS.System.Object
---@param compilerOptions : CS.System.String
---@return CS.System.Int32
function CS.Unity.Burst.LowLevel.BurstCompilerService.CompileAsyncDelegateMethod(delegateMethod, compilerOptions)
end

---@param userID : CS.System.Int32
---@return CS.System.VoidPointer
function CS.Unity.Burst.LowLevel.BurstCompilerService.GetAsyncCompiledAsyncDelegateMethod(userID)
end

---@param key : CS.UnityEngine.Hash128
---@param size_of : CS.System.UInt32
---@param alignment : CS.System.UInt32
---@return CS.System.VoidPointer
function CS.Unity.Burst.LowLevel.BurstCompilerService.GetOrCreateSharedMemory(key, size_of, alignment)
end

---@param method : CS.System.Reflection.MethodInfo
---@return CS.System.String
function CS.Unity.Burst.LowLevel.BurstCompilerService.GetMethodSignature(method)
end

---@param environment : CS.System.UInt32
function CS.Unity.Burst.LowLevel.BurstCompilerService.SetCurrentExecutionMode(environment)
end

---@return CS.System.UInt32
function CS.Unity.Burst.LowLevel.BurstCompilerService.GetCurrentExecutionMode()
end

---@param userData : CS.System.VoidPointer
---@param logType : CS.Unity.Burst.LowLevel.BurstLogType
---@param message : CS.System.BytePointer
---@param filename : CS.System.BytePointer
---@param lineNumber : CS.System.Int32
function CS.Unity.Burst.LowLevel.BurstCompilerService.Log(userData, logType, message, filename, lineNumber)
end

---@param fullPathToLibBurstGenerated : CS.System.String
---@return CS.System.Boolean
function CS.Unity.Burst.LowLevel.BurstCompilerService.LoadBurstLibrary(fullPathToLibBurstGenerated)
end

---@param folderRuntime : CS.System.String
---@param extractCompilerFlags : CS.Unity.Burst.LowLevel.ExtractCompilerFlags
function CS.Unity.Burst.LowLevel.BurstCompilerService.Initialize(folderRuntime, extractCompilerFlags)
end