---@class CS.UnityEngine.Windows.Speech.DictationRecognizer : CS.System.Object
CS.UnityEngine.Windows.Speech.DictationRecognizer = {}

---@property readonly CS.UnityEngine.Windows.Speech.DictationRecognizer.Status : CS.UnityEngine.Windows.Speech.SpeechSystemStatus
CS.UnityEngine.Windows.Speech.DictationRecognizer.Status = nil

---@property readwrite CS.UnityEngine.Windows.Speech.DictationRecognizer.AutoSilenceTimeoutSeconds : CS.System.Single
CS.UnityEngine.Windows.Speech.DictationRecognizer.AutoSilenceTimeoutSeconds = nil

---@property readwrite CS.UnityEngine.Windows.Speech.DictationRecognizer.InitialSilenceTimeoutSeconds : CS.System.Single
CS.UnityEngine.Windows.Speech.DictationRecognizer.InitialSilenceTimeoutSeconds = nil

---@return CS.UnityEngine.Windows.Speech.DictationRecognizer
function CS.UnityEngine.Windows.Speech.DictationRecognizer()
end

---@param confidenceLevel : CS.UnityEngine.Windows.Speech.ConfidenceLevel
---@return CS.UnityEngine.Windows.Speech.DictationRecognizer
function CS.UnityEngine.Windows.Speech.DictationRecognizer(confidenceLevel)
end

---@param topic : CS.UnityEngine.Windows.Speech.DictationTopicConstraint
---@return CS.UnityEngine.Windows.Speech.DictationRecognizer
function CS.UnityEngine.Windows.Speech.DictationRecognizer(topic)
end

---@param minimumConfidence : CS.UnityEngine.Windows.Speech.ConfidenceLevel
---@param topic : CS.UnityEngine.Windows.Speech.DictationTopicConstraint
---@return CS.UnityEngine.Windows.Speech.DictationRecognizer
function CS.UnityEngine.Windows.Speech.DictationRecognizer(minimumConfidence, topic)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:add_DictationHypothesis(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationHypothesisDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationHypothesis(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationResultDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:add_DictationResult(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationResultDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationResult(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationCompletedDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:add_DictationComplete(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationCompletedDelegate
function CS.UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationComplete(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationErrorHandler
function CS.UnityEngine.Windows.Speech.DictationRecognizer:add_DictationError(value)
end

---@param value : CS.UnityEngine.Windows.Speech.DictationErrorHandler
function CS.UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationError(value)
end

function CS.UnityEngine.Windows.Speech.DictationRecognizer:Start()
end

function CS.UnityEngine.Windows.Speech.DictationRecognizer:Stop()
end

function CS.UnityEngine.Windows.Speech.DictationRecognizer:Dispose()
end