---@class CS.XLua.LuaTable : CS.XLua.LuaBase
CS.XLua.LuaTable = {}

---@property readwrite CS.XLua.LuaTable.Item : CS.System.Object
CS.XLua.LuaTable.Item = nil

---@property readwrite CS.XLua.LuaTable.Item : CS.System.Object
CS.XLua.LuaTable.Item = nil

---@property readonly CS.XLua.LuaTable.Length : CS.System.Int32
CS.XLua.LuaTable.Length = nil

---@param reference : CS.System.Int32
---@param luaenv : CS.XLua.LuaEnv
---@return CS.XLua.LuaTable
function CS.XLua.LuaTable(reference, luaenv)
end

---@return CS.System.Collections.IEnumerable
function CS.XLua.LuaTable:GetKeys()
end

---@param metaTable : CS.XLua.LuaTable
function CS.XLua.LuaTable:SetMetaTable(metaTable)
end

---@return CS.System.String
function CS.XLua.LuaTable:ToString()
end