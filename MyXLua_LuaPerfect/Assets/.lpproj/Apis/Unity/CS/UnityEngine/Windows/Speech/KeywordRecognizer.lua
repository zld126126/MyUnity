---@class CS.UnityEngine.Windows.Speech.KeywordRecognizer : CS.UnityEngine.Windows.Speech.PhraseRecognizer
CS.UnityEngine.Windows.Speech.KeywordRecognizer = {}

---@property readwrite CS.UnityEngine.Windows.Speech.KeywordRecognizer.Keywords : CS.System.Collections.Generic.IEnumerable
CS.UnityEngine.Windows.Speech.KeywordRecognizer.Keywords = nil

---@param keywords : CS.System.String[]
---@return CS.UnityEngine.Windows.Speech.KeywordRecognizer
function CS.UnityEngine.Windows.Speech.KeywordRecognizer(keywords)
end

---@param keywords : CS.System.String[]
---@param minimumConfidence : CS.UnityEngine.Windows.Speech.ConfidenceLevel
---@return CS.UnityEngine.Windows.Speech.KeywordRecognizer
function CS.UnityEngine.Windows.Speech.KeywordRecognizer(keywords, minimumConfidence)
end