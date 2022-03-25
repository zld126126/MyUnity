---@class CS.UnityEngine.Windows.Speech.DictationErrorHandler : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.DictationErrorHandler = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.DictationErrorHandler
function CS.UnityEngine.Windows.Speech.DictationErrorHandler(object, method)
end

---@param error : CS.System.String
---@param hresult : CS.System.Int32
function CS.UnityEngine.Windows.Speech.DictationErrorHandler:Invoke(error, hresult)
end

---@param error : CS.System.String
---@param hresult : CS.System.Int32
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationErrorHandler:BeginInvoke(error, hresult, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationErrorHandler:EndInvoke(result)
end