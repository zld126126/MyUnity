---@class CS.UnityEngine.Rendering.DrawingSettings : CS.System.ValueType
CS.UnityEngine.Rendering.DrawingSettings = {}

---@field public CS.UnityEngine.Rendering.DrawingSettings.maxShaderPasses : CS.System.Int32
CS.UnityEngine.Rendering.DrawingSettings.maxShaderPasses = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.sortingSettings : CS.UnityEngine.Rendering.SortingSettings
CS.UnityEngine.Rendering.DrawingSettings.sortingSettings = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.perObjectData : CS.UnityEngine.Rendering.PerObjectData
CS.UnityEngine.Rendering.DrawingSettings.perObjectData = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.enableDynamicBatching : CS.System.Boolean
CS.UnityEngine.Rendering.DrawingSettings.enableDynamicBatching = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.enableInstancing : CS.System.Boolean
CS.UnityEngine.Rendering.DrawingSettings.enableInstancing = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.overrideMaterial : CS.UnityEngine.Material
CS.UnityEngine.Rendering.DrawingSettings.overrideMaterial = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.overrideMaterialPassIndex : CS.System.Int32
CS.UnityEngine.Rendering.DrawingSettings.overrideMaterialPassIndex = nil

---@property readwrite CS.UnityEngine.Rendering.DrawingSettings.mainLightIndex : CS.System.Int32
CS.UnityEngine.Rendering.DrawingSettings.mainLightIndex = nil

---@param shaderPassName : CS.UnityEngine.Rendering.ShaderTagId
---@param sortingSettings : CS.UnityEngine.Rendering.SortingSettings
---@return CS.UnityEngine.Rendering.DrawingSettings
function CS.UnityEngine.Rendering.DrawingSettings(shaderPassName, sortingSettings)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Rendering.ShaderTagId
function CS.UnityEngine.Rendering.DrawingSettings:GetShaderPassName(index)
end

---@param index : CS.System.Int32
---@param shaderPassName : CS.UnityEngine.Rendering.ShaderTagId
function CS.UnityEngine.Rendering.DrawingSettings:SetShaderPassName(index, shaderPassName)
end

---@param other : CS.UnityEngine.Rendering.DrawingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DrawingSettings:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DrawingSettings:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.DrawingSettings:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.DrawingSettings
---@param right : CS.UnityEngine.Rendering.DrawingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DrawingSettings.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.DrawingSettings
---@param right : CS.UnityEngine.Rendering.DrawingSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.DrawingSettings.op_Inequality(left, right)
end