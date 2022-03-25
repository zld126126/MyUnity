---@class CS.UnityEngine.DynamicGI : CS.System.Object
CS.UnityEngine.DynamicGI = {}

---@property readwrite CS.UnityEngine.DynamicGI.indirectScale : CS.System.Single
CS.UnityEngine.DynamicGI.indirectScale = nil

---@property readwrite CS.UnityEngine.DynamicGI.updateThreshold : CS.System.Single
CS.UnityEngine.DynamicGI.updateThreshold = nil

---@property readwrite CS.UnityEngine.DynamicGI.materialUpdateTimeSlice : CS.System.Int32
CS.UnityEngine.DynamicGI.materialUpdateTimeSlice = nil

---@property readwrite CS.UnityEngine.DynamicGI.synchronousMode : CS.System.Boolean
CS.UnityEngine.DynamicGI.synchronousMode = nil

---@property readonly CS.UnityEngine.DynamicGI.isConverged : CS.System.Boolean
CS.UnityEngine.DynamicGI.isConverged = nil

---@return CS.UnityEngine.DynamicGI
function CS.UnityEngine.DynamicGI()
end

---@param renderer : CS.UnityEngine.Renderer
---@param color : CS.UnityEngine.Color
function CS.UnityEngine.DynamicGI.SetEmissive(renderer, color)
end

---@param input : CS.System.Single[]
function CS.UnityEngine.DynamicGI.SetEnvironmentData(input)
end

function CS.UnityEngine.DynamicGI.UpdateEnvironment()
end

---@param renderer : CS.UnityEngine.Renderer
function CS.UnityEngine.DynamicGI.UpdateMaterials(renderer)
end

---@param renderer : CS.UnityEngine.Object
function CS.UnityEngine.DynamicGI.UpdateMaterials(renderer)
end

---@param renderer : CS.UnityEngine.Object
---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param width : CS.System.Int32
---@param height : CS.System.Int32
function CS.UnityEngine.DynamicGI.UpdateMaterials(renderer, x, y, width, height)
end