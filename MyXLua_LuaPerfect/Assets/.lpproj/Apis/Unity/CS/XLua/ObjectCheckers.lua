---@class CS.XLua.ObjectCheckers : CS.System.Object
CS.XLua.ObjectCheckers = {}

---@param translator : CS.XLua.ObjectTranslator
---@return CS.XLua.ObjectCheckers
function CS.XLua.ObjectCheckers(translator)
end

---@param oc : CS.XLua.ObjectCheck
---@return CS.XLua.ObjectCheck
function CS.XLua.ObjectCheckers:genNullableChecker(oc)
end

---@param type : CS.System.Type
---@return CS.XLua.ObjectCheck
function CS.XLua.ObjectCheckers:GetChecker(type)
end