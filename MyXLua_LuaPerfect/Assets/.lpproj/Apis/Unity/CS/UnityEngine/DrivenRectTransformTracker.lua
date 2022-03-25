---@class CS.UnityEngine.DrivenRectTransformTracker : CS.System.ValueType
CS.UnityEngine.DrivenRectTransformTracker = {}

function CS.UnityEngine.DrivenRectTransformTracker.StopRecordingUndo()
end

function CS.UnityEngine.DrivenRectTransformTracker.StartRecordingUndo()
end

---@param driver : CS.UnityEngine.Object
---@param rectTransform : CS.UnityEngine.RectTransform
---@param drivenProperties : CS.UnityEngine.DrivenTransformProperties
function CS.UnityEngine.DrivenRectTransformTracker:Add(driver, rectTransform, drivenProperties)
end

---@param revertValues : CS.System.Boolean
function CS.UnityEngine.DrivenRectTransformTracker:Clear(revertValues)
end

function CS.UnityEngine.DrivenRectTransformTracker:Clear()
end