---@class CS.UnityEngine.Vector3Int : CS.System.ValueType
CS.UnityEngine.Vector3Int = {}

---@property readwrite CS.UnityEngine.Vector3Int.x : CS.System.Int32
CS.UnityEngine.Vector3Int.x = nil

---@property readwrite CS.UnityEngine.Vector3Int.y : CS.System.Int32
CS.UnityEngine.Vector3Int.y = nil

---@property readwrite CS.UnityEngine.Vector3Int.z : CS.System.Int32
CS.UnityEngine.Vector3Int.z = nil

---@property readwrite CS.UnityEngine.Vector3Int.Item : CS.System.Int32
CS.UnityEngine.Vector3Int.Item = nil

---@property readonly CS.UnityEngine.Vector3Int.magnitude : CS.System.Single
CS.UnityEngine.Vector3Int.magnitude = nil

---@property readonly CS.UnityEngine.Vector3Int.sqrMagnitude : CS.System.Int32
CS.UnityEngine.Vector3Int.sqrMagnitude = nil

---@property readonly CS.UnityEngine.Vector3Int.zero : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.zero = nil

---@property readonly CS.UnityEngine.Vector3Int.one : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.one = nil

---@property readonly CS.UnityEngine.Vector3Int.up : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.up = nil

---@property readonly CS.UnityEngine.Vector3Int.down : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.down = nil

---@property readonly CS.UnityEngine.Vector3Int.left : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.left = nil

---@property readonly CS.UnityEngine.Vector3Int.right : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.right = nil

---@property readonly CS.UnityEngine.Vector3Int.forward : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.forward = nil

---@property readonly CS.UnityEngine.Vector3Int.back : CS.UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int.back = nil

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int(x, y, z)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param z : CS.System.Int32
function CS.UnityEngine.Vector3Int:Set(x, y, z)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.UnityEngine.Vector3Int
---@return CS.System.Single
function CS.UnityEngine.Vector3Int.Distance(a, b)
end

---@param lhs : CS.UnityEngine.Vector3Int
---@param rhs : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.Min(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector3Int
---@param rhs : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.Max(lhs, rhs)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.Scale(a, b)
end

---@param scale : CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int:Scale(scale)
end

---@param min : CS.UnityEngine.Vector3Int
---@param max : CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int:Clamp(min, max)
end

---@param v : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Vector3Int.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector3Int.op_Explicit(v)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.FloorToInt(v)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.CeilToInt(v)
end

---@param v : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.RoundToInt(v)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_UnaryNegation(a)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.System.Int32
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Multiply(a, b)
end

---@param a : CS.System.Int32
---@param b : CS.UnityEngine.Vector3Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Vector3Int
---@param b : CS.System.Int32
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector3Int.op_Division(a, b)
end

---@param lhs : CS.UnityEngine.Vector3Int
---@param rhs : CS.UnityEngine.Vector3Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector3Int.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector3Int
---@param rhs : CS.UnityEngine.Vector3Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector3Int.op_Inequality(lhs, rhs)
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Vector3Int:Equals(other)
end

---@param other : CS.UnityEngine.Vector3Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector3Int:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.Vector3Int:GetHashCode()
end

---@return CS.System.String
function CS.UnityEngine.Vector3Int:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Vector3Int:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Vector3Int:ToString(format, formatProvider)
end