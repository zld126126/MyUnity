---@class CS.XLua.DelegateBridgeBase : CS.XLua.LuaBase
CS.XLua.DelegateBridgeBase = {}

---@param reference : CS.System.Int32
---@param luaenv : CS.XLua.LuaEnv
---@return CS.XLua.DelegateBridgeBase
function CS.XLua.DelegateBridgeBase(reference, luaenv)
end

---@param key : CS.System.Type
---@param value : CS.System.Delegate
---@return CS.System.Boolean
function CS.XLua.DelegateBridgeBase:TryGetDelegate(key, value)
end

---@param key : CS.System.Type
---@param value : CS.System.Delegate
function CS.XLua.DelegateBridgeBase:AddDelegate(key, value)
end

---@param type : CS.System.Type
---@return CS.System.Delegate
function CS.XLua.DelegateBridgeBase:GetDelegateByType(type)
end