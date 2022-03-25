---@class CS.XLua.LuaDLL.Lua : CS.System.Object
CS.XLua.LuaDLL.Lua = {}

---@return CS.XLua.LuaDLL.Lua
function CS.XLua.LuaDLL.Lua()
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_tothread(L, index)
end

---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_get_lib_version()
end

---@param L : CS.System.IntPtr
---@param what : CS.XLua.LuaGCOptions
---@param data : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_gc(L, what, data)
end

---@param L : CS.System.IntPtr
---@param funcindex : CS.System.Int32
---@param n : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_getupvalue(L, funcindex, n)
end

---@param L : CS.System.IntPtr
---@param funcindex : CS.System.Int32
---@param n : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_setupvalue(L, funcindex, n)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pushthread(L)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isfunction(L, stackPos)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_islightuserdata(L, stackPos)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_istable(L, stackPos)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isthread(L, stackPos)
end

---@param L : CS.System.IntPtr
---@param message : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_error(L, message)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_setfenv(L, stackPos)
end

---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.luaL_newstate()
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_close(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.luaopen_xlua(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.luaL_openlibs(L)
end

---@param L : CS.System.IntPtr
---@param stackPos : CS.System.Int32
---@return CS.System.UInt32
function CS.XLua.LuaDLL.Lua.xlua_objlen(L, stackPos)
end

---@param L : CS.System.IntPtr
---@param narr : CS.System.Int32
---@param nrec : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_createtable(L, narr, nrec)
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_newtable(L)
end

---@param L : CS.System.IntPtr
---@param name : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_getglobal(L, name)
end

---@param L : CS.System.IntPtr
---@param name : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_setglobal(L, name)
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.xlua_getloaders(L)
end

---@param L : CS.System.IntPtr
---@param newTop : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_settop(L, newTop)
end

---@param L : CS.System.IntPtr
---@param amount : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pop(L, amount)
end

---@param L : CS.System.IntPtr
---@param newTop : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_insert(L, newTop)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_remove(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_rawget(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_rawset(L, index)
end

---@param L : CS.System.IntPtr
---@param objIndex : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_setmetatable(L, objIndex)
end

---@param L : CS.System.IntPtr
---@param index1 : CS.System.Int32
---@param index2 : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_rawequal(L, index1, index2)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pushvalue(L, index)
end

---@param L : CS.System.IntPtr
---@param fn : CS.System.IntPtr
---@param n : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pushcclosure(L, fn, n)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_replace(L, index)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_gettop(L)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.XLua.LuaTypes
function CS.XLua.LuaDLL.Lua.lua_type(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isnil(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isnumber(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isboolean(L, index)
end

---@param L : CS.System.IntPtr
---@param registryIndex : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_ref(L, registryIndex)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_ref(L)
end

---@param L : CS.System.IntPtr
---@param tableIndex : CS.System.Int32
---@param index : CS.System.Int64
function CS.XLua.LuaDLL.Lua.xlua_rawgeti(L, tableIndex, index)
end

---@param L : CS.System.IntPtr
---@param tableIndex : CS.System.Int32
---@param index : CS.System.Int64
function CS.XLua.LuaDLL.Lua.xlua_rawseti(L, tableIndex, index)
end

---@param L : CS.System.IntPtr
---@param reference : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_getref(L, reference)
end

---@param L : CS.System.IntPtr
---@param error_func_ref : CS.System.Int32
---@param func_ref : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.pcall_prepare(L, error_func_ref, func_ref)
end

---@param L : CS.System.IntPtr
---@param registryIndex : CS.System.Int32
---@param reference : CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_unref(L, registryIndex, reference)
end

---@param L : CS.System.IntPtr
---@param reference : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_unref(L, reference)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isstring(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isinteger(L, index)
end

---@param L : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_pushnil(L)
end

---@param L : CS.System.IntPtr
---@param function_ : CS.XLua.LuaDLL.lua_CSFunction
---@param n : CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pushstdcallcfunction(L, function_, n)
end

---@param n : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_upvalueindex(n)
end

---@param L : CS.System.IntPtr
---@param nArgs : CS.System.Int32
---@param nResults : CS.System.Int32
---@param errfunc : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_pcall(L, nArgs, nResults, errfunc)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Double
function CS.XLua.LuaDLL.Lua.lua_tonumber(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_tointeger(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.UInt32
function CS.XLua.LuaDLL.Lua.xlua_touint(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_toboolean(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_topointer(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param strLen : CS.System.IntPtr
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_tolstring(L, index, strLen)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.String
function CS.XLua.LuaDLL.Lua.lua_tostring(L, index)
end

---@param L : CS.System.IntPtr
---@param panicf : CS.XLua.LuaDLL.lua_CSFunction
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_atpanic(L, panicf)
end

---@param L : CS.System.IntPtr
---@param number : CS.System.Double
function CS.XLua.LuaDLL.Lua.lua_pushnumber(L, number)
end

---@param L : CS.System.IntPtr
---@param value : CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_pushboolean(L, value)
end

---@param L : CS.System.IntPtr
---@param value : CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pushinteger(L, value)
end

---@param L : CS.System.IntPtr
---@param value : CS.System.UInt32
function CS.XLua.LuaDLL.Lua.xlua_pushuint(L, value)
end

---@param L : CS.System.IntPtr
---@param str : CS.System.String
function CS.XLua.LuaDLL.Lua.lua_pushstring(L, str)
end

---@param L : CS.System.IntPtr
---@param str : CS.System.Byte[]
---@param size : CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pushlstring(L, str, size)
end

---@param L : CS.System.IntPtr
---@param str : CS.System.String
function CS.XLua.LuaDLL.Lua.xlua_pushasciistring(L, str)
end

---@param L : CS.System.IntPtr
---@param str : CS.System.Byte[]
function CS.XLua.LuaDLL.Lua.lua_pushstring(L, str)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Byte[]
function CS.XLua.LuaDLL.Lua.lua_tobytes(L, index)
end

---@param L : CS.System.IntPtr
---@param meta : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_newmetatable(L, meta)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pgettable(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_psettable(L, idx)
end

---@param L : CS.System.IntPtr
---@param meta : CS.System.String
function CS.XLua.LuaDLL.Lua.luaL_getmetatable(L, meta)
end

---@param L : CS.System.IntPtr
---@param buff : CS.System.Byte[]
---@param size : CS.System.Int32
---@param name : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xluaL_loadbuffer(L, buff, size, name)
end

---@param L : CS.System.IntPtr
---@param buff : CS.System.String
---@param name : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_loadbuffer(L, buff, name)
end

---@param L : CS.System.IntPtr
---@param obj : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_tocsobj_safe(L, obj)
end

---@param L : CS.System.IntPtr
---@param obj : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_tocsobj_fast(L, obj)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_error(L)
end

---@param L : CS.System.IntPtr
---@param extra : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_checkstack(L, extra)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.lua_next(L, index)
end

---@param L : CS.System.IntPtr
---@param udata : CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_pushlightuserdata(L, udata)
end

---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.xlua_tag()
end

---@param L : CS.System.IntPtr
---@param level : CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaL_where(L, level)
end

---@param L : CS.System.IntPtr
---@param key : CS.System.Int32
---@param cache_ref : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_tryget_cachedud(L, key, cache_ref)
end

---@param L : CS.System.IntPtr
---@param key : CS.System.Int32
---@param meta_ref : CS.System.Int32
---@param need_cache : CS.System.Boolean
---@param cache_ref : CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pushcsobj(L, key, meta_ref, need_cache, cache_ref)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.gen_obj_indexer(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.gen_obj_newindexer(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.gen_cls_indexer(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.gen_cls_newindexer(L)
end

---@param L : CS.System.IntPtr
---@param Ref : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.load_error_func(L, Ref)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaopen_i64lib(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.luaopen_socket_core(L)
end

---@param L : CS.System.IntPtr
---@param n : CS.System.Int64
function CS.XLua.LuaDLL.Lua.lua_pushint64(L, n)
end

---@param L : CS.System.IntPtr
---@param n : CS.System.UInt64
function CS.XLua.LuaDLL.Lua.lua_pushuint64(L, n)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isint64(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.lua_isuint64(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Int64
function CS.XLua.LuaDLL.Lua.lua_toint64(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.UInt64
function CS.XLua.LuaDLL.Lua.lua_touint64(L, idx)
end

---@param L : CS.System.IntPtr
---@param fn : CS.System.IntPtr
---@param n : CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_push_csharp_function(L, fn, n)
end

---@param L : CS.System.IntPtr
---@param message : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_csharp_str_error(L, message)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_csharp_error(L)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Byte
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_int8_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Byte
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_int8_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int16
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_int16_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int16
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_int16_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_int32_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_int32_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int64
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_int64_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Int64
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_int64_t(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Double
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_double(buff, offset, field)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param field : CS.System.Double
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_double(buff, offset, field)
end

---@param L : CS.System.IntPtr
---@param size : CS.System.UInt32
---@param meta_ref : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.xlua_pushstruct(L, size, meta_ref)
end

---@param L : CS.System.IntPtr
---@param field_count : CS.System.UInt32
---@param meta_ref : CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pushcstable(L, field_count, meta_ref)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.lua_touserdata(L, idx)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_gettypeid(L, idx)
end

---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_get_registry_index()
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param path : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_pgettable_bypath(L, idx, path)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param path : CS.System.String
---@return CS.System.Int32
function CS.XLua.LuaDLL.Lua.xlua_psettable_bypath(L, idx, path)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float2(buff, offset, f1, f2)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float2(buff, offset, f1, f2)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float3(buff, offset, f1, f2, f3)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float3(buff, offset, f1, f2, f3)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float4(buff, offset, f1, f2, f3, f4)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float4(buff, offset, f1, f2, f3, f4)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@param f5 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float5(buff, offset, f1, f2, f3, f4, f5)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@param f5 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float5(buff, offset, f1, f2, f3, f4, f5)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@param f5 : CS.System.Single
---@param f6 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_float6(buff, offset, f1, f2, f3, f4, f5, f6)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param f1 : CS.System.Single
---@param f2 : CS.System.Single
---@param f3 : CS.System.Single
---@param f4 : CS.System.Single
---@param f5 : CS.System.Single
---@param f6 : CS.System.Single
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_float6(buff, offset, f1, f2, f3, f4, f5, f6)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param dec : CS.System.Decimal
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_pack_decimal(buff, offset, dec)
end

---@param buff : CS.System.IntPtr
---@param offset : CS.System.Int32
---@param scale : CS.System.Byte
---@param sign : CS.System.Byte
---@param hi32 : CS.System.Int32
---@param lo64 : CS.System.UInt64
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_unpack_decimal(buff, offset, scale, sign, hi32, lo64)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param str : CS.System.String
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_is_eq_str(L, index, str)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param str : CS.System.String
---@param str_len : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.LuaDLL.Lua.xlua_is_eq_str(L, index, str, str_len)
end

---@param L : CS.System.IntPtr
---@return CS.System.IntPtr
function CS.XLua.LuaDLL.Lua.xlua_gl(L)
end