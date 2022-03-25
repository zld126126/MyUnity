---@class CS.UnityEngine.PositionEnumerator : CS.System.ValueType
CS.UnityEngine.PositionEnumerator = {}

---@property readonly CS.UnityEngine.PositionEnumerator.Current : CS.UnityEngine.Vector2Int
CS.UnityEngine.PositionEnumerator.Current = nil

---@param min : CS.UnityEngine.Vector2Int
---@param max : CS.UnityEngine.Vector2Int
---@return CS.UnityEngine.PositionEnumerator
function CS.UnityEngine.PositionEnumerator(min, max)
end

---@return CS.UnityEngine.PositionEnumerator
function CS.UnityEngine.PositionEnumerator:GetEnumerator()
end

---@return CS.System.Boolean
function CS.UnityEngine.PositionEnumerator:MoveNext()
end

function CS.UnityEngine.PositionEnumerator:Reset()
end