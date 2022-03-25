---@class CS.Tutorial.DerivedClass : CS.Tutorial.BaseClass
CS.Tutorial.DerivedClass = {}

---@field public CS.Tutorial.DerivedClass.TestDelegate : CS.System.Action
CS.Tutorial.DerivedClass.TestDelegate = nil

---@property readwrite CS.Tutorial.DerivedClass.DMF : CS.System.Int32
CS.Tutorial.DerivedClass.DMF = nil

---@return CS.Tutorial.DerivedClass
function CS.Tutorial.DerivedClass()
end

function CS.Tutorial.DerivedClass:DMFunc()
end

---@param p1 : CS.Tutorial.Param1
---@param p2 : CS.System.Int32
---@param p3 : CS.System.String
---@param luafunc : CS.System.Action
---@param csfunc : CS.System.Action
---@return CS.System.Double
function CS.Tutorial.DerivedClass:ComplexFunc(p1, p2, p3, luafunc, csfunc)
end

---@param i : CS.System.Int32
function CS.Tutorial.DerivedClass:TestFunc(i)
end

---@param i : CS.System.String
function CS.Tutorial.DerivedClass:TestFunc(i)
end

---@param a : CS.Tutorial.DerivedClass
---@param b : CS.Tutorial.DerivedClass
---@return CS.Tutorial.DerivedClass
function CS.Tutorial.DerivedClass.op_Addition(a, b)
end

---@param a : CS.System.Int32
---@param b : CS.System.String
---@param c : CS.System.String
function CS.Tutorial.DerivedClass:DefaultValueFunc(a, b, c)
end

---@param a : CS.System.Int32
---@param strs : CS.System.String[]
function CS.Tutorial.DerivedClass:VariableParamsFunc(a, strs)
end

---@param e : CS.Tutorial.TestEnum
---@return CS.Tutorial.TestEnum
function CS.Tutorial.DerivedClass:EnumTestFunc(e)
end

---@param value : CS.System.Action
function CS.Tutorial.DerivedClass:add_TestEvent(value)
end

---@param value : CS.System.Action
function CS.Tutorial.DerivedClass:remove_TestEvent(value)
end

function CS.Tutorial.DerivedClass:CallEvent()
end

---@param n : CS.System.Int64
---@return CS.System.UInt64
function CS.Tutorial.DerivedClass:TestLong(n)
end

---@return CS.Tutorial.ICalc
function CS.Tutorial.DerivedClass:GetCalc()
end