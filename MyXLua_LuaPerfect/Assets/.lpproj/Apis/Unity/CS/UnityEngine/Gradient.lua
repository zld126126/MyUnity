---@class CS.UnityEngine.Gradient : CS.System.Object
CS.UnityEngine.Gradient = {}

---@property readwrite CS.UnityEngine.Gradient.colorKeys : CS.UnityEngine.GradientColorKey[]
CS.UnityEngine.Gradient.colorKeys = nil

---@property readwrite CS.UnityEngine.Gradient.alphaKeys : CS.UnityEngine.GradientAlphaKey[]
CS.UnityEngine.Gradient.alphaKeys = nil

---@property readwrite CS.UnityEngine.Gradient.mode : CS.UnityEngine.GradientMode
CS.UnityEngine.Gradient.mode = nil

---@return CS.UnityEngine.Gradient
function CS.UnityEngine.Gradient()
end

---@param time : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Gradient:Evaluate(time)
end

---@param colorKeys : CS.UnityEngine.GradientColorKey[]
---@param alphaKeys : CS.UnityEngine.GradientAlphaKey[]
function CS.UnityEngine.Gradient:SetKeys(colorKeys, alphaKeys)
end

---@param o : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Gradient:Equals(o)
end

---@param other : CS.UnityEngine.Gradient
---@return CS.System.Boolean
function CS.UnityEngine.Gradient:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.Gradient:GetHashCode()
end