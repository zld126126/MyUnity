---@class CS.UnityEngine.AudioConfigurationChangeHandler : CS.System.MulticastDelegate
CS.UnityEngine.AudioConfigurationChangeHandler = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.AudioConfigurationChangeHandler
function CS.UnityEngine.AudioConfigurationChangeHandler(object, method)
end

---@param deviceWasChanged : CS.System.Boolean
function CS.UnityEngine.AudioConfigurationChangeHandler:Invoke(deviceWasChanged)
end

---@param deviceWasChanged : CS.System.Boolean
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.AudioConfigurationChangeHandler:BeginInvoke(deviceWasChanged, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.AudioConfigurationChangeHandler:EndInvoke(result)
end