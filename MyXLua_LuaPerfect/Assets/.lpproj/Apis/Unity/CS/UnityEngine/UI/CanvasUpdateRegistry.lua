---@class CS.UnityEngine.UI.CanvasUpdateRegistry : CS.System.Object
CS.UnityEngine.UI.CanvasUpdateRegistry = {}

---@property readonly CS.UnityEngine.UI.CanvasUpdateRegistry.instance : CS.UnityEngine.UI.CanvasUpdateRegistry
CS.UnityEngine.UI.CanvasUpdateRegistry.instance = nil

---@param element : CS.UnityEngine.UI.ICanvasElement
function CS.UnityEngine.UI.CanvasUpdateRegistry.RegisterCanvasElementForLayoutRebuild(element)
end

---@param element : CS.UnityEngine.UI.ICanvasElement
---@return CS.System.Boolean
function CS.UnityEngine.UI.CanvasUpdateRegistry.TryRegisterCanvasElementForLayoutRebuild(element)
end

---@param element : CS.UnityEngine.UI.ICanvasElement
function CS.UnityEngine.UI.CanvasUpdateRegistry.RegisterCanvasElementForGraphicRebuild(element)
end

---@param element : CS.UnityEngine.UI.ICanvasElement
---@return CS.System.Boolean
function CS.UnityEngine.UI.CanvasUpdateRegistry.TryRegisterCanvasElementForGraphicRebuild(element)
end

---@param element : CS.UnityEngine.UI.ICanvasElement
function CS.UnityEngine.UI.CanvasUpdateRegistry.UnRegisterCanvasElementForRebuild(element)
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CanvasUpdateRegistry.IsRebuildingLayout()
end

---@return CS.System.Boolean
function CS.UnityEngine.UI.CanvasUpdateRegistry.IsRebuildingGraphics()
end