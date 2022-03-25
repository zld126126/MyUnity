---@class CS.XLuaTest.ICalc
CS.XLuaTest.ICalc = {}

---@property readwrite CS.XLuaTest.ICalc.Mult : CS.System.Int32
CS.XLuaTest.ICalc.Mult = nil

---@property readwrite CS.XLuaTest.ICalc.Item : CS.System.Object
CS.XLuaTest.ICalc.Item = nil

---@param value : CS.System.EventHandler
function CS.XLuaTest.ICalc:add_PropertyChanged(value)
end

---@param value : CS.System.EventHandler
function CS.XLuaTest.ICalc:remove_PropertyChanged(value)
end

---@param a : CS.System.Int32
---@param b : CS.System.Int32
---@return CS.System.Int32
function CS.XLuaTest.ICalc:Add(a, b)
end