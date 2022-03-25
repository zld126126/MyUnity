---@class CS.UnityEngine.Experimental.Rendering.RayTracingShader : CS.UnityEngine.Object
CS.UnityEngine.Experimental.Rendering.RayTracingShader = {}

---@property readonly CS.UnityEngine.Experimental.Rendering.RayTracingShader.maxRecursionDepth : CS.System.Single
CS.UnityEngine.Experimental.Rendering.RayTracingShader.maxRecursionDepth = nil

---@param nameID : CS.System.Int32
---@param val : CS.System.Single
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetFloat(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetInt(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetVector(nameID, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrix(nameID, val)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetVectorArray(nameID, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrixArray(nameID, values)
end

---@param nameID : CS.System.Int32
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetTexture(nameID, texture)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBuffer(nameID, buffer)
end

---@param nameID : CS.System.Int32
---@param accelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetAccelerationStructure(nameID, accelerationStructure)
end

---@param passName : CS.System.String
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetShaderPass(passName)
end

---@param nameID : CS.System.Int32
---@param globalTextureNameID : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetTextureFromGlobal(nameID, globalTextureNameID)
end

---@param rayGenFunctionName : CS.System.String
---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:Dispatch(rayGenFunctionName, width, height, depth, camera)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBuffer(nameID, buffer)
end

---@param name : CS.System.String
---@param val : CS.System.Single
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetFloat(name, val)
end

---@param name : CS.System.String
---@param val : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetInt(name, val)
end

---@param name : CS.System.String
---@param val : CS.UnityEngine.Vector4
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetVector(name, val)
end

---@param name : CS.System.String
---@param val : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrix(name, val)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Vector4[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetVectorArray(name, values)
end

---@param name : CS.System.String
---@param values : CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrixArray(name, values)
end

---@param name : CS.System.String
---@param values : CS.System.Single[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetFloats(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Single[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetFloats(nameID, values)
end

---@param name : CS.System.String
---@param values : CS.System.Int32[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetInts(name, values)
end

---@param nameID : CS.System.Int32
---@param values : CS.System.Int32[]
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetInts(nameID, values)
end

---@param name : CS.System.String
---@param val : CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBool(name, val)
end

---@param nameID : CS.System.Int32
---@param val : CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBool(nameID, val)
end

---@param name : CS.System.String
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetTexture(name, texture)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBuffer(name, buffer)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetBuffer(name, buffer)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetConstantBuffer(nameID, buffer, offset, size)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.ComputeBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetConstantBuffer(name, buffer, offset, size)
end

---@param nameID : CS.System.Int32
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetConstantBuffer(nameID, buffer, offset, size)
end

---@param name : CS.System.String
---@param buffer : CS.UnityEngine.GraphicsBuffer
---@param offset : CS.System.Int32
---@param size : CS.System.Int32
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetConstantBuffer(name, buffer, offset, size)
end

---@param name : CS.System.String
---@param accelerationStructure : CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetAccelerationStructure(name, accelerationStructure)
end

---@param name : CS.System.String
---@param globalTextureName : CS.System.String
function CS.UnityEngine.Experimental.Rendering.RayTracingShader:SetTextureFromGlobal(name, globalTextureName)
end