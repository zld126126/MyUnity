---@class CS.Unity.Collections.Enumerator : CS.System.ValueType
CS.Unity.Collections.Enumerator = {}

---@property readonly CS.Unity.Collections.Enumerator.Current : CS.T
CS.Unity.Collections.Enumerator.Current = nil

---@param array : CS.Unity.Collections.NativeSlice
---@return CS.Unity.Collections.Enumerator
function CS.Unity.Collections.Enumerator(array)
end

function CS.Unity.Collections.Enumerator:Dispose()
end

---@return CS.System.Boolean
function CS.Unity.Collections.Enumerator:MoveNext()
end

function CS.Unity.Collections.Enumerator:Reset()
end