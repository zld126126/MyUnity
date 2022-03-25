---@class CS.UnityEngine.Windows.Speech.StatusDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.StatusDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.StatusDelegate
function CS.UnityEngine.Windows.Speech.StatusDelegate(object, method)
end

---@param status : CS.UnityEngine.Windows.Speech.SpeechSystemStatus
function CS.UnityEngine.Windows.Speech.StatusDelegate:Invoke(status)
end

---@param status : CS.UnityEngine.Windows.Speech.SpeechSystemStatus
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.StatusDelegate:BeginInvoke(status, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.StatusDelegate:EndInvoke(result)
end