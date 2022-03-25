---@class CS.UnityEngine.Logger : CS.System.Object
CS.UnityEngine.Logger = {}

---@property readwrite CS.UnityEngine.Logger.logHandler : CS.UnityEngine.ILogHandler
CS.UnityEngine.Logger.logHandler = nil

---@property readwrite CS.UnityEngine.Logger.logEnabled : CS.System.Boolean
CS.UnityEngine.Logger.logEnabled = nil

---@property readwrite CS.UnityEngine.Logger.filterLogType : CS.UnityEngine.LogType
CS.UnityEngine.Logger.filterLogType = nil

---@param logHandler : CS.UnityEngine.ILogHandler
---@return CS.UnityEngine.Logger
function CS.UnityEngine.Logger(logHandler)
end

---@param logType : CS.UnityEngine.LogType
---@return CS.System.Boolean
function CS.UnityEngine.Logger:IsLogTypeAllowed(logType)
end

---@param logType : CS.UnityEngine.LogType
---@param message : CS.System.Object
function CS.UnityEngine.Logger:Log(logType, message)
end

---@param logType : CS.UnityEngine.LogType
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:Log(logType, message, context)
end

---@param logType : CS.UnityEngine.LogType
---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.Logger:Log(logType, tag, message)
end

---@param logType : CS.UnityEngine.LogType
---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:Log(logType, tag, message, context)
end

---@param message : CS.System.Object
function CS.UnityEngine.Logger:Log(message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.Logger:Log(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:Log(tag, message, context)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.Logger:LogWarning(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:LogWarning(tag, message, context)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
function CS.UnityEngine.Logger:LogError(tag, message)
end

---@param tag : CS.System.String
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:LogError(tag, message, context)
end

---@param exception : CS.System.Exception
function CS.UnityEngine.Logger:LogException(exception)
end

---@param exception : CS.System.Exception
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Logger:LogException(exception, context)
end

---@param logType : CS.UnityEngine.LogType
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Logger:LogFormat(logType, format, args)
end

---@param logType : CS.UnityEngine.LogType
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Logger:LogFormat(logType, context, format, args)
end