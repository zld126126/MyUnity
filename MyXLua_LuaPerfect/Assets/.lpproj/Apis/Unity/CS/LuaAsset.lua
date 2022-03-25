---@class CS.LuaAsset : CS.UnityEngine.ScriptableObject
CS.LuaAsset = {}

---@field public CS.LuaAsset.LuaDecodeKey : CS.System.String
CS.LuaAsset.LuaDecodeKey = nil

---@field public CS.LuaAsset.LuaSearchingPaths : CS.System.String[]
CS.LuaAsset.LuaSearchingPaths = nil

---@field public CS.LuaAsset.encode : CS.System.Boolean
CS.LuaAsset.encode = nil

---@field public CS.LuaAsset.data : CS.System.Byte[]
CS.LuaAsset.data = nil

---@return CS.LuaAsset
function CS.LuaAsset()
end

---@return CS.System.Byte[]
function CS.LuaAsset:GetDecodeBytes()
end

---@param luapath : CS.System.String
---@return CS.System.Byte[]
function CS.LuaAsset.Require(luapath)
end

---@param luapath : CS.System.String
---@param search : CS.System.String
---@param retry : CS.System.Int32
---@return CS.System.Byte[]
function CS.LuaAsset.Require(luapath, search, retry)
end