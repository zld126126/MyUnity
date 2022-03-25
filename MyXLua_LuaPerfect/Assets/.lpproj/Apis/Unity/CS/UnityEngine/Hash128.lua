---@class CS.UnityEngine.Hash128 : CS.System.ValueType
CS.UnityEngine.Hash128 = {}

---@property readonly CS.UnityEngine.Hash128.isValid : CS.System.Boolean
CS.UnityEngine.Hash128.isValid = nil

---@param u32_0 : CS.System.UInt32
---@param u32_1 : CS.System.UInt32
---@param u32_2 : CS.System.UInt32
---@param u32_3 : CS.System.UInt32
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128(u32_0, u32_1, u32_2, u32_3)
end

---@param u64_0 : CS.System.UInt64
---@param u64_1 : CS.System.UInt64
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128(u64_0, u64_1)
end

---@param rhs : CS.UnityEngine.Hash128
---@return CS.System.Int32
function CS.UnityEngine.Hash128:CompareTo(rhs)
end

---@return CS.System.String
function CS.UnityEngine.Hash128:ToString()
end

---@param hashString : CS.System.String
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128.Parse(hashString)
end

---@param data : CS.System.String
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128.Compute(data)
end

---@param val : CS.System.Int32
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128.Compute(val)
end

---@param val : CS.System.Single
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128.Compute(val)
end

---@param data : CS.System.VoidPointer
---@param size : CS.System.UInt64
---@return CS.UnityEngine.Hash128
function CS.UnityEngine.Hash128.Compute(data, size)
end

---@param data : CS.System.String
function CS.UnityEngine.Hash128:Append(data)
end

---@param val : CS.System.Int32
function CS.UnityEngine.Hash128:Append(val)
end

---@param val : CS.System.Single
function CS.UnityEngine.Hash128:Append(val)
end

---@param data : CS.System.VoidPointer
---@param size : CS.System.UInt64
function CS.UnityEngine.Hash128:Append(data, size)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Hash128:Equals(obj)
end

---@param obj : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Hash128:Equals(obj)
end

---@return CS.System.Int32
function CS.UnityEngine.Hash128:GetHashCode()
end

---@param obj : CS.System.Object
---@return CS.System.Int32
function CS.UnityEngine.Hash128:CompareTo(obj)
end

---@param hash1 : CS.UnityEngine.Hash128
---@param hash2 : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Hash128.op_Equality(hash1, hash2)
end

---@param hash1 : CS.UnityEngine.Hash128
---@param hash2 : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Hash128.op_Inequality(hash1, hash2)
end

---@param x : CS.UnityEngine.Hash128
---@param y : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Hash128.op_LessThan(x, y)
end

---@param x : CS.UnityEngine.Hash128
---@param y : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Hash128.op_GreaterThan(x, y)
end