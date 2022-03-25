---@class CS.UnityEngine.Application : CS.System.Object
CS.UnityEngine.Application = {}

---@property readonly CS.UnityEngine.Application.isLoadingLevel : CS.System.Boolean
CS.UnityEngine.Application.isLoadingLevel = nil

---@property readonly CS.UnityEngine.Application.streamedBytes : CS.System.Int32
CS.UnityEngine.Application.streamedBytes = nil

---@property readonly CS.UnityEngine.Application.webSecurityEnabled : CS.System.Boolean
CS.UnityEngine.Application.webSecurityEnabled = nil

---@property readonly CS.UnityEngine.Application.isPlaying : CS.System.Boolean
CS.UnityEngine.Application.isPlaying = nil

---@property readonly CS.UnityEngine.Application.isFocused : CS.System.Boolean
CS.UnityEngine.Application.isFocused = nil

---@property readonly CS.UnityEngine.Application.buildGUID : CS.System.String
CS.UnityEngine.Application.buildGUID = nil

---@property readwrite CS.UnityEngine.Application.runInBackground : CS.System.Boolean
CS.UnityEngine.Application.runInBackground = nil

---@property readonly CS.UnityEngine.Application.isBatchMode : CS.System.Boolean
CS.UnityEngine.Application.isBatchMode = nil

---@property readonly CS.UnityEngine.Application.dataPath : CS.System.String
CS.UnityEngine.Application.dataPath = nil

---@property readonly CS.UnityEngine.Application.streamingAssetsPath : CS.System.String
CS.UnityEngine.Application.streamingAssetsPath = nil

---@property readonly CS.UnityEngine.Application.persistentDataPath : CS.System.String
CS.UnityEngine.Application.persistentDataPath = nil

---@property readonly CS.UnityEngine.Application.temporaryCachePath : CS.System.String
CS.UnityEngine.Application.temporaryCachePath = nil

---@property readonly CS.UnityEngine.Application.absoluteURL : CS.System.String
CS.UnityEngine.Application.absoluteURL = nil

---@property readonly CS.UnityEngine.Application.unityVersion : CS.System.String
CS.UnityEngine.Application.unityVersion = nil

---@property readonly CS.UnityEngine.Application.version : CS.System.String
CS.UnityEngine.Application.version = nil

---@property readonly CS.UnityEngine.Application.installerName : CS.System.String
CS.UnityEngine.Application.installerName = nil

---@property readonly CS.UnityEngine.Application.identifier : CS.System.String
CS.UnityEngine.Application.identifier = nil

---@property readonly CS.UnityEngine.Application.installMode : CS.UnityEngine.ApplicationInstallMode
CS.UnityEngine.Application.installMode = nil

---@property readonly CS.UnityEngine.Application.sandboxType : CS.UnityEngine.ApplicationSandboxType
CS.UnityEngine.Application.sandboxType = nil

---@property readonly CS.UnityEngine.Application.productName : CS.System.String
CS.UnityEngine.Application.productName = nil

---@property readonly CS.UnityEngine.Application.companyName : CS.System.String
CS.UnityEngine.Application.companyName = nil

---@property readonly CS.UnityEngine.Application.cloudProjectId : CS.System.String
CS.UnityEngine.Application.cloudProjectId = nil

---@property readwrite CS.UnityEngine.Application.targetFrameRate : CS.System.Int32
CS.UnityEngine.Application.targetFrameRate = nil

---@property readwrite CS.UnityEngine.Application.stackTraceLogType : CS.UnityEngine.StackTraceLogType
CS.UnityEngine.Application.stackTraceLogType = nil

---@property readonly CS.UnityEngine.Application.consoleLogPath : CS.System.String
CS.UnityEngine.Application.consoleLogPath = nil

---@property readwrite CS.UnityEngine.Application.backgroundLoadingPriority : CS.UnityEngine.ThreadPriority
CS.UnityEngine.Application.backgroundLoadingPriority = nil

---@property readonly CS.UnityEngine.Application.genuine : CS.System.Boolean
CS.UnityEngine.Application.genuine = nil

---@property readonly CS.UnityEngine.Application.genuineCheckAvailable : CS.System.Boolean
CS.UnityEngine.Application.genuineCheckAvailable = nil

---@property readonly CS.UnityEngine.Application.isShowingSplashScreen : CS.System.Boolean
CS.UnityEngine.Application.isShowingSplashScreen = nil

---@property readonly CS.UnityEngine.Application.platform : CS.UnityEngine.RuntimePlatform
CS.UnityEngine.Application.platform = nil

---@property readonly CS.UnityEngine.Application.isMobilePlatform : CS.System.Boolean
CS.UnityEngine.Application.isMobilePlatform = nil

---@property readonly CS.UnityEngine.Application.isConsolePlatform : CS.System.Boolean
CS.UnityEngine.Application.isConsolePlatform = nil

---@property readonly CS.UnityEngine.Application.systemLanguage : CS.UnityEngine.SystemLanguage
CS.UnityEngine.Application.systemLanguage = nil

---@property readonly CS.UnityEngine.Application.internetReachability : CS.UnityEngine.NetworkReachability
CS.UnityEngine.Application.internetReachability = nil

---@property readonly CS.UnityEngine.Application.isPlayer : CS.System.Boolean
CS.UnityEngine.Application.isPlayer = nil

---@property readonly CS.UnityEngine.Application.levelCount : CS.System.Int32
CS.UnityEngine.Application.levelCount = nil

---@property readonly CS.UnityEngine.Application.loadedLevel : CS.System.Int32
CS.UnityEngine.Application.loadedLevel = nil

---@property readonly CS.UnityEngine.Application.loadedLevelName : CS.System.String
CS.UnityEngine.Application.loadedLevelName = nil

---@property readonly CS.UnityEngine.Application.isEditor : CS.System.Boolean
CS.UnityEngine.Application.isEditor = nil

---@return CS.UnityEngine.Application
function CS.UnityEngine.Application()
end

---@param exitCode : CS.System.Int32
function CS.UnityEngine.Application.Quit(exitCode)
end

function CS.UnityEngine.Application.Quit()
end

function CS.UnityEngine.Application.CancelQuit()
end

function CS.UnityEngine.Application.Unload()
end

---@param levelIndex : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.Application.GetStreamProgressForLevel(levelIndex)
end

---@param levelName : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.Application.GetStreamProgressForLevel(levelName)
end

---@param levelIndex : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Application.CanStreamedLevelBeLoaded(levelIndex)
end

---@param levelName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Application.CanStreamedLevelBeLoaded(levelName)
end

---@param obj : CS.UnityEngine.Object
---@return CS.System.Boolean
function CS.UnityEngine.Application.IsPlaying(obj)
end

---@return CS.System.String[]
function CS.UnityEngine.Application.GetBuildTags()
end

---@param buildTags : CS.System.String[]
function CS.UnityEngine.Application.SetBuildTags(buildTags)
end

---@return CS.System.Boolean
function CS.UnityEngine.Application.HasProLicense()
end

---@param script : CS.System.String
function CS.UnityEngine.Application.ExternalEval(script)
end

---@param delegateMethod : CS.UnityEngine.AdvertisingIdentifierCallback
---@return CS.System.Boolean
function CS.UnityEngine.Application.RequestAdvertisingIdentifierAsync(delegateMethod)
end

---@param url : CS.System.String
function CS.UnityEngine.Application.OpenURL(url)
end

---@param mode : CS.System.Int32
function CS.UnityEngine.Application.ForceCrash(mode)
end

---@param logType : CS.UnityEngine.LogType
---@return CS.UnityEngine.StackTraceLogType
function CS.UnityEngine.Application.GetStackTraceLogType(logType)
end

---@param logType : CS.UnityEngine.LogType
---@param stackTraceType : CS.UnityEngine.StackTraceLogType
function CS.UnityEngine.Application.SetStackTraceLogType(logType, stackTraceType)
end

---@param mode : CS.UnityEngine.UserAuthorization
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Application.RequestUserAuthorization(mode)
end

---@param mode : CS.UnityEngine.UserAuthorization
---@return CS.System.Boolean
function CS.UnityEngine.Application.HasUserAuthorization(mode)
end

---@param value : CS.UnityEngine.LowMemoryCallback
function CS.UnityEngine.Application.add_lowMemory(value)
end

---@param value : CS.UnityEngine.LowMemoryCallback
function CS.UnityEngine.Application.remove_lowMemory(value)
end

---@param value : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.add_logMessageReceived(value)
end

---@param value : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.remove_logMessageReceived(value)
end

---@param value : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.add_logMessageReceivedThreaded(value)
end

---@param value : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.remove_logMessageReceivedThreaded(value)
end

---@param functionName : CS.System.String
---@param args : CS.System.Object[]
function CS.UnityEngine.Application.ExternalCall(functionName, args)
end

---@param o : CS.UnityEngine.Object
function CS.UnityEngine.Application.DontDestroyOnLoad(o)
end

---@param filename : CS.System.String
---@param superSize : CS.System.Int32
function CS.UnityEngine.Application.CaptureScreenshot(filename, superSize)
end

---@param filename : CS.System.String
function CS.UnityEngine.Application.CaptureScreenshot(filename)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Application.add_onBeforeRender(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Application.remove_onBeforeRender(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.add_focusChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.remove_focusChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.add_deepLinkActivated(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.remove_deepLinkActivated(value)
end

---@param value : CS.System.Func
function CS.UnityEngine.Application.add_wantsToQuit(value)
end

---@param value : CS.System.Func
function CS.UnityEngine.Application.remove_wantsToQuit(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.add_quitting(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.remove_quitting(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.add_unloading(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Application.remove_unloading(value)
end

---@param handler : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.RegisterLogCallback(handler)
end

---@param handler : CS.UnityEngine.LogCallback
function CS.UnityEngine.Application.RegisterLogCallbackThreaded(handler)
end

---@param index : CS.System.Int32
function CS.UnityEngine.Application.LoadLevel(index)
end

---@param name : CS.System.String
function CS.UnityEngine.Application.LoadLevel(name)
end

---@param index : CS.System.Int32
function CS.UnityEngine.Application.LoadLevelAdditive(index)
end

---@param name : CS.System.String
function CS.UnityEngine.Application.LoadLevelAdditive(name)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Application.LoadLevelAsync(index)
end

---@param levelName : CS.System.String
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Application.LoadLevelAsync(levelName)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Application.LoadLevelAdditiveAsync(index)
end

---@param levelName : CS.System.String
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.Application.LoadLevelAdditiveAsync(levelName)
end

---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Application.UnloadLevel(index)
end

---@param scenePath : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Application.UnloadLevel(scenePath)
end