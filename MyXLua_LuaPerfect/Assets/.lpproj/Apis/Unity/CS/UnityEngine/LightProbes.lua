---@class CS.UnityEngine.LightProbes : CS.UnityEngine.Object
CS.UnityEngine.LightProbes = {}

---@property readonly CS.UnityEngine.LightProbes.positions : CS.UnityEngine.Vector3[]
CS.UnityEngine.LightProbes.positions = nil

---@property readwrite CS.UnityEngine.LightProbes.bakedProbes : CS.UnityEngine.Rendering.SphericalHarmonicsL2[]
CS.UnityEngine.LightProbes.bakedProbes = nil

---@property readonly CS.UnityEngine.LightProbes.count : CS.System.Int32
CS.UnityEngine.LightProbes.count = nil

---@property readonly CS.UnityEngine.LightProbes.cellCount : CS.System.Int32
CS.UnityEngine.LightProbes.cellCount = nil

---@property readwrite CS.UnityEngine.LightProbes.coefficients : CS.System.Single[]
CS.UnityEngine.LightProbes.coefficients = nil

---@param value : CS.System.Action
function CS.UnityEngine.LightProbes.add_tetrahedralizationCompleted(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.LightProbes.remove_tetrahedralizationCompleted(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.LightProbes.add_needsRetetrahedralization(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.LightProbes.remove_needsRetetrahedralization(value)
end

function CS.UnityEngine.LightProbes.Tetrahedralize()
end

function CS.UnityEngine.LightProbes.TetrahedralizeAsync()
end

---@param position : CS.UnityEngine.Vector3
---@param renderer : CS.UnityEngine.Renderer
---@param probe : CS.UnityEngine.Rendering.SphericalHarmonicsL2
function CS.UnityEngine.LightProbes.GetInterpolatedProbe(position, renderer, probe)
end

---@param positions : CS.UnityEngine.Vector3[]
---@param lightProbes : CS.UnityEngine.Rendering.SphericalHarmonicsL2[]
---@param occlusionProbes : CS.UnityEngine.Vector4[]
function CS.UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(positions, lightProbes, occlusionProbes)
end

---@param positions : CS.System.Collections.Generic.List
---@param lightProbes : CS.System.Collections.Generic.List
---@param occlusionProbes : CS.System.Collections.Generic.List
function CS.UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(positions, lightProbes, occlusionProbes)
end

---@param position : CS.UnityEngine.Vector3
---@param renderer : CS.UnityEngine.Renderer
---@param coefficients : CS.System.Single[]
function CS.UnityEngine.LightProbes:GetInterpolatedLightProbe(position, renderer, coefficients)
end