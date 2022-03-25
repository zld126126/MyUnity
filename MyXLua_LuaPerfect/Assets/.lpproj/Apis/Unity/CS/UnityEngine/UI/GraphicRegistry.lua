---@class CS.UnityEngine.UI.GraphicRegistry : CS.System.Object
CS.UnityEngine.UI.GraphicRegistry = {}

---@property readonly CS.UnityEngine.UI.GraphicRegistry.instance : CS.UnityEngine.UI.GraphicRegistry
CS.UnityEngine.UI.GraphicRegistry.instance = nil

---@param c : CS.UnityEngine.Canvas
---@param graphic : CS.UnityEngine.UI.Graphic
function CS.UnityEngine.UI.GraphicRegistry.RegisterGraphicForCanvas(c, graphic)
end

---@param c : CS.UnityEngine.Canvas
---@param graphic : CS.UnityEngine.UI.Graphic
function CS.UnityEngine.UI.GraphicRegistry.RegisterRaycastGraphicForCanvas(c, graphic)
end

---@param c : CS.UnityEngine.Canvas
---@param graphic : CS.UnityEngine.UI.Graphic
function CS.UnityEngine.UI.GraphicRegistry.UnregisterGraphicForCanvas(c, graphic)
end

---@param c : CS.UnityEngine.Canvas
---@param graphic : CS.UnityEngine.UI.Graphic
function CS.UnityEngine.UI.GraphicRegistry.UnregisterRaycastGraphicForCanvas(c, graphic)
end

---@param canvas : CS.UnityEngine.Canvas
---@return CS.System.Collections.Generic.IList
function CS.UnityEngine.UI.GraphicRegistry.GetGraphicsForCanvas(canvas)
end

---@param canvas : CS.UnityEngine.Canvas
---@return CS.System.Collections.Generic.IList
function CS.UnityEngine.UI.GraphicRegistry.GetRaycastableGraphicsForCanvas(canvas)
end