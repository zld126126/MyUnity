---@module CS.LuaPerfect
CS.LuaPerfect = {}

---@class CS.LuaPerfect.ObjectCache : CS.System.Object
CS.LuaPerfect.ObjectCache = {}

---@field public CS.LuaPerfect.ObjectCache.s_objectList : CS.System.Collections.Generic.List
CS.LuaPerfect.ObjectCache.s_objectList = nil

---@field public CS.LuaPerfect.ObjectCache.s_objectDirectionary : CS.System.Collections.Generic.Dictionary
CS.LuaPerfect.ObjectCache.s_objectDirectionary = nil

---@return CS.LuaPerfect.ObjectCache
function CS.LuaPerfect.ObjectCache()
end

---@param obj : CS.System.Object
---@return CS.System.Int32
function CS.LuaPerfect.ObjectCache.SaveObject(obj)
end

---@param objectID : CS.System.Int32
---@return CS.System.Object
function CS.LuaPerfect.ObjectCache.GetObject(objectID)
end

function CS.LuaPerfect.ObjectCache.ClearAll()
end