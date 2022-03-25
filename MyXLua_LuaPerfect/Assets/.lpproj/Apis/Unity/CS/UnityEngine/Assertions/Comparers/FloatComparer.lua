---@module CS.UnityEngine.Assertions.Comparers
CS.UnityEngine.Assertions.Comparers = {}

---@class CS.UnityEngine.Assertions.Comparers.FloatComparer : CS.System.Object
CS.UnityEngine.Assertions.Comparers.FloatComparer = {}

---@field public CS.UnityEngine.Assertions.Comparers.FloatComparer.s_ComparerWithDefaultTolerance : CS.UnityEngine.Assertions.Comparers.FloatComparer
CS.UnityEngine.Assertions.Comparers.FloatComparer.s_ComparerWithDefaultTolerance = nil

---@field public CS.UnityEngine.Assertions.Comparers.FloatComparer.kEpsilon : CS.System.Single
CS.UnityEngine.Assertions.Comparers.FloatComparer.kEpsilon = nil

---@return CS.UnityEngine.Assertions.Comparers.FloatComparer
function CS.UnityEngine.Assertions.Comparers.FloatComparer()
end

---@param relative : CS.System.Boolean
---@return CS.UnityEngine.Assertions.Comparers.FloatComparer
function CS.UnityEngine.Assertions.Comparers.FloatComparer(relative)
end

---@param error : CS.System.Single
---@return CS.UnityEngine.Assertions.Comparers.FloatComparer
function CS.UnityEngine.Assertions.Comparers.FloatComparer(error)
end

---@param error : CS.System.Single
---@param relative : CS.System.Boolean
---@return CS.UnityEngine.Assertions.Comparers.FloatComparer
function CS.UnityEngine.Assertions.Comparers.FloatComparer(error, relative)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Assertions.Comparers.FloatComparer:Equals(a, b)
end

---@param obj : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Assertions.Comparers.FloatComparer:GetHashCode(obj)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param error : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Assertions.Comparers.FloatComparer.AreEqual(expected, actual, error)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param error : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Assertions.Comparers.FloatComparer.AreEqualRelative(expected, actual, error)
end