---@class CS.XLua.Utils : CS.System.Object
CS.XLua.Utils = {}

---@field public CS.XLua.Utils.OBJ_META_IDX : CS.System.Int32
CS.XLua.Utils.OBJ_META_IDX = nil

---@field public CS.XLua.Utils.METHOD_IDX : CS.System.Int32
CS.XLua.Utils.METHOD_IDX = nil

---@field public CS.XLua.Utils.GETTER_IDX : CS.System.Int32
CS.XLua.Utils.GETTER_IDX = nil

---@field public CS.XLua.Utils.SETTER_IDX : CS.System.Int32
CS.XLua.Utils.SETTER_IDX = nil

---@field public CS.XLua.Utils.CLS_IDX : CS.System.Int32
CS.XLua.Utils.CLS_IDX = nil

---@field public CS.XLua.Utils.CLS_META_IDX : CS.System.Int32
CS.XLua.Utils.CLS_META_IDX = nil

---@field public CS.XLua.Utils.CLS_GETTER_IDX : CS.System.Int32
CS.XLua.Utils.CLS_GETTER_IDX = nil

---@field public CS.XLua.Utils.CLS_SETTER_IDX : CS.System.Int32
CS.XLua.Utils.CLS_SETTER_IDX = nil

---@field public CS.XLua.Utils.LuaIndexsFieldName : CS.System.String
CS.XLua.Utils.LuaIndexsFieldName = nil

---@field public CS.XLua.Utils.LuaNewIndexsFieldName : CS.System.String
CS.XLua.Utils.LuaNewIndexsFieldName = nil

---@field public CS.XLua.Utils.LuaClassIndexsFieldName : CS.System.String
CS.XLua.Utils.LuaClassIndexsFieldName = nil

---@field public CS.XLua.Utils.LuaClassNewIndexsFieldName : CS.System.String
CS.XLua.Utils.LuaClassNewIndexsFieldName = nil

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param field_name : CS.System.String
---@return CS.System.Boolean
function CS.XLua.Utils.LoadField(L, idx, field_name)
end

---@param L : CS.System.IntPtr
---@return CS.System.IntPtr
function CS.XLua.Utils.GetMainState(L)
end

---@param exclude_generic_definition : CS.System.Boolean
---@return CS.System.Collections.Generic.List
function CS.XLua.Utils.GetAllTypes(exclude_generic_definition)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@param metafunc : CS.System.String
---@param index : CS.System.Int32
function CS.XLua.Utils.loadUpvalue(L, type, metafunc, index)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
function CS.XLua.Utils.RegisterEnumType(L, type)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
function CS.XLua.Utils.MakePrivateAccessible(L, type)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@param privateAccessible : CS.System.Boolean
function CS.XLua.Utils.ReflectionWrap(L, type, privateAccessible)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param meta_count : CS.System.Int32
---@param method_count : CS.System.Int32
---@param getter_count : CS.System.Int32
---@param setter_count : CS.System.Int32
---@param type_id : CS.System.Int32
function CS.XLua.Utils.BeginObjectRegister(type, L, translator, meta_count, method_count, getter_count, setter_count, type_id)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param csIndexer : CS.XLua.LuaDLL.lua_CSFunction
---@param csNewIndexer : CS.XLua.LuaDLL.lua_CSFunction
---@param base_type : CS.System.Type
---@param arrayIndexer : CS.XLua.LuaDLL.lua_CSFunction
---@param arrayNewIndexer : CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.Utils.EndObjectRegister(type, L, translator, csIndexer, csNewIndexer, base_type, arrayIndexer, arrayNewIndexer)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param name : CS.System.String
---@param func : CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.Utils.RegisterFunc(L, idx, name, func)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@param name : CS.System.String
---@param type : CS.System.Type
---@param memberType : CS.XLua.LazyMemberTypes
---@param isStatic : CS.System.Boolean
function CS.XLua.Utils.RegisterLazyFunc(L, idx, name, type, memberType, isStatic)
end

---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
---@param idx : CS.System.Int32
---@param name : CS.System.String
---@param obj : CS.System.Object
function CS.XLua.Utils.RegisterObject(L, translator, idx, name, obj)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param creator : CS.XLua.LuaDLL.lua_CSFunction
---@param class_field_count : CS.System.Int32
---@param static_getter_count : CS.System.Int32
---@param static_setter_count : CS.System.Int32
function CS.XLua.Utils.BeginClassRegister(type, L, creator, class_field_count, static_getter_count, static_setter_count)
end

---@param type : CS.System.Type
---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
function CS.XLua.Utils.EndClassRegister(type, L, translator)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
function CS.XLua.Utils.LoadCSTable(L, type)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@param cls_table : CS.System.Int32
function CS.XLua.Utils.SetCSTable(L, type, cls_table)
end

---@param delegateMethod : CS.System.Reflection.MethodInfo
---@param bridgeMethod : CS.System.Reflection.MethodInfo
---@return CS.System.Boolean
function CS.XLua.Utils.IsParamsMatch(delegateMethod, bridgeMethod)
end

---@param method : CS.System.Reflection.MethodInfo
---@return CS.System.Boolean
function CS.XLua.Utils.IsSupportedMethod(method)
end

---@param method : CS.System.Reflection.MethodInfo
---@return CS.System.Reflection.MethodInfo
function CS.XLua.Utils.MakeGenericMethodWithConstraints(method)
end

---@param csFunction : CS.XLua.LuaDLL.lua_CSFunction
---@return CS.System.Boolean
function CS.XLua.Utils.IsStaticPInvokeCSFunction(csFunction)
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.XLua.Utils.IsPublic(type)
end