---@class CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate
function CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate(object, method)
end

---@param text : CS.System.String
function CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate:Invoke(text)
end

---@param text : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate:BeginInvoke(text, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate:EndInvoke(result)
end