---@class CS.UnityEngine.ShaderVariantCollection : CS.UnityEngine.Object
CS.UnityEngine.ShaderVariantCollection = {}

---@property readonly CS.UnityEngine.ShaderVariantCollection.shaderCount : CS.System.Int32
CS.UnityEngine.ShaderVariantCollection.shaderCount = nil

---@property readonly CS.UnityEngine.ShaderVariantCollection.variantCount : CS.System.Int32
CS.UnityEngine.ShaderVariantCollection.variantCount = nil

---@property readonly CS.UnityEngine.ShaderVariantCollection.isWarmedUp : CS.System.Boolean
CS.UnityEngine.ShaderVariantCollection.isWarmedUp = nil

---@return CS.UnityEngine.ShaderVariantCollection
function CS.UnityEngine.ShaderVariantCollection()
end

function CS.UnityEngine.ShaderVariantCollection:Clear()
end

function CS.UnityEngine.ShaderVariantCollection:WarmUp()
end

---@param variant : CS.UnityEngine.ShaderVariant
---@return CS.System.Boolean
function CS.UnityEngine.ShaderVariantCollection:Add(variant)
end

---@param variant : CS.UnityEngine.ShaderVariant
---@return CS.System.Boolean
function CS.UnityEngine.ShaderVariantCollection:Remove(variant)
end

---@param variant : CS.UnityEngine.ShaderVariant
---@return CS.System.Boolean
function CS.UnityEngine.ShaderVariantCollection:Contains(variant)
end