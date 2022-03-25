---@class CS.UnityEngine.Color : CS.System.ValueType
CS.UnityEngine.Color = {}

---@field public CS.UnityEngine.Color.r : CS.System.Single
CS.UnityEngine.Color.r = nil

---@field public CS.UnityEngine.Color.g : CS.System.Single
CS.UnityEngine.Color.g = nil

---@field public CS.UnityEngine.Color.b : CS.System.Single
CS.UnityEngine.Color.b = nil

---@field public CS.UnityEngine.Color.a : CS.System.Single
CS.UnityEngine.Color.a = nil

---@property readonly CS.UnityEngine.Color.red : CS.UnityEngine.Color
CS.UnityEngine.Color.red = nil

---@property readonly CS.UnityEngine.Color.green : CS.UnityEngine.Color
CS.UnityEngine.Color.green = nil

---@property readonly CS.UnityEngine.Color.blue : CS.UnityEngine.Color
CS.UnityEngine.Color.blue = nil

---@property readonly CS.UnityEngine.Color.white : CS.UnityEngine.Color
CS.UnityEngine.Color.white = nil

---@property readonly CS.UnityEngine.Color.black : CS.UnityEngine.Color
CS.UnityEngine.Color.black = nil

---@property readonly CS.UnityEngine.Color.yellow : CS.UnityEngine.Color
CS.UnityEngine.Color.yellow = nil

---@property readonly CS.UnityEngine.Color.cyan : CS.UnityEngine.Color
CS.UnityEngine.Color.cyan = nil

---@property readonly CS.UnityEngine.Color.magenta : CS.UnityEngine.Color
CS.UnityEngine.Color.magenta = nil

---@property readonly CS.UnityEngine.Color.gray : CS.UnityEngine.Color
CS.UnityEngine.Color.gray = nil

---@property readonly CS.UnityEngine.Color.grey : CS.UnityEngine.Color
CS.UnityEngine.Color.grey = nil

---@property readonly CS.UnityEngine.Color.clear : CS.UnityEngine.Color
CS.UnityEngine.Color.clear = nil

---@property readonly CS.UnityEngine.Color.grayscale : CS.System.Single
CS.UnityEngine.Color.grayscale = nil

---@property readonly CS.UnityEngine.Color.linear : CS.UnityEngine.Color
CS.UnityEngine.Color.linear = nil

---@property readonly CS.UnityEngine.Color.gamma : CS.UnityEngine.Color
CS.UnityEngine.Color.gamma = nil

---@property readonly CS.UnityEngine.Color.maxColorComponent : CS.System.Single
CS.UnityEngine.Color.maxColorComponent = nil

---@property readwrite CS.UnityEngine.Color.Item : CS.System.Single
CS.UnityEngine.Color.Item = nil

---@param r : CS.System.Single
---@param g : CS.System.Single
---@param b : CS.System.Single
---@param a : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color(r, g, b, a)
end

---@param r : CS.System.Single
---@param g : CS.System.Single
---@param b : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color(r, g, b)
end

---@return CS.System.String
function CS.UnityEngine.Color:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Color:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Color:ToString(format, formatProvider)
end

---@return CS.System.Int32
function CS.UnityEngine.Color:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Color:Equals(other)
end

---@param other : CS.UnityEngine.Color
---@return CS.System.Boolean
function CS.UnityEngine.Color:Equals(other)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.UnityEngine.Color
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.UnityEngine.Color
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.UnityEngine.Color
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Multiply(a, b)
end

---@param b : CS.System.Single
---@param a : CS.UnityEngine.Color
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Multiply(b, a)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Division(a, b)
end

---@param lhs : CS.UnityEngine.Color
---@param rhs : CS.UnityEngine.Color
---@return CS.System.Boolean
function CS.UnityEngine.Color.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Color
---@param rhs : CS.UnityEngine.Color
---@return CS.System.Boolean
function CS.UnityEngine.Color.op_Inequality(lhs, rhs)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.UnityEngine.Color
---@param t : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Color
---@param b : CS.UnityEngine.Color
---@param t : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.LerpUnclamped(a, b, t)
end

---@param c : CS.UnityEngine.Color
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Color.op_Implicit(c)
end

---@param v : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.op_Implicit(v)
end

---@param rgbColor : CS.UnityEngine.Color
---@param H : CS.System.Single
---@param S : CS.System.Single
---@param V : CS.System.Single
function CS.UnityEngine.Color.RGBToHSV(rgbColor, H, S, V)
end

---@param H : CS.System.Single
---@param S : CS.System.Single
---@param V : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.HSVToRGB(H, S, V)
end

---@param H : CS.System.Single
---@param S : CS.System.Single
---@param V : CS.System.Single
---@param hdr : CS.System.Boolean
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color.HSVToRGB(H, S, V, hdr)
end