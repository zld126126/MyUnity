---@class CS.UnityEngine.Vector2Int : CS.System.ValueType
CS.UnityEngine.Vector2Int = {}

---@property readwrite CS.UnityEngine.Vector2Int.x : CS.System.Int32
CS.UnityEngine.Vector2Int.x = nil

---@property readwrite CS.UnityEngine.Vector2Int.y : CS.System.Int32
CS.UnityEngine.Vector2Int.y = nil

---@property readwrite CS.UnityEngine.Vector2Int.Item : CS.System.Int32
CS.UnityEngine.Vector2Int.Item = nil

---@property readonly CS.UnityEngine.Vector2Int.magnitude : CS.System.Single
CS.UnityEngine.Vector2Int.magnitude = nil

---@property readonly CS.UnityEngine.Vector2Int.sqrMagnitude : CS.System.Int32
CS.UnityEngine.Vector2Int.sqrMagnitude = nil

---@property readonly CS.UnityEngine.Vector2Int.zero : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.zero = nil

---@property readonly CS.UnityEngine.Vector2Int.one : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.one = nil

---@property readonly CS.UnityEngine.Vector2Int.up : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.up = nil

---@property readonly CS.UnityEngine.Vector2Int.down : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.down = nil

---@property readonly CS.UnityEngine.Vector2Int.left : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.left = nil

---@property readonly CS.UnityEngine.Vector2Int.right : CS.UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int.right = nil

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int(x, y)
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
function CS.UnityEngine.Vector2Int:Set(x, y)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.UnityEngine.Vector2Int
---@return CS.System.Single
function CS.UnityEngine.Vector2Int.Distance(a, b)
end

---@param lhs : CS.UnityEngine.Vector2Int
---@param rhs : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.Min(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector2Int
---@param rhs : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.Max(lhs, rhs)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.Scale(a, b)
end

---@param scale : CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int:Scale(scale)
end

---@param min : CS.UnityEngine.Vector2Int
---@param max : CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int:Clamp(min, max)
end

---@param v : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Vector2Int.op_Implicit(v)
end

---@param v : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector3Int
function CS.UnityEngine.Vector2Int.op_Explicit(v)
end

---@param v : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.FloorToInt(v)
end

---@param v : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.CeilToInt(v)
end

---@param v : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.RoundToInt(v)
end

---@param v : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_UnaryNegation(v)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Addition(a, b)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Subtraction(a, b)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Multiply(a, b)
end

---@param a : CS.System.Int32
---@param b : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.System.Int32
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Multiply(a, b)
end

---@param a : CS.UnityEngine.Vector2Int
---@param b : CS.System.Int32
---@return CS.UnityEngine.Vector2Int
function CS.UnityEngine.Vector2Int.op_Division(a, b)
end

---@param lhs : CS.UnityEngine.Vector2Int
---@param rhs : CS.UnityEngine.Vector2Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector2Int.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Vector2Int
---@param rhs : CS.UnityEngine.Vector2Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector2Int.op_Inequality(lhs, rhs)
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Vector2Int:Equals(other)
end

---@param other : CS.UnityEngine.Vector2Int
---@return CS.System.Boolean
function CS.UnityEngine.Vector2Int:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.Vector2Int:GetHashCode()
end

---@return CS.System.String
function CS.UnityEngine.Vector2Int:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Vector2Int:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Vector2Int:ToString(format, formatProvider)
end