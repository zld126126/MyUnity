---@class CS.UnityEngine.Rendering.FilteringSettings : CS.System.ValueType
CS.UnityEngine.Rendering.FilteringSettings = {}

---@property readonly CS.UnityEngine.Rendering.FilteringSettings.defaultValue : CS.UnityEngine.Rendering.FilteringSettings
CS.UnityEngine.Rendering.FilteringSettings.defaultValue = nil

---@property readwrite CS.UnityEngine.Rendering.FilteringSettings.renderQueueRange : CS.UnityEngine.Rendering.RenderQueueRange
CS.UnityEngine.Rendering.FilteringSettings.renderQueueRange = nil

---@property readwrite CS.UnityEngine.Rendering.FilteringSettings.layerMask : CS.System.Int32
CS.UnityEngine.Rendering.FilteringSettings.layerMask = nil

---@property readwrite CS.UnityEngine.Rendering.FilteringSettings.renderingLayerMask : CS.System.UInt32
CS.UnityEngine.Rendering.FilteringSettings.renderingLayerMask = nil

---@property readwrite CS.UnityEngine.Rendering.FilteringSettings.excludeMotionVectorObjects : CS.System.Boolean
CS.UnityEngine.Rendering.FilteringSettings.excludeMotionVectorObjects = nil

---@property readwrite CS.UnityEngine.Rendering.FilteringSettings.sortingLayerRange : CS.UnityEngine.Rendering.SortingLayerRange
CS.UnityEngine.Rendering.FilteringSettings.sortingLayerRange = nil

---@param renderQueueRange : CS.System.Nullable
---@param layerMask : CS.System.Int32
---@param renderingLayerMask : CS.System.UInt32
---@param excludeMotionVectorObjects : CS.System.Int32
---@return CS.UnityEngine.Rendering.FilteringSettings
function CS.UnityEngine.Rendering.FilteringSettings(renderQueueRange, layerMask, renderingLayerMask, excludeMotionVectorObjects)
end

---@param other : CS.UnityEngine.Rendering.FilteringSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.FilteringSettings:Equals(other)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.FilteringSettings:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.FilteringSettings:GetHashCode()
end

---@param left : CS.UnityEngine.Rendering.FilteringSettings
---@param right : CS.UnityEngine.Rendering.FilteringSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.FilteringSettings.op_Equality(left, right)
end

---@param left : CS.UnityEngine.Rendering.FilteringSettings
---@param right : CS.UnityEngine.Rendering.FilteringSettings
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.FilteringSettings.op_Inequality(left, right)
end