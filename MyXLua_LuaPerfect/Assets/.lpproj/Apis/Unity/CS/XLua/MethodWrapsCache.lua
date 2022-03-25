---@class CS.XLua.MethodWrapsCache : CS.System.Object
CS.XLua.MethodWrapsCache = {}

---@param translator : CS.XLua.ObjectTranslator
---@param objCheckers : CS.XLua.ObjectCheckers
---@param objCasters : CS.XLua.ObjectCasters
---@return CS.XLua.MethodWrapsCache
function CS.XLua.MethodWrapsCache(translator, objCheckers, objCasters)
end

---@param type : CS.System.Type
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.MethodWrapsCache:GetConstructorWrap(type)
end

---@param type : CS.System.Type
---@param methodName : CS.System.String
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.MethodWrapsCache:GetMethodWrap(type, methodName)
end

---@param type : CS.System.Type
---@param methodName : CS.System.String
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.MethodWrapsCache:GetMethodWrapInCache(type, methodName)
end

---@param type : CS.System.Type
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.MethodWrapsCache:GetDelegateWrap(type)
end

---@param type : CS.System.Type
---@param eventName : CS.System.String
---@return CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.MethodWrapsCache:GetEventWrap(type, eventName)
end

---@param type : CS.System.Type
---@param methodName : CS.System.String
---@param methodBases : CS.System.Collections.Generic.IEnumerable
---@param forceCheck : CS.System.Boolean
---@return CS.XLua.MethodWrap
function CS.XLua.MethodWrapsCache:_GenMethodWrap(type, methodName, methodBases, forceCheck)
end