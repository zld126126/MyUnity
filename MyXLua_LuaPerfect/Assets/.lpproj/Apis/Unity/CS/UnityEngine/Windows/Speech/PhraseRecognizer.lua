---@class CS.UnityEngine.Windows.Speech.PhraseRecognizer : CS.System.Object
CS.UnityEngine.Windows.Speech.PhraseRecognizer = {}

---@property readonly CS.UnityEngine.Windows.Speech.PhraseRecognizer.IsRunning : CS.System.Boolean
CS.UnityEngine.Windows.Speech.PhraseRecognizer.IsRunning = nil

---@param value : CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognizer:add_OnPhraseRecognized(value)
end

---@param value : CS.UnityEngine.Windows.Speech.PhraseRecognizedDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognizer:remove_OnPhraseRecognized(value)
end

function CS.UnityEngine.Windows.Speech.PhraseRecognizer:Start()
end

function CS.UnityEngine.Windows.Speech.PhraseRecognizer:Stop()
end

function CS.UnityEngine.Windows.Speech.PhraseRecognizer:Dispose()
end