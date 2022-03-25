---@class CS.UnityEngine.Windows.Speech.ErrorDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.ErrorDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.ErrorDelegate
function CS.UnityEngine.Windows.Speech.ErrorDelegate(object, method)
end

---@param errorCode : CS.UnityEngine.Windows.Speech.SpeechError
function CS.UnityEngine.Windows.Speech.ErrorDelegate:Invoke(errorCode)
end

---@param errorCode : CS.UnityEngine.Windows.Speech.SpeechError
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.ErrorDelegate:BeginInvoke(errorCode, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.ErrorDelegate:EndInvoke(result)
end