---@class CS.UnityEngine.MaterialPropertyBlock : CS.System.Object
CS.UnityEngine.MaterialPropertyBlock = {}

---@property readonly CS.UnityEngine.MaterialPropertyBlock.isEmpty : CS.System.Boolean
CS.UnityEngine.MaterialPropertyBlock.isEmpty = nil

---@return CS.UnityEngine.MaterialPropertyBlock
function CS.UnityEngine.MaterialPropertyBlock()
end

---@param name : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:AddFloat(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:AddFloat(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:AddVector(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:AddVector(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:AddColor(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:AddColor(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:AddMatrix(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:AddMatrix(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:AddTexture(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:AddTexture(nameID, value)
end

function CS.UnityEngine.MaterialPropertyBlock:Clear()
end

---@param name : CS.System.String
---@param value : CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:SetFloat(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:SetFloat(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetInt(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetInt(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:SetVector(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:SetVector(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:SetColor(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:SetColor(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:SetMatrix(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:SetMatrix(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.MaterialPropertyBlock:SetBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.MaterialPropertyBlock:SetBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.MaterialPropertyBlock:SetBuffer(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.MaterialPropertyBlock:SetBuffer(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:SetTexture(name, value)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:SetTexture(nameID, value)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.MaterialPropertyBlock:SetTexture(name, value, element)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.RenderTexture
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.MaterialPropertyBlock:SetTexture(nameID, value, element)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetConstantBuffer(name, value, offset, size)
end

---@param nameID : CS.System.Int32
---@param value : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:SetConstantBuffer(nameID, value, offset, size)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.MaterialPropertyBlock:SetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.MaterialPropertyBlock:SetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.MaterialPropertyBlock:SetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.MaterialPropertyBlock:SetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:SetMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.MaterialPropertyBlock:SetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.MaterialPropertyBlock:SetMatrixArray(nameID, values)
end

---@param name : CS.System.String
---@return CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:GetFloat(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.MaterialPropertyBlock:GetFloat(nameID)
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:GetInt(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:GetInt(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:GetVector(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.MaterialPropertyBlock:GetVector(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:GetColor(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.MaterialPropertyBlock:GetColor(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:GetMatrix(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.MaterialPropertyBlock:GetMatrix(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:GetTexture(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Texture
function CS.UnityEngine.MaterialPropertyBlock:GetTexture(nameID)
end

---@param name : CS.System.String
---@return CS.System.Single[]
function CS.UnityEngine.MaterialPropertyBlock:GetFloatArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.System.Single[]
function CS.UnityEngine.MaterialPropertyBlock:GetFloatArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.MaterialPropertyBlock:GetVectorArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.MaterialPropertyBlock:GetVectorArray(nameID)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.MaterialPropertyBlock:GetMatrixArray(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.MaterialPropertyBlock:GetMatrixArray(nameID)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetFloatArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetFloatArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetVectorArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetVectorArray(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetMatrixArray(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:GetMatrixArray(nameID, values)
end

---@param lightProbes : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes)
end

---@param lightProbes : CS.UnityEngine.Rendering.SphericalHarmonicsL2[]
function CS.UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes)
end

---@param lightProbes : CS.System.Collections.Generic.List
---@param sourceStart : CS.System.Int32
---@param destStart : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes, sourceStart, destStart, count)
end

---@param lightProbes : CS.UnityEngine.Rendering.SphericalHarmonicsL2[]
---@param sourceStart : CS.System.Int32
---@param destStart : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes, sourceStart, destStart, count)
end

---@param occlusionProbes : CS.System.Collections.Generic.List
function CS.UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes)
end

---@param occlusionProbes : CS.UnityEngine.Vector4[]
function CS.UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes)
end

---@param occlusionProbes : CS.System.Collections.Generic.List
---@param sourceStart : CS.System.Int32
---@param destStart : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes, sourceStart, destStart, count)
end

---@param occlusionProbes : CS.UnityEngine.Vector4[]
---@param sourceStart : CS.System.Int32
---@param destStart : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes, sourceStart, destStart, count)
end