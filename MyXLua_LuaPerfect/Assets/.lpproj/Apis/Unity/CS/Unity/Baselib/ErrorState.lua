---@class CS.Unity.Baselib.ErrorState : CS.System.ValueType
CS.Unity.Baselib.ErrorState = {}

---@property readonly CS.Unity.Baselib.ErrorState.ErrorCode : CS.Unity.Baselib.LowLevel.Baselib_ErrorCode
CS.Unity.Baselib.ErrorState.ErrorCode = nil

---@property readonly CS.Unity.Baselib.ErrorState.NativeErrorStatePtr : CS.Baselib_ErrorStatePointer
CS.Unity.Baselib.ErrorState.NativeErrorStatePtr = nil

function CS.Unity.Baselib.ErrorState:ThrowIfFailed()
end

---@param verbosity : CS.Unity.Baselib.LowLevel.Baselib_ErrorState_ExplainVerbosity
---@return CS.System.String
function CS.Unity.Baselib.ErrorState:Explain(verbosity)
end