---@class CS.XLuaTest.NoGc : CS.UnityEngine.MonoBehaviour
CS.XLuaTest.NoGc = {}

---@field public CS.XLuaTest.NoGc.a1 : CS.System.Double[]
CS.XLuaTest.NoGc.a1 = nil

---@field public CS.XLuaTest.NoGc.a2 : CS.UnityEngine.Vector3[]
CS.XLuaTest.NoGc.a2 = nil

---@field public CS.XLuaTest.NoGc.a3 : CS.XLuaTest.MyStruct[]
CS.XLuaTest.NoGc.a3 = nil

---@field public CS.XLuaTest.NoGc.a4 : CS.XLuaTest.MyEnum[]
CS.XLuaTest.NoGc.a4 = nil

---@field public CS.XLuaTest.NoGc.a5 : CS.System.Decimal[]
CS.XLuaTest.NoGc.a5 = nil

---@return CS.XLuaTest.NoGc
function CS.XLuaTest.NoGc()
end

---@param p : CS.System.Single
---@return CS.System.Single
function CS.XLuaTest.NoGc:FloatParamMethod(p)
end

---@param p : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.XLuaTest.NoGc:Vector3ParamMethod(p)
end

---@param p : CS.XLuaTest.MyStruct
---@return CS.XLuaTest.MyStruct
function CS.XLuaTest.NoGc:StructParamMethod(p)
end

---@param p : CS.XLuaTest.MyEnum
---@return CS.XLuaTest.MyEnum
function CS.XLuaTest.NoGc:EnumParamMethod(p)
end

---@param p : CS.System.Decimal
---@return CS.System.Decimal
function CS.XLuaTest.NoGc:DecimalParamMethod(p)
end