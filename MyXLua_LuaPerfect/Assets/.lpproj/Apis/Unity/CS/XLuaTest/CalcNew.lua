---@class CS.XLuaTest.CalcNew : CS.System.MulticastDelegate
CS.XLuaTest.CalcNew = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.XLuaTest.CalcNew
function CS.XLuaTest.CalcNew(object, method)
end

---@param mult : CS.System.Int32
---@param args : CS.System.String[]
---@return CS.XLuaTest.ICalc
function CS.XLuaTest.CalcNew:Invoke(mult, args)
end

---@param mult : CS.System.Int32
---@param args : CS.System.String[]
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.XLuaTest.CalcNew:BeginInvoke(mult, args, callback, object)
end

---@param result : CS.System.IAsyncResult
---@return CS.XLuaTest.ICalc
function CS.XLuaTest.CalcNew:EndInvoke(result)
end