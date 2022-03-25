---@class CS.XLua.OverloadMethodWrap : CS.System.Object
CS.XLua.OverloadMethodWrap = {}

---@property readwrite CS.XLua.OverloadMethodWrap.HasDefalutValue : CS.System.Boolean
CS.XLua.OverloadMethodWrap.HasDefalutValue = nil

---@param translator : CS.XLua.ObjectTranslator
---@param targetType : CS.System.Type
---@param method : CS.System.Reflection.MethodBase
---@return CS.XLua.OverloadMethodWrap
function CS.XLua.OverloadMethodWrap(translator, targetType, method)
end

---@param objCheckers : CS.XLua.ObjectCheckers
---@param objCasters : CS.XLua.ObjectCasters
function CS.XLua.OverloadMethodWrap:Init(objCheckers, objCasters)
end

---@param L : CS.System.IntPtr
---@return CS.System.Boolean
function CS.XLua.OverloadMethodWrap:Check(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.OverloadMethodWrap:Call(L)
end