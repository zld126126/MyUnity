---@class CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate : CS.System.MulticastDelegate
CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate(object, method)
end

---@param args : CS.UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
function CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate:Invoke(args)
end

---@param args : CS.UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate:BeginInvoke(args, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate:EndInvoke(result)
end