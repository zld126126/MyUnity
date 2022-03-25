---@class CS.XLua.LuaFunction : CS.XLua.LuaBase
CS.XLua.LuaFunction = {}

---@param reference : CS.System.Int32
---@param luaenv : CS.XLua.LuaEnv
---@return CS.XLua.LuaFunction
function CS.XLua.LuaFunction(reference, luaenv)
end

---@param args : CS.System.Object[]
---@param returnTypes : CS.System.Type[]
---@return CS.System.Object[]
function CS.XLua.LuaFunction:Call(args, returnTypes)
end

---@param args : CS.System.Object[]
---@return CS.System.Object[]
function CS.XLua.LuaFunction:Call(args)
end

---@param env : CS.XLua.LuaTable
function CS.XLua.LuaFunction:SetEnv(env)
end

---@return CS.System.String
function CS.XLua.LuaFunction:ToString()
end