---@class CS.XLua.LuaEnv : CS.System.Object
CS.XLua.LuaEnv = {}

---@field public CS.XLua.LuaEnv.CSHARP_NAMESPACE : CS.System.String
CS.XLua.LuaEnv.CSHARP_NAMESPACE = nil

---@field public CS.XLua.LuaEnv.MAIN_SHREAD : CS.System.String
CS.XLua.LuaEnv.MAIN_SHREAD = nil

---@property readonly CS.XLua.LuaEnv.Global : CS.XLua.LuaTable
CS.XLua.LuaEnv.Global = nil

---@property readwrite CS.XLua.LuaEnv.GcPause : CS.System.Int32
CS.XLua.LuaEnv.GcPause = nil

---@property readwrite CS.XLua.LuaEnv.GcStepmul : CS.System.Int32
CS.XLua.LuaEnv.GcStepmul = nil

---@property readonly CS.XLua.LuaEnv.Memroy : CS.System.Int32
CS.XLua.LuaEnv.Memroy = nil

---@return CS.XLua.LuaEnv
function CS.XLua.LuaEnv()
end

---@param initer : CS.System.Action
function CS.XLua.LuaEnv.AddIniter(initer)
end

---@param chunk : CS.System.String
---@param chunkName : CS.System.String
---@param env : CS.XLua.LuaTable
---@return CS.XLua.LuaFunction
function CS.XLua.LuaEnv:LoadString(chunk, chunkName, env)
end

---@param chunk : CS.System.Byte[]
---@param chunkName : CS.System.String
---@param env : CS.XLua.LuaTable
---@return CS.System.Object[]
function CS.XLua.LuaEnv:DoString(chunk, chunkName, env)
end

---@param chunk : CS.System.String
---@param chunkName : CS.System.String
---@param env : CS.XLua.LuaTable
---@return CS.System.Object[]
function CS.XLua.LuaEnv:DoString(chunk, chunkName, env)
end

---@param type : CS.System.Type
---@param alias : CS.System.String
function CS.XLua.LuaEnv:Alias(type, alias)
end

function CS.XLua.LuaEnv:Tick()
end

function CS.XLua.LuaEnv:GC()
end

---@return CS.XLua.LuaTable
function CS.XLua.LuaEnv:NewTable()
end

function CS.XLua.LuaEnv:Dispose()
end

---@param dispose : CS.System.Boolean
function CS.XLua.LuaEnv:Dispose(dispose)
end

---@param oldTop : CS.System.Int32
function CS.XLua.LuaEnv:ThrowExceptionFromError(oldTop)
end

---@param loader : CS.XLua.CustomLoader
function CS.XLua.LuaEnv:AddLoader(loader)
end

---@param name : CS.System.String
---@param initer : CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.LuaEnv:AddBuildin(name, initer)
end

function CS.XLua.LuaEnv:FullGc()
end

function CS.XLua.LuaEnv:StopGc()
end

function CS.XLua.LuaEnv:RestartGc()
end

---@param data : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaEnv:GcStep(data)
end