---@class CS.UnityEngine.ComputeShader : CS.UnityEngine.Object
CS.UnityEngine.ComputeShader = {}

---@property readwrite CS.UnityEngine.ComputeShader.shaderKeywords : CS.System.String[]
CS.UnityEngine.ComputeShader.shaderKeywords = nil

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.ComputeShader:FindKernel(name)
end

---@param name : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.ComputeShader:HasKernel(name)
end

---@param nameID : CS.System.Int32
---@param val : CS.System.Single
function CS.UnityEngine.ComputeShader:SetFloat(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetInt(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.ComputeShader:SetVector(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.ComputeShader:SetMatrix(nameID, val)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.ComputeShader:SetVectorArray(nameID, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.ComputeShader:SetMatrixArray(nameID, values)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param texture : CS.UnityEngine.Texture
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, nameID, texture, mipLevel)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param globalTextureNameID : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetTextureFromGlobal(kernelIndex, nameID, globalTextureNameID)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeShader:SetBuffer(kernelIndex, nameID, buffer)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.ComputeShader:SetBuffer(kernelIndex, nameID, buffer)
end

---@param kernelIndex : CS.System.Int32
---@param x : CS.System.UInt32
---@param y : CS.System.UInt32
---@param z : CS.System.UInt32
function CS.UnityEngine.ComputeShader:GetKernelThreadGroupSizes(kernelIndex, x, y, z)
end

---@param kernelIndex : CS.System.Int32
---@param threadGroupsX : CS.System.Int32
---@param threadGroupsY : CS.System.Int32
---@param threadGroupsZ : CS.System.Int32
function CS.UnityEngine.ComputeShader:Dispatch(kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ)
end

---@param keyword : CS.System.String
function CS.UnityEngine.ComputeShader:EnableKeyword(keyword)
end

---@param keyword : CS.System.String
function CS.UnityEngine.ComputeShader:DisableKeyword(keyword)
end

---@param keyword : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.ComputeShader:IsKeywordEnabled(keyword)
end

---@param name : CS.System.String
---@param val : CS.System.Single
function CS.UnityEngine.ComputeShader:SetFloat(name, val)
end

---@param name : CS.System.String
---@param val : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetInt(name, val)
end

---@param name : CS.System.String
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.ComputeShader:SetVector(name, val)
end

---@param name : CS.System.String
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.ComputeShader:SetMatrix(name, val)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.ComputeShader:SetVectorArray(name, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.ComputeShader:SetMatrixArray(name, values)
end

---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.ComputeShader:SetFloats(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.ComputeShader:SetFloats(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Int32[]
function CS.UnityEngine.ComputeShader:SetInts(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Int32[]
function CS.UnityEngine.ComputeShader:SetInts(nameID, values)
end

---@param name : CS.System.String
---@param val : CS.System.Boolean
function CS.UnityEngine.ComputeShader:SetBool(name, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.System.Boolean
function CS.UnityEngine.ComputeShader:SetBool(nameID, val)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, nameID, texture)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, name, texture)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param texture : CS.UnityEngine.Texture
---@param mipLevel : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, name, texture, mipLevel)
end

---@param kernelIndex : CS.System.Int32
---@param nameID : CS.System.Int32
---@param texture : CS.UnityEngine.RenderTexture
---@param mipLevel : CS.System.Int32
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, nameID, texture, mipLevel, element)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param texture : CS.UnityEngine.RenderTexture
---@param mipLevel : CS.System.Int32
---@param element : CS.UnityEngine.Rendering.RenderTextureSubElement
function CS.UnityEngine.ComputeShader:SetTexture(kernelIndex, name, texture, mipLevel, element)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param globalTextureName : CS.System.String
function CS.UnityEngine.ComputeShader:SetTextureFromGlobal(kernelIndex, name, globalTextureName)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeShader:SetBuffer(kernelIndex, name, buffer)
end

---@param kernelIndex : CS.System.Int32
---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.ComputeShader:SetBuffer(kernelIndex, name, buffer)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetConstantBuffer(nameID, buffer, offset, size)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetConstantBuffer(name, buffer, offset, size)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetConstantBuffer(nameID, buffer, offset, size)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.ComputeShader:SetConstantBuffer(name, buffer, offset, size)
end

---@param kernelIndex : CS.System.Int32
---@param argsBuffer : CS.UnityEngine.ComputeBuffer
---@param argsOffset : CS.System.UInt32
function CS.UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer, argsOffset)
end

---@param kernelIndex : CS.System.Int32
---@param argsBuffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer)
end

---@param kernelIndex : CS.System.Int32
---@param argsBuffer : CS.UnityEngine.GraphicsBuffer
---@param argsOffset : CS.System.UInt32
function CS.UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer, argsOffset)
end

---@param kernelIndex : CS.System.Int32
---@param argsBuffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer)
end