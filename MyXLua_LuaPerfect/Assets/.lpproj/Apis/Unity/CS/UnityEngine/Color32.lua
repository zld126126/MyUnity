---@class CS.UnityEngine.Color32 : CS.System.ValueType
CS.UnityEngine.Color32 = {}

---@field public CS.UnityEngine.Color32.r : CS.System.Byte
CS.UnityEngine.Color32.r = nil

---@field public CS.UnityEngine.Color32.g : CS.System.Byte
CS.UnityEngine.Color32.g = nil

---@field public CS.UnityEngine.Color32.b : CS.System.Byte
CS.UnityEngine.Color32.b = nil

---@field public CS.UnityEngine.Color32.a : CS.System.Byte
CS.UnityEngine.Color32.a = nil

---@property readwrite CS.UnityEngine.Color32.Item : CS.System.Byte
CS.UnityEngine.Color32.Item = nil

---@param r : CS.System.Byte
---@param g : CS.System.Byte
---@param b : CS.System.Byte
---@param a : CS.System.Byte
---@return CS.UnityEngine.Color32
function CS.UnityEngine.Color32(r, g, b, a)
end

---@param c : CS.UnityEngine.Color
---@return CS.UnityEngine.Color32
function CS.UnityEngine.Color32.op_Implicit(c)
end

---@param c : CS.UnityEngine.Color32
---@return CS.UnityEngine.Color
function CS.UnityEngine.Color32.op_Implicit(c)
end

---@param a : CS.UnityEngine.Color32
---@param b : CS.UnityEngine.Color32
---@param t : CS.System.Single
---@return CS.UnityEngine.Color32
function CS.UnityEngine.Color32.Lerp(a, b, t)
end

---@param a : CS.UnityEngine.Color32
---@param b : CS.UnityEngine.Color32
---@param t : CS.System.Single
---@return CS.UnityEngine.Color32
function CS.UnityEngine.Color32.LerpUnclamped(a, b, t)
end

---@return CS.System.String
function CS.UnityEngine.Color32:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Color32:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Color32:ToString(format, formatProvider)
end