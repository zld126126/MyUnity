---@class CS.UnityEngine.WSA.Application : CS.System.Object
CS.UnityEngine.WSA.Application = {}

---@property readonly CS.UnityEngine.WSA.Application.arguments : CS.System.String
CS.UnityEngine.WSA.Application.arguments = nil

---@property readonly CS.UnityEngine.WSA.Application.advertisingIdentifier : CS.System.String
CS.UnityEngine.WSA.Application.advertisingIdentifier = nil

---@return CS.UnityEngine.WSA.Application
function CS.UnityEngine.WSA.Application()
end

---@param value : CS.UnityEngine.WSA.WindowSizeChanged
function CS.UnityEngine.WSA.Application.add_windowSizeChanged(value)
end

---@param value : CS.UnityEngine.WSA.WindowSizeChanged
function CS.UnityEngine.WSA.Application.remove_windowSizeChanged(value)
end

---@param value : CS.UnityEngine.WSA.WindowActivated
function CS.UnityEngine.WSA.Application.add_windowActivated(value)
end

---@param value : CS.UnityEngine.WSA.WindowActivated
function CS.UnityEngine.WSA.Application.remove_windowActivated(value)
end

---@param item : CS.UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone : CS.System.Boolean
function CS.UnityEngine.WSA.Application.InvokeOnAppThread(item, waitUntilDone)
end

---@param item : CS.UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone : CS.System.Boolean
function CS.UnityEngine.WSA.Application.InvokeOnUIThread(item, waitUntilDone)
end

---@return CS.System.Boolean
function CS.UnityEngine.WSA.Application.RunningOnAppThread()
end

---@return CS.System.Boolean
function CS.UnityEngine.WSA.Application.RunningOnUIThread()
end