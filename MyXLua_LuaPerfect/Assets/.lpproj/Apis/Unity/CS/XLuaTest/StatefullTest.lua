---@class CS.XLuaTest.StatefullTest : CS.System.Object
CS.XLuaTest.StatefullTest = {}

---@property readwrite CS.XLuaTest.StatefullTest.AProp : CS.System.Int32
CS.XLuaTest.StatefullTest.AProp = nil

---@property readwrite CS.XLuaTest.StatefullTest.Item : CS.System.Int32
CS.XLuaTest.StatefullTest.Item = nil

---@return CS.XLuaTest.StatefullTest
function CS.XLuaTest.StatefullTest()
end

---@param a : CS.System.Int32
---@param b : CS.System.Int32
---@return CS.XLuaTest.StatefullTest
function CS.XLuaTest.StatefullTest(a, b)
end

---@param value : CS.System.Action
function CS.XLuaTest.StatefullTest:add_AEvent(value)
end

---@param value : CS.System.Action
function CS.XLuaTest.StatefullTest:remove_AEvent(value)
end

function CS.XLuaTest.StatefullTest:Start()
end

---@param a : CS.System.Int32
---@param b : CS.System.Int32
function CS.XLuaTest.StatefullTest.StaticFunc(a, b)
end

---@param a : CS.System.String
---@param b : CS.System.Int32
---@param c : CS.System.Int32
function CS.XLuaTest.StatefullTest.StaticFunc(a, b, c)
end