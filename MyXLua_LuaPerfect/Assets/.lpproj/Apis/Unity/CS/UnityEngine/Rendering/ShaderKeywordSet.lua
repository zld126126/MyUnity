---@class CS.UnityEngine.Rendering.ShaderKeywordSet : CS.System.ValueType
CS.UnityEngine.Rendering.ShaderKeywordSet = {}

---@param keyword : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShaderKeywordSet:IsEnabled(keyword)
end

---@param keyword : CS.UnityEngine.Rendering.ShaderKeyword
function CS.UnityEngine.Rendering.ShaderKeywordSet:Enable(keyword)
end

---@param keyword : CS.UnityEngine.Rendering.ShaderKeyword
function CS.UnityEngine.Rendering.ShaderKeywordSet:Disable(keyword)
end

---@return CS.UnityEngine.Rendering.ShaderKeyword[]
function CS.UnityEngine.Rendering.ShaderKeywordSet:GetShaderKeywords()
end