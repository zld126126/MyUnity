---@class CS.Unity.Collections.ReadOnly : CS.System.ValueType
CS.Unity.Collections.ReadOnly = {}

---@property readonly CS.Unity.Collections.ReadOnly.Length : CS.System.Int32
CS.Unity.Collections.ReadOnly.Length = nil

---@property readonly CS.Unity.Collections.ReadOnly.Item : CS.T
CS.Unity.Collections.ReadOnly.Item = nil

---@param array : CS.T[]
function CS.Unity.Collections.ReadOnly:CopyTo(array)
end

---@param array : CS.Unity.Collections.NativeArray
function CS.Unity.Collections.ReadOnly:CopyTo(array)
end

---@return CS.T[]
function CS.Unity.Collections.ReadOnly:ToArray()
end