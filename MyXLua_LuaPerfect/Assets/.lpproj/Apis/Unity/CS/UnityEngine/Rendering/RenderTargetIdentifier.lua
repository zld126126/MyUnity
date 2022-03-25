---@class CS.UnityEngine.Rendering.RenderTargetIdentifier : CS.System.ValueType
CS.UnityEngine.Rendering.RenderTargetIdentifier = {}

---@field public CS.UnityEngine.Rendering.RenderTargetIdentifier.AllDepthSlices : CS.System.Int32
CS.UnityEngine.Rendering.RenderTargetIdentifier.AllDepthSlices = nil

---@param type : CS.UnityEngine.Rendering.BuiltinRenderTextureType
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(type)
end

---@param type : CS.UnityEngine.Rendering.BuiltinRenderTextureType
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(type, mipLevel, cubeFace, depthSlice)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(name)
end

---@param name : CS.System.String
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(name, mipLevel, cubeFace, depthSlice)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(nameID)
end

---@param nameID : CS.System.Int32
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(nameID, mipLevel, cubeFace, depthSlice)
end

---@param renderTargetIdentifier : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(renderTargetIdentifier, mipLevel, cubeFace, depthSlice)
end

---@param tex : CS.UnityEngine.Texture
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(tex)
end

---@param tex : CS.UnityEngine.Texture
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(tex, mipLevel, cubeFace, depthSlice)
end

---@param buf : CS.UnityEngine.RenderBuffer
---@param mipLevel : CS.System.Int32
---@param cubeFace : CS.UnityEngine.CubemapFace
---@param depthSlice : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier(buf, mipLevel, cubeFace, depthSlice)
end

---@param type : CS.UnityEngine.Rendering.BuiltinRenderTextureType
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(type)
end

---@param name : CS.System.String
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(name)
end

---@param nameID : CS.System.Int32
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(nameID)
end

---@param tex : CS.UnityEngine.Texture
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(tex)
end

---@param buf : CS.UnityEngine.RenderBuffer
---@return CS.UnityEngine.Rendering.RenderTargetIdentifier
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Implicit(buf)
end

---@return CS.System.String
function CS.UnityEngine.Rendering.RenderTargetIdentifier:ToString()
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.RenderTargetIdentifier:GetHashCode()
end

---@param rhs : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetIdentifier:Equals(rhs)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetIdentifier:Equals(obj)
end

---@param lhs : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs : CS.UnityEngine.Rendering.RenderTargetIdentifier
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.RenderTargetIdentifier.op_Inequality(lhs, rhs)
end