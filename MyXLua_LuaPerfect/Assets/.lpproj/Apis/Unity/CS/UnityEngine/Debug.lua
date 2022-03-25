---@class CS.UnityEngine.Debug : CS.System.Object
CS.UnityEngine.Debug = {}

---@property readonly CS.UnityEngine.Debug.unityLogger : CS.UnityEngine.ILogger
CS.UnityEngine.Debug.unityLogger = nil

---@property readwrite CS.UnityEngine.Debug.developerConsoleVisible : CS.System.Boolean
CS.UnityEngine.Debug.developerConsoleVisible = nil

---@property readonly CS.UnityEngine.Debug.isDebugBuild : CS.System.Boolean
CS.UnityEngine.Debug.isDebugBuild = nil

---@property readonly CS.UnityEngine.Debug.logger : CS.UnityEngine.ILogger
CS.UnityEngine.Debug.logger = nil

---@return CS.UnityEngine.Debug
function CS.UnityEngine.Debug()
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
---@param duration : CS.System.Single
function CS.UnityEngine.Debug.DrawLine(start, end_, color, duration)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Debug.DrawLine(start, end_, color)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
function CS.UnityEngine.Debug.DrawLine(start, end_)
end

---@param start : CS.UnityEngine.Vector3
---@param end_ : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
---@param duration : CS.System.Single
---@param depthTest : CS.System.Boolean
function CS.UnityEngine.Debug.DrawLine(start, end_, color, duration, depthTest)
end

---@param start : CS.UnityEngine.Vector3
---@param dir : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
---@param duration : CS.System.Single
function CS.UnityEngine.Debug.DrawRay(start, dir, color, duration)
end

---@param start : CS.UnityEngine.Vector3
---@param dir : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Debug.DrawRay(start, dir, color)
end

---@param start : CS.UnityEngine.Vector3
---@param dir : CS.UnityEngine.Vector3
function CS.UnityEngine.Debug.DrawRay(start, dir)
end

---@param start : CS.UnityEngine.Vector3
---@param dir : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
---@param duration : CS.System.Single
---@param depthTest : CS.System.Boolean
function CS.UnityEngine.Debug.DrawRay(start, dir, color, duration, depthTest)
end

function CS.UnityEngine.Debug.Break()
end

function CS.UnityEngine.Debug.DebugBreak()
end

---@param buffer : CS.System.BytePointer
---@param bufferMax : CS.System.Int32
---@param projectFolder : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Debug.ExtractStackTraceNoAlloc(buffer, bufferMax, projectFolder)
end

---@param message : CS.System.Object
function CS.UnityEngine.Debug.Log(message)
end

---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.Log(message, context)
end

---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogFormat(format, args)
end

---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogFormat(context, format, args)
end

---@param logType : CS.UnityEngine.LogType
---@param logOptions : CS.UnityEngine.LogOption
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogFormat(logType, logOptions, context, format, args)
end

---@param message : CS.System.Object
function CS.UnityEngine.Debug.LogError(message)
end

---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.LogError(message, context)
end

---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogErrorFormat(format, args)
end

---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogErrorFormat(context, format, args)
end

function CS.UnityEngine.Debug.ClearDeveloperConsole()
end

---@param exception : CS.System.Exception
function CS.UnityEngine.Debug.LogException(exception)
end

---@param exception : CS.System.Exception
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.LogException(exception, context)
end

---@param message : CS.System.Object
function CS.UnityEngine.Debug.LogWarning(message)
end

---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.LogWarning(message, context)
end

---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogWarningFormat(format, args)
end

---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogWarningFormat(context, format, args)
end

---@param condition : CS.System.Boolean
function CS.UnityEngine.Debug.Assert(condition)
end

---@param condition : CS.System.Boolean
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.Assert(condition, context)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.Object
function CS.UnityEngine.Debug.Assert(condition, message)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.String
function CS.UnityEngine.Debug.Assert(condition, message)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.Assert(condition, message, context)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.String
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.Assert(condition, message, context)
end

---@param condition : CS.System.Boolean
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.AssertFormat(condition, format, args)
end

---@param condition : CS.System.Boolean
---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.AssertFormat(condition, context, format, args)
end

---@param message : CS.System.Object
function CS.UnityEngine.Debug.LogAssertion(message)
end

---@param message : CS.System.Object
---@param context : CS.UnityEngine.Object
function CS.UnityEngine.Debug.LogAssertion(message, context)
end

---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogAssertionFormat(format, args)
end

---@param context : CS.UnityEngine.Object
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.LogAssertionFormat(context, format, args)
end

---@param condition : CS.System.Boolean
---@param format : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Debug.Assert(condition, format, args)
end