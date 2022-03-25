---@class CS.UnityEngine.Windows.Speech.DictationResultDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.DictationResultDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.DictationResultDelegate
function CS.UnityEngine.Windows.Speech.DictationResultDelegate(object, method)
end

---@param text : CS.System.String
---@param confidence : CS.UnityEngine.Windows.Speech.ConfidenceLevel
function CS.UnityEngine.Windows.Speech.DictationResultDelegate:Invoke(text, confidence)
end

---@param text : CS.System.String
---@param confidence : CS.UnityEngine.Windows.Speech.ConfidenceLevel
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationResultDelegate:BeginInvoke(text, confidence, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationResultDelegate:EndInvoke(result)
end