---@module CS.UnityEngine.Windows.Speech
CS.UnityEngine.Windows.Speech = {}

---@class CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem : CS.System.Object
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem = {}

---@property readonly CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.isSupported : CS.System.Boolean
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.isSupported = nil

---@property readonly CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.Status : CS.UnityEngine.Windows.Speech.SpeechSystemStatus
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.Status = nil

function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.Restart()
end

function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.Shutdown()
end

---@param value : CS.UnityEngine.Windows.Speech.ErrorDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.add_OnError(value)
end

---@param value : CS.UnityEngine.Windows.Speech.ErrorDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.remove_OnError(value)
end

---@param value : CS.UnityEngine.Windows.Speech.StatusDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.add_OnStatusChanged(value)
end

---@param value : CS.UnityEngine.Windows.Speech.StatusDelegate
function CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.remove_OnStatusChanged(value)
end