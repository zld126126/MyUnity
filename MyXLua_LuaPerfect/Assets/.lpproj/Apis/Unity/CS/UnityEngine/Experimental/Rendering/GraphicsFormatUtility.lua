---@class CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility : CS.System.Object
CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility = {}

---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility()
end

---@param format : CS.UnityEngine.TextureFormat
---@param isSRGB : CS.System.Boolean
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetGraphicsFormat(format, isSRGB)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.TextureFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetTextureFormat(format)
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@param isSRGB : CS.System.Boolean
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetGraphicsFormat(format, isSRGB)
end

---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetGraphicsFormat(format, readWrite)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSRGBFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSwizzleFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSRGBFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetLinearFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.RenderTextureFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetRenderTextureFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetColorComponentCount(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetAlphaComponentCount(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetComponentCount(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.String
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetFormatString(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCompressedFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPackedFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.Is16BitPackedFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Experimental.Rendering.GraphicsFormat
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ConvertToAlphaFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsAlphaOnlyFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsAlphaTestFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.HasAlphaChannel(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDepthFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsStencilFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIEEE754Format(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsFloatFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsHalfFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUnsignedFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSignedFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsNormFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUNormFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSNormFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIntegerFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUIntFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSIntFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsXRFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDXTCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsRGTCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBPTCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPVRTCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsETCFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsEACFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsASTCFormat(format)
end

---@param format : CS.UnityEngine.TextureFormat
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCrunchFormat(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Rendering.FormatSwizzle
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleR(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Rendering.FormatSwizzle
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleG(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Rendering.FormatSwizzle
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleB(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.Rendering.FormatSwizzle
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleA(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockSize(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockWidth(format)
end

---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockHeight(format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ComputeMipmapSize(width, height, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param depth : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.System.UInt32
function CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ComputeMipmapSize(width, height, depth, format)
end