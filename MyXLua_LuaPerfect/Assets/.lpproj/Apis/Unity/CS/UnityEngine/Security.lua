---@class CS.UnityEngine.Security : CS.System.Object
CS.UnityEngine.Security = {}

---@return CS.UnityEngine.Security
function CS.UnityEngine.Security()
end

---@param assemblyData : CS.System.Byte[]
---@param authorizationKey : CS.System.String
---@return CS.System.Reflection.Assembly
function CS.UnityEngine.Security.LoadAndVerifyAssembly(assemblyData, authorizationKey)
end

---@param assemblyData : CS.System.Byte[]
---@return CS.System.Reflection.Assembly
function CS.UnityEngine.Security.LoadAndVerifyAssembly(assemblyData)
end

---@param ip : CS.System.String
---@param atPort : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Security.PrefetchSocketPolicy(ip, atPort)
end

---@param ip : CS.System.String
---@param atPort : CS.System.Int32
---@param timeout : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Security.PrefetchSocketPolicy(ip, atPort, timeout)
end