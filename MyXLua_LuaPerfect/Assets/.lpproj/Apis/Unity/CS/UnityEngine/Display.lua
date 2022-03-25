---@class CS.UnityEngine.Display : CS.System.Object
CS.UnityEngine.Display = {}

---@field public CS.UnityEngine.Display.displays : CS.UnityEngine.Display[]
CS.UnityEngine.Display.displays = nil

---@property readonly CS.UnityEngine.Display.renderingWidth : CS.System.Int32
CS.UnityEngine.Display.renderingWidth = nil

---@property readonly CS.UnityEngine.Display.renderingHeight : CS.System.Int32
CS.UnityEngine.Display.renderingHeight = nil

---@property readonly CS.UnityEngine.Display.systemWidth : CS.System.Int32
CS.UnityEngine.Display.systemWidth = nil

---@property readonly CS.UnityEngine.Display.systemHeight : CS.System.Int32
CS.UnityEngine.Display.systemHeight = nil

---@property readonly CS.UnityEngine.Display.colorBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.Display.colorBuffer = nil

---@property readonly CS.UnityEngine.Display.depthBuffer : CS.UnityEngine.RenderBuffer
CS.UnityEngine.Display.depthBuffer = nil

---@property readonly CS.UnityEngine.Display.active : CS.System.Boolean
CS.UnityEngine.Display.active = nil

---@property readonly CS.UnityEngine.Display.requiresBlitToBackbuffer : CS.System.Boolean
CS.UnityEngine.Display.requiresBlitToBackbuffer = nil

---@property readonly CS.UnityEngine.Display.requiresSrgbBlitToBackbuffer : CS.System.Boolean
CS.UnityEngine.Display.requiresSrgbBlitToBackbuffer = nil

---@property readonly CS.UnityEngine.Display.main : CS.UnityEngine.Display
CS.UnityEngine.Display.main = nil

function CS.UnityEngine.Display:Activate()
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param refreshRate : CS.System.Int32
function CS.UnityEngine.Display:Activate(width, height, refreshRate)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param x : CS.System.Int32
---@param y : CS.System.Int32
function CS.UnityEngine.Display:SetParams(width, height, x, y)
end

---@param w : CS.System.Int32
---@param h : CS.System.Int32
function CS.UnityEngine.Display:SetRenderingResolution(w, h)
end

---@return CS.System.Boolean
function CS.UnityEngine.Display.MultiDisplayLicense()
end

---@param inputMouseCoordinates : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Display.RelativeMouseAt(inputMouseCoordinates)
end

---@param value : CS.UnityEngine.DisplaysUpdatedDelegate
function CS.UnityEngine.Display.add_onDisplaysUpdated(value)
end

---@param value : CS.UnityEngine.DisplaysUpdatedDelegate
function CS.UnityEngine.Display.remove_onDisplaysUpdated(value)
end