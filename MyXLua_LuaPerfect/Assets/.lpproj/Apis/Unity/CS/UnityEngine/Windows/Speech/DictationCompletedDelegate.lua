---@class CS.UnityEngine.Windows.Speech.DictationCompletedDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.DictationCompletedDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.DictationCompletedDelegate
function CS.UnityEngine.Windows.Speech.DictationCompletedDelegate(object, method)
end

---@param cause : CS.UnityEngine.Windows.Speech.DictationCompletionCause
function CS.UnityEngine.Windows.Speech.DictationCompletedDelegate:Invoke(cause)
end

---@param cause : CS.UnityEngine.Windows.Speech.DictationCompletionCause
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationCompletedDelegate:BeginInvoke(cause, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationCompletedDelegate:EndInvoke(result)
end