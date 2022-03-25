---@class CS.UnityEngine.DebugLogHandler : CS.System.Object
CS.UnityEngine.DebugLogHandler = {}

---@return CS.UnityEngine.DebugLogHandler
function CS.UnityEngine.DebugLogHandler()
end

---@param logType : CS.UnityEngine.LogType
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.DebugLogHandler:LogFormat(logType, context, format, args)
end

---@param logType : CS.UnityEngine.LogType
---@param logOptions : CS.UnityEngine.LogOption
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.DebugLogHandler:LogFormat(logType, logOptions, context, format, args)
end

---@param exception : CS.System.Exception
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.DebugLogHandler:LogException(exception, context)
end