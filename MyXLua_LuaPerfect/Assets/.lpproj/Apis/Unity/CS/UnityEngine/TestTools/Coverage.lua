---@class CS.UnityEngine.TestTools.Coverage : CS.System.Object
CS.UnityEngine.TestTools.Coverage = {}

---@property readwrite CS.UnityEngine.TestTools.Coverage.enabled : CS.System.Boolean
CS.UnityEngine.TestTools.Coverage.enabled = nil

---@param method : CS.System.Reflection.MethodBase
---@return CS.UnityEngine.TestTools.CoveredSequencePoint[]
function CS.UnityEngine.TestTools.Coverage.GetSequencePointsFor(method)
end

---@param method : CS.System.Reflection.MethodBase
---@return CS.UnityEngine.TestTools.CoveredMethodStats
function CS.UnityEngine.TestTools.Coverage.GetStatsFor(method)
end

---@param methods : CS.System.Reflection.MethodBase[]
---@return CS.UnityEngine.TestTools.CoveredMethodStats[]
function CS.UnityEngine.TestTools.Coverage.GetStatsFor(methods)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.TestTools.CoveredMethodStats[]
function CS.UnityEngine.TestTools.Coverage.GetStatsFor(type)
end

---@return CS.UnityEngine.TestTools.CoveredMethodStats[]
function CS.UnityEngine.TestTools.Coverage.GetStatsForAllCoveredMethods()
end

---@param method : CS.System.Reflection.MethodBase
function CS.UnityEngine.TestTools.Coverage.ResetFor(method)
end

function CS.UnityEngine.TestTools.Coverage.ResetAll()
end