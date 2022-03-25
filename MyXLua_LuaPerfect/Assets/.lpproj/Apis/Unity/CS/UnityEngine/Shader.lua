---@class CS.UnityEngine.Shader : CS.UnityEngine.Object
CS.UnityEngine.Shader = {}

---@property readwrite CS.UnityEngine.Shader.globalShaderHardwareTier : CS.UnityEngine.Rendering.ShaderHardwareTier
CS.UnityEngine.Shader.globalShaderHardwareTier = nil

---@property readwrite CS.UnityEngine.Shader.maximumLOD : CS.System.Int32
CS.UnityEngine.Shader.maximumLOD = nil

---@property readwrite CS.UnityEngine.Shader.globalMaximumLOD : CS.System.Int32
CS.UnityEngine.Shader.globalMaximumLOD = nil

---@property readonly CS.UnityEngine.Shader.isSupported : CS.System.Boolean
CS.UnityEngine.Shader.isSupported = nil

---@property readwrite CS.UnityEngine.Shader.globalRenderPipeline : CS.System.String
CS.UnityEngine.Shader.globalRenderPipeline = nil

---@property readonly CS.UnityEngine.Shader.renderQueue : CS.System.Int32
CS.UnityEngine.Shader.renderQueue = nil

---@property readonly CS.UnityEngine.Shader.passCount : CS.System.Int32
CS.UnityEngine.Shader.passCount = nil

---@param propertyName : CS.System.String
---@param mode : CS.UnityEngine.TexGenMode
function CS.UnityEngine.Shader.SetGlobalTexGenMode(propertyName, mode)
end

---@param propertyName : CS.System.String
---@param matrixName : CS.System.String
function CS.UnityEngine.Shader.SetGlobalTextureMatrixName(propertyName, matrixName)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Shader
function CS.UnityEngine.Shader.Find(name)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Shader.EnableKeyword(keyword)
end

---@param keyword : CS.System.String
function CS.UnityEngine.Shader.DisableKeyword(keyword)
end

---@param keyword : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Shader.IsKeywordEnabled(keyword)
end

function CS.UnityEngine.Shader.WarmupAllShaders()
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Shader.PropertyToID(name)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Shader
function CS.UnityEngine.Shader:GetDependency(name)
end

---@param passIndex : CS.System.Int32
---@param tagName : CS.UnityEngine.Rendering.ShaderTagId
---@return CS.UnityEngine.Rendering.ShaderTagId
function CS.UnityEngine.Shader:FindPassTagValue(passIndex, tagName)
end

---@param name : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.Shader.SetGlobalFloat(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.Shader.SetGlobalFloat(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalInt(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalInt(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Shader.SetGlobalVector(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.Shader.SetGlobalVector(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Shader.SetGlobalColor(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.Shader.SetGlobalColor(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Shader.SetGlobalMatrix(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Shader.SetGlobalMatrix(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.Shader.SetGlobalTexture(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.Shader.SetGlobalTexture(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Shader.SetGlobalTexture(name, value, element)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.Shader.SetGlobalTexture(nameID, value, element)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Shader.SetGlobalBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Shader.SetGlobalBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Shader.SetGlobalBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Shader.SetGlobalBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Shader.SetGlobalConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Shader.SetGlobalFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Shader.SetGlobalFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Shader.SetGlobalVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Shader.SetGlobalVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.SetGlobalMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Shader.SetGlobalMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Shader.SetGlobalMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.Shader.GetGlobalFloat(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.Shader.GetGlobalFloat(nameID)
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Shader.GetGlobalInt(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Shader.GetGlobalInt(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Shader.GetGlobalVector(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Shader.GetGlobalVector(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Color
function CS.UnityEngine.Shader.GetGlobalColor(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Shader.GetGlobalColor(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Shader.GetGlobalMatrix(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Shader.GetGlobalMatrix(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Texture
function CS.UnityEngine.Shader.GetGlobalTexture(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Texture
function CS.UnityEngine.Shader.GetGlobalTexture(nameID)
end

---@param name : CS.System.String
---@return CS.System.Single[]
function CS.UnityEngine.Shader.GetGlobalFloatArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single[]
function CS.UnityEngine.Shader.GetGlobalFloatArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.Shader.GetGlobalVectorArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.Shader.GetGlobalVectorArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Shader.GetGlobalMatrixArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Shader.GetGlobalMatrixArray(nameID)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.Shader.GetGlobalMatrixArray(nameID, values)
end

---@return CS.System.Int32
function CS.UnityEngine.Shader:GetPropertyCount()
end

---@param propertyName : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Shader:FindPropertyIndex(propertyName)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.Shader:GetPropertyName(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Shader:GetPropertyNameId(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.UnityEngine.Rendering.ShaderPropertyType
function CS.UnityEngine.Shader:GetPropertyType(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.Shader:GetPropertyDescription(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.UnityEngine.Rendering.ShaderPropertyFlags
function CS.UnityEngine.Shader:GetPropertyFlags(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.String[]
function CS.UnityEngine.Shader:GetPropertyAttributes(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.Shader:GetPropertyDefaultFloatValue(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Shader:GetPropertyDefaultVectorValue(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Shader:GetPropertyRangeLimits(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.UnityEngine.Rendering.TextureDimension
function CS.UnityEngine.Shader:GetPropertyTextureDimension(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.Shader:GetPropertyTextureDefaultName(propertyIndex)
end

---@param propertyIndex : CS.System.Int32
---@param stackName : CS.System.String
---@param layerIndex : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Shader:FindTextureStack(propertyIndex, stackName, layerIndex)
end