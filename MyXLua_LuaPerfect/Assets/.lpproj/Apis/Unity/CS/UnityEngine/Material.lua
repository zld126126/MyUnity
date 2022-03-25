---@class CS.UnityEngine.Material : CS.UnityEngine.Object
CS.UnityEngine.Material = {}

---@property readwrite CS.UnityEngine.Material.shader : CS.UnityEngine.Shader
CS.UnityEngine.Material.shader = nil

---@property readwrite CS.UnityEngine.Material.color : CS.UnityEngine.Color
CS.UnityEngine.Material.color = nil

---@property readwrite CS.UnityEngine.Material.mainTexture : CS.UnityEngine.Texture
CS.UnityEngine.Material.mainTexture = nil

---@property readwrite CS.UnityEngine.Material.mainTextureOffset : CS.UnityEngine.Vector2
CS.UnityEngine.Material.mainTextureOffset = nil

---@property readwrite CS.UnityEngine.Material.mainTextureScale : CS.UnityEngine.Vector2
CS.UnityEngine.Material.mainTextureScale = nil

---@property readwrite CS.UnityEngine.Material.renderQueue : CS.System.Int32
CS.UnityEngine.Material.renderQueue = nil

---@property readwrite CS.UnityEngine.Material.globalIlluminationFlags : CS.UnityEngine.MaterialGlobalIlluminationFlags
CS.UnityEngine.Material.globalIlluminationFlags = nil

---@property readwrite CS.UnityEngine.Material.doubleSidedGI : CS.System.Boolean
CS.UnityEngine.Material.doubleSidedGI = nil

---@property readwrite CS.UnityEngine.Material.enableInstancing : CS.System.Boolean
CS.UnityEngine.Material.enableInstancing = nil

---@property readonly CS.UnityEngine.Material.passCount : CS.System.Int32
CS.UnityEngine.Material.passCount = nil

---@property readwrite CS.UnityEngine.Material.shaderKeywords : CS.System.String[]
CS.UnityEngine.Material.shaderKeywords = nil

---@param shader : CS.UnityEngine.Shader
---@return CS.UnityEngine.Material
function CS.UnityEngine.Material(shader)
end

---@param source : CS.UnityEngine.Material
---@return CS.UnityEngine.Material
function CS.UnityEngine.Material(source)
end

---@param contents : CS.System.String
---@return CS.UnityEngine.Material
function CS.UnityEngine.Material(contents)
end

---@param scriptContents : CS.System.String
---@return CS.UnityEngine.Material
function CS.UnityEngine.Material.Create(scriptContents)
end

---@param nameID : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Material:HasProperty(nameID)
end

---@param name : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Material:HasProperty(name)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Material:EnableKeyword(keyword)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Material:DisableKeyword(keyword)
end

---@param keyword : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Material:IsKeywordEnabled(keyword)
end

---@param passName : CS.System.String
---@param enabled : CS.System.Boolean
function CS.UnityEngine.Material:SetShaderPassEnabled(passName, enabled)
end

---@param passName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Material:GetShaderPassEnabled(passName)
end

---@param pass : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.Material:GetPassName(pass)
end

---@param passName : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Material:FindPass(passName)
end

---@param tag : CS.System.String
---@param val : CS.System.String
function CS.UnityEngine.Material:SetOverrideTag(tag, val)
end

---@param tag : CS.System.String
---@param searchFallbacks : CS.System.Boolean
---@param defaultValue : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Material:GetTag(tag, searchFallbacks, defaultValue)
end

---@param tag : CS.System.String
---@param searchFallbacks : CS.System.Boolean
---@return CS.System.String
function CS.UnityEngine.Material:GetTag(tag, searchFallbacks)
end

---@param start : CS.UnityEngine.Material
---@param end_ : CS.UnityEngine.Material
---@param t : CS.System.Single
function CS.UnityEngine.Material:Lerp(start, end_, t)
end

---@param pass : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Material:SetPass(pass)
end

---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Material:CopyPropertiesFromMaterial(mat)
end

---@return CS.System.Int32
function CS.UnityEngine.Material:ComputeCRC()
end

---@return CS.System.String[]
function CS.UnityEngine.Material:GetTexturePropertyNames()
end

---@return CS.System.Int32[]
function CS.UnityEngine.Material:GetTexturePropertyNameIDs()
end

---@param outNames : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetTexturePropertyNames(outNames)
end

---@param outNames : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetTexturePropertyNameIDs(outNames)
end

---@param name : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.Material:SetFloat(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.Material:SetFloat(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.System.Int32
function CS.UnityEngine.Material:SetInt(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Int32
function CS.UnityEngine.Material:SetInt(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Material:SetColor(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Material:SetColor(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Material:SetVector(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Material:SetVector(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Material:SetMatrix(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Material:SetMatrix(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.Material:SetTexture(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.Material:SetTexture(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Material:SetTexture(name, value, element)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Material:SetTexture(nameID, value, element)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Material:SetBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Material:SetBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Material:SetBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Material:SetBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Material:SetConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Material:SetConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Material:SetConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Material:SetConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Material:SetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Material:SetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetColorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetColorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Color[]
function CS.UnityEngine.Material:SetColorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Color[]
function CS.UnityEngine.Material:SetColorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Material:SetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Material:SetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:SetMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Material:SetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Material:SetMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.Material:GetFloat(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.Material:GetFloat(nameID)
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Material:GetInt(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Material:GetInt(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Color
function CS.UnityEngine.Material:GetColor(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Material:GetColor(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Material:GetVector(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Material:GetVector(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Material:GetMatrix(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Material:GetMatrix(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Texture
function CS.UnityEngine.Material:GetTexture(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Texture
function CS.UnityEngine.Material:GetTexture(nameID)
end

---@param name : CS.System.String
---@return CS.System.Single[]
function CS.UnityEngine.Material:GetFloatArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single[]
function CS.UnityEngine.Material:GetFloatArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Material:GetColorArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.Material:GetColorArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.Material:GetVectorArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.Material:GetVectorArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Material:GetMatrixArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Material:GetMatrixArray(nameID)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetColorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetColorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Material:GetMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector2
function CS.UnityEngine.Material:SetTextureOffset(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector2
function CS.UnityEngine.Material:SetTextureOffset(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector2
function CS.UnityEngine.Material:SetTextureScale(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector2
function CS.UnityEngine.Material:SetTextureScale(nameID, value)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Material:GetTextureOffset(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Material:GetTextureOffset(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Material:GetTextureScale(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Material:GetTextureScale(nameID)
end