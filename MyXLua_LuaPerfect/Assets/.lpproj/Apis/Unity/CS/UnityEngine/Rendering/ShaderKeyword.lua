---@class CS.UnityEngine.Rendering.ShaderKeyword : CS.System.ValueType
CS.UnityEngine.Rendering.ShaderKeyword = {}

---@property readonly CS.UnityEngine.Rendering.ShaderKeyword.index : CS.System.Int32
CS.UnityEngine.Rendering.ShaderKeyword.index = nil

---@param keywordName : CS.System.String
---@return CS.UnityEngine.Rendering.ShaderKeyword
function CS.UnityEngine.Rendering.ShaderKeyword(keywordName)
end

---@param shader : CS.UnityEngine.Shader
---@param keywordName : CS.System.String
---@return CS.UnityEngine.Rendering.ShaderKeyword
function CS.UnityEngine.Rendering.ShaderKeyword(shader, keywordName)
end

---@param shader : CS.UnityEngine.ComputeShader
---@param keywordName : CS.System.String
---@return CS.UnityEngine.Rendering.ShaderKeyword
function CS.UnityEngine.Rendering.ShaderKeyword(shader, keywordName)
end

---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.System.String
function CS.UnityEngine.Rendering.ShaderKeyword.GetGlobalKeywordName(index)
end

---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.UnityEngine.Rendering.ShaderKeywordType
function CS.UnityEngine.Rendering.ShaderKeyword.GetGlobalKeywordType(index)
end

---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShaderKeyword.IsKeywordLocal(index)
end

---@param shader : CS.UnityEngine.Shader
---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.System.String
function CS.UnityEngine.Rendering.ShaderKeyword.GetKeywordName(shader, index)
end

---@param shader : CS.UnityEngine.Shader
---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.UnityEngine.Rendering.ShaderKeywordType
function CS.UnityEngine.Rendering.ShaderKeyword.GetKeywordType(shader, index)
end

---@param shader : CS.UnityEngine.ComputeShader
---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.System.String
function CS.UnityEngine.Rendering.ShaderKeyword.GetKeywordName(shader, index)
end

---@param shader : CS.UnityEngine.ComputeShader
---@param index : CS.UnityEngine.Rendering.ShaderKeyword
---@return CS.UnityEngine.Rendering.ShaderKeywordType
function CS.UnityEngine.Rendering.ShaderKeyword.GetKeywordType(shader, index)
end

---@return CS.System.Boolean
function CS.UnityEngine.Rendering.ShaderKeyword:IsValid()
end

---@return CS.UnityEngine.Rendering.ShaderKeywordType
function CS.UnityEngine.Rendering.ShaderKeyword:GetKeywordType()
end

---@return CS.System.String
function CS.UnityEngine.Rendering.ShaderKeyword:GetKeywordName()
end

---@return CS.System.String
function CS.UnityEngine.Rendering.ShaderKeyword:GetName()
end