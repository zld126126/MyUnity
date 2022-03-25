---@class CS.XLua.ObjectTranslator : CS.System.Object
CS.XLua.ObjectTranslator = {}

---@field public CS.XLua.ObjectTranslator.cacheRef : CS.System.Int32
CS.XLua.ObjectTranslator.cacheRef = nil

---@param luaenv : CS.XLua.LuaEnv
---@param L : CS.System.IntPtr
---@return CS.XLua.ObjectTranslator
function CS.XLua.ObjectTranslator(luaenv, L)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Vector2
function CS.XLua.ObjectTranslator:PushUnityEngineVector2(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector2
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector2
function CS.XLua.ObjectTranslator:UpdateUnityEngineVector2(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Vector3
function CS.XLua.ObjectTranslator:PushUnityEngineVector3(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector3
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector3
function CS.XLua.ObjectTranslator:UpdateUnityEngineVector3(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Vector4
function CS.XLua.ObjectTranslator:PushUnityEngineVector4(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Vector4
function CS.XLua.ObjectTranslator:UpdateUnityEngineVector4(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Color
function CS.XLua.ObjectTranslator:PushUnityEngineColor(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Color
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Color
function CS.XLua.ObjectTranslator:UpdateUnityEngineColor(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Quaternion
function CS.XLua.ObjectTranslator:PushUnityEngineQuaternion(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Quaternion
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Quaternion
function CS.XLua.ObjectTranslator:UpdateUnityEngineQuaternion(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Ray
function CS.XLua.ObjectTranslator:PushUnityEngineRay(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Ray
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Ray
function CS.XLua.ObjectTranslator:UpdateUnityEngineRay(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Bounds
function CS.XLua.ObjectTranslator:PushUnityEngineBounds(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Bounds
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Bounds
function CS.XLua.ObjectTranslator:UpdateUnityEngineBounds(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.UnityEngine.Ray2D
function CS.XLua.ObjectTranslator:PushUnityEngineRay2D(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Ray2D
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.UnityEngine.Ray2D
function CS.XLua.ObjectTranslator:UpdateUnityEngineRay2D(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.XLuaTest.Pedding
function CS.XLua.ObjectTranslator:PushXLuaTestPedding(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.Pedding
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.Pedding
function CS.XLua.ObjectTranslator:UpdateXLuaTestPedding(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.XLuaTest.MyStruct
function CS.XLua.ObjectTranslator:PushXLuaTestMyStruct(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.MyStruct
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.MyStruct
function CS.XLua.ObjectTranslator:UpdateXLuaTestMyStruct(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.XLuaTest.PushAsTableStruct
function CS.XLua.ObjectTranslator:PushXLuaTestPushAsTableStruct(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.PushAsTableStruct
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.PushAsTableStruct
function CS.XLua.ObjectTranslator:UpdateXLuaTestPushAsTableStruct(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.Tutorial.TestEnum
function CS.XLua.ObjectTranslator:PushTutorialTestEnum(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.Tutorial.TestEnum
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.Tutorial.TestEnum
function CS.XLua.ObjectTranslator:UpdateTutorialTestEnum(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.XLuaTest.MyEnum
function CS.XLua.ObjectTranslator:PushXLuaTestMyEnum(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.MyEnum
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.XLuaTest.MyEnum
function CS.XLua.ObjectTranslator:UpdateXLuaTestMyEnum(L, index, val)
end

---@param L : CS.System.IntPtr
---@param val : CS.Tutorial.TestEnumInner
function CS.XLua.ObjectTranslator:PushTutorialDerivedClassTestEnumInner(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.Tutorial.TestEnumInner
function CS.XLua.ObjectTranslator:Get(L, index, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.Tutorial.TestEnumInner
function CS.XLua.ObjectTranslator:UpdateTutorialDerivedClassTestEnumInner(L, index, val)
end

---@param type : CS.System.Type
---@param loader : CS.System.Action
function CS.XLua.ObjectTranslator:DelayWrapLoader(type, loader)
end

---@param type : CS.System.Type
---@param creator : CS.System.Func
function CS.XLua.ObjectTranslator:AddInterfaceBridgeCreator(type, creator)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.XLua.ObjectTranslator:TryDelayWrapLoader(L, type)
end

---@param type : CS.System.Type
---@param alias : CS.System.String
function CS.XLua.ObjectTranslator:Alias(type, alias)
end

---@param L : CS.System.IntPtr
---@param delegateType : CS.System.Type
---@param idx : CS.System.Int32
---@return CS.System.Object
function CS.XLua.ObjectTranslator:CreateDelegateBridge(L, delegateType, idx)
end

---@return CS.System.Boolean
function CS.XLua.ObjectTranslator:AllDelegateBridgeReleased()
end

---@param L : CS.System.IntPtr
---@param reference : CS.System.Int32
---@param is_delegate : CS.System.Boolean
function CS.XLua.ObjectTranslator:ReleaseLuaBase(L, reference, is_delegate)
end

---@param L : CS.System.IntPtr
---@param interfaceType : CS.System.Type
---@param idx : CS.System.Int32
---@return CS.System.Object
function CS.XLua.ObjectTranslator:CreateInterfaceBridge(L, interfaceType, idx)
end

---@param L : CS.System.IntPtr
function CS.XLua.ObjectTranslator:CreateArrayMetatable(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.ObjectTranslator:CreateDelegateMetatable(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.ObjectTranslator:OpenLib(L)
end

---@param L : CS.System.IntPtr
---@param idx : CS.System.Int32
---@return CS.System.Type
function CS.XLua.ObjectTranslator:GetTypeOf(L, idx)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.XLua.ObjectTranslator:Assignable(L, index, type)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param type : CS.System.Type
---@return CS.System.Object
function CS.XLua.ObjectTranslator:GetObject(L, index, type)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param type : CS.System.Type
---@return CS.System.Array
function CS.XLua.ObjectTranslator:GetParams(L, index, type)
end

---@param L : CS.System.IntPtr
---@param ary : CS.System.Array
function CS.XLua.ObjectTranslator:PushParams(L, ary)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@return CS.System.Int32
function CS.XLua.ObjectTranslator:GetTypeId(L, type)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
function CS.XLua.ObjectTranslator:PrivateAccessible(L, type)
end

---@param L : CS.System.IntPtr
---@param o : CS.System.Object
function CS.XLua.ObjectTranslator:PushAny(L, o)
end

---@param L : CS.System.IntPtr
---@param type : CS.System.Type
---@param idx : CS.System.Int32
---@return CS.System.Int32
function CS.XLua.ObjectTranslator:TranslateToEnumToTop(L, type, idx)
end

---@param L : CS.System.IntPtr
---@param o : CS.XLua.LuaDLL.lua_CSFunction
function CS.XLua.ObjectTranslator:Push(L, o)
end

---@param L : CS.System.IntPtr
---@param o : CS.XLua.LuaBase
function CS.XLua.ObjectTranslator:Push(L, o)
end

---@param L : CS.System.IntPtr
---@param o : CS.System.Object
function CS.XLua.ObjectTranslator:Push(L, o)
end

---@param L : CS.System.IntPtr
---@param o : CS.System.Object
---@param type_id : CS.System.Int32
function CS.XLua.ObjectTranslator:PushObject(L, o, type_id)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param obj : CS.System.Object
function CS.XLua.ObjectTranslator:Update(L, index, obj)
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.XLua.ObjectTranslator:HasCustomOp(type)
end

---@param L : CS.System.IntPtr
---@param val : CS.System.Decimal
function CS.XLua.ObjectTranslator:PushDecimal(L, val)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.XLua.ObjectTranslator:IsDecimal(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@return CS.System.Decimal
function CS.XLua.ObjectTranslator:GetDecimal(L, index)
end

---@param L : CS.System.IntPtr
---@param index : CS.System.Int32
---@param val : CS.System.Decimal
function CS.XLua.ObjectTranslator:Get(L, index, val)
end