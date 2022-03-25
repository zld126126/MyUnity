---@class CS.UnityEngine.ILogHandler
CS.UnityEngine.ILogHandler = {}

---@param logType : CS.UnityEngine.LogType
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.ILogHandler:LogFormat(logType, context, format, args)
end

---@param exception : CS.System.Exception
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogHandler:LogException(exception, context)
end