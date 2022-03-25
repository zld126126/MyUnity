---@class CS.UnityEngine.ILogger
CS.UnityEngine.ILogger = {}

---@property readwrite CS.UnityEngine.ILogger.logHandler : CS.UnityEngine.ILogHandler
CS.UnityEngine.ILogger.logHandler = nil

---@property readwrite CS.UnityEngine.ILogger.logEnabled : CS.System.Boolean
CS.UnityEngine.ILogger.logEnabled = nil

---@property readwrite CS.UnityEngine.ILogger.filterLogType : CS.UnityEngine.LogType
CS.UnityEngine.ILogger.filterLogType = nil

---@param logType : CS.UnityEngine.LogType
---@return CS.System.Boolean
function CS.UnityEngine.ILogger:IsLogTypeAllowed(logType)
end

---@param logType : CS.UnityEngine.LogType
---@param message : CS.System.Object
function CS.UnityEngine.ILogger:Log(logType, message)
end

---@param logType : CS.UnityEngine.LogType
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogger:Log(logType, message, context)
end

---@param logType : CS.UnityEngine.LogType
---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.ILogger:Log(logType, tag, message)
end

---@param logType : CS.UnityEngine.LogType
---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogger:Log(logType, tag, message, context)
end

---@param message : CS.System.Object
function CS.UnityEngine.ILogger:Log(message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.ILogger:Log(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogger:Log(tag, message, context)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.ILogger:LogWarning(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogger:LogWarning(tag, message, context)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.ILogger:LogError(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.ILogger:LogError(tag, message, context)
end

---@param logType : CS.UnityEngine.LogType
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.ILogger:LogFormat(logType, format, args)
end

---@param exception : CS.System.Exception
function CS.UnityEngine.ILogger:LogException(exception)
end