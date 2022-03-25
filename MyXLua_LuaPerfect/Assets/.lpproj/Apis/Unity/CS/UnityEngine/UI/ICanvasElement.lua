---@class CS.UnityEngine.UI.ICanvasElement
CS.UnityEngine.UI.ICanvasElement = {}

---@property readonly CS.UnityEngine.UI.ICanvasElement.transform : CS.UnityEngine.Transform
CS.UnityEngine.UI.ICanvasElement.transform = nil

---@param executing : CS.UnityEngine.UI.CanvasUpdate
function CS.UnityEngine.UI.ICanvasElement:Rebuild(executing)
end

function CS.UnityEngine.UI.ICanvasElement:LayoutComplete()
end

function CS.UnityEngine.UI.ICanvasElement:GraphicUpdateComplete()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.ICanvasElement:IsDestroyed()
end