---@class CS.UnityEngine.UI.StencilMaterial : CS.System.Object
CS.UnityEngine.UI.StencilMaterial = {}

---@param baseMat : CS.UnityEngine.Material
---@param stencilID : CS.System.Int32
---@return CS.UnityEngine.Material
function CS.UnityEngine.UI.StencilMaterial.Add(baseMat, stencilID)
end

---@param baseMat : CS.UnityEngine.Material
---@param stencilID : CS.System.Int32
---@param operation : CS.UnityEngine.Rendering.StencilOp
---@param compareFunction : CS.UnityEngine.Rendering.CompareFunction
---@param colorWriteMask : CS.UnityEngine.Rendering.ColorWriteMask
---@return CS.UnityEngine.Material
function CS.UnityEngine.UI.StencilMaterial.Add(baseMat, stencilID, operation, compareFunction, colorWriteMask)
end

---@param baseMat : CS.UnityEngine.Material
---@param stencilID : CS.System.Int32
---@param operation : CS.UnityEngine.Rendering.StencilOp
---@param compareFunction : CS.UnityEngine.Rendering.CompareFunction
---@param colorWriteMask : CS.UnityEngine.Rendering.ColorWriteMask
---@param readMask : CS.System.Int32
---@param writeMask : CS.System.Int32
---@return CS.UnityEngine.Material
function CS.UnityEngine.UI.StencilMaterial.Add(baseMat, stencilID, operation, compareFunction, colorWriteMask, readMask, writeMask)
end

---@param customMat : CS.UnityEngine.Material
function CS.UnityEngine.UI.StencilMaterial.Remove(customMat)
end

function CS.UnityEngine.UI.StencilMaterial.ClearAll()
end