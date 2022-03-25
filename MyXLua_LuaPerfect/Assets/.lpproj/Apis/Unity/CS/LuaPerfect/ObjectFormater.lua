---@class CS.LuaPerfect.ObjectFormater : CS.System.Object
CS.LuaPerfect.ObjectFormater = {}

---@field public CS.LuaPerfect.ObjectFormater.s_classInfoDirectionary : CS.System.Collections.Generic.Dictionary
CS.LuaPerfect.ObjectFormater.s_classInfoDirectionary = nil

---@return CS.LuaPerfect.ObjectFormater
function CS.LuaPerfect.ObjectFormater()
end

---@param type : CS.System.Type
---@return CS.System.Boolean
function CS.LuaPerfect.ObjectFormater.IsBasicType(type)
end

---@param type : CS.System.Type
---@return CS.System.Collections.Generic.List
function CS.LuaPerfect.ObjectFormater.GetAllFields(type)
end

---@param allProperties : CS.System.Collections.Generic.List
---@param name : CS.System.String
---@return CS.System.Boolean
function CS.LuaPerfect.ObjectFormater.FindProperty(allProperties, name)
end

---@param type : CS.System.Type
---@return CS.System.Collections.Generic.List
function CS.LuaPerfect.ObjectFormater.GetAllProperties(type)
end

---@param type : CS.System.Type
---@return CS.System.String
function CS.LuaPerfect.ObjectFormater.GetClassFullName(type)
end

---@param type : CS.System.Type
---@return CS.LuaPerfect.ClassInfoItem
function CS.LuaPerfect.ObjectFormater.GetClassInfo(type)
end

---@param gameObject : CS.UnityEngine.GameObject
---@return CS.System.Collections.Generic.List
function CS.LuaPerfect.ObjectFormater.GetChildrenGameObjects(gameObject)
end

---@param obj : CS.System.Object
---@param collectChildren : CS.System.Boolean
---@return CS.LuaPerfect.ObjectItem
function CS.LuaPerfect.ObjectFormater.FormatObject(obj, collectChildren)
end

---@param obj : CS.System.Object
---@param collectChildren : CS.System.Boolean
---@return CS.LuaPerfect.ObjectItem
function CS.LuaPerfect.ObjectFormater.InnerFormatObject(obj, collectChildren)
end

function CS.LuaPerfect.ObjectFormater.ClearObjectCache()
end