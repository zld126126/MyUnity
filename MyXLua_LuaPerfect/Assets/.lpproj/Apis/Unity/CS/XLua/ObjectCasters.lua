---@class CS.XLua.ObjectCasters : CS.System.Object
CS.XLua.ObjectCasters = {}

---@param translator : CS.XLua.ObjectTranslator
---@return CS.XLua.ObjectCasters
function CS.XLua.ObjectCasters(translator)
end

---@param type : CS.System.Type
---@param oc : CS.XLua.ObjectCast
function CS.XLua.ObjectCasters:AddCaster(type, oc)
end

---@param type : CS.System.Type
---@return CS.XLua.ObjectCast
function CS.XLua.ObjectCasters:GetCaster(type)
end