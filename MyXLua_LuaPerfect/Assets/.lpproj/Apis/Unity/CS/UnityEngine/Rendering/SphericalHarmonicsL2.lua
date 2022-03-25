---@class CS.UnityEngine.Rendering.SphericalHarmonicsL2 : CS.System.ValueType
CS.UnityEngine.Rendering.SphericalHarmonicsL2 = {}

---@property readwrite CS.UnityEngine.Rendering.SphericalHarmonicsL2.Item : CS.System.Single
CS.UnityEngine.Rendering.SphericalHarmonicsL2.Item = nil

function CS.UnityEngine.Rendering.SphericalHarmonicsL2:Clear()
end

---@param color : CS.UnityEngine.Color
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:AddAmbientLight(color)
end

---@param direction : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color
---@param intensity : CS.System.Single
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:AddDirectionalLight(direction, color, intensity)
end

---@param directions : CS.UnityEngine.Vector3[]
---@param results : CS.UnityEngine.Color[]
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:Evaluate(directions, results)
end

---@return CS.System.Int32
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:Equals(other)
end

---@param other : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SphericalHarmonicsL2:Equals(other)
end

---@param lhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs : CS.System.Single
---@return CS.UnityEngine.Rendering.SphericalHarmonicsL2
function CS.UnityEngine.Rendering.SphericalHarmonicsL2.op_Multiply(lhs, rhs)
end

---@param lhs : CS.System.Single
---@param rhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@return CS.UnityEngine.Rendering.SphericalHarmonicsL2
function CS.UnityEngine.Rendering.SphericalHarmonicsL2.op_Multiply(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@return CS.UnityEngine.Rendering.SphericalHarmonicsL2
function CS.UnityEngine.Rendering.SphericalHarmonicsL2.op_Addition(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SphericalHarmonicsL2.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs : CS.UnityEngine.Rendering.SphericalHarmonicsL2
---@return CS.System.Boolean
function CS.UnityEngine.Rendering.SphericalHarmonicsL2.op_Inequality(lhs, rhs)
end