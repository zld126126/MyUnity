---@class CS.LuaPerfect.ObjectItem : CS.System.Object
CS.LuaPerfect.ObjectItem = {}

---@field public CS.LuaPerfect.ObjectItem.childObjectRefList : CS.System.Collections.Generic.List
CS.LuaPerfect.ObjectItem.childObjectRefList = nil

---@return CS.LuaPerfect.ObjectItem
function CS.LuaPerfect.ObjectItem()
end

---@return CS.System.Int32
function CS.LuaPerfect.ObjectItem:GetChildCount()
end

---@param i : CS.System.Int32
---@return CS.System.String
function CS.LuaPerfect.ObjectItem:GetChildName(i)
end

---@param value : CS.System.String
function CS.LuaPerfect.ObjectItem:SetValue(value)
end

---@return CS.System.String
function CS.LuaPerfect.ObjectItem:GetValue()
end

---@param name : CS.System.String
---@param obj : CS.System.Object
function CS.LuaPerfect.ObjectItem:AddChild(name, obj)
end

---@param i : CS.System.Int32
---@return CS.LuaPerfect.ObjectRef
function CS.LuaPerfect.ObjectItem:GetChildObject(i)
end

---@param name : CS.System.String
---@return CS.LuaPerfect.ObjectRef
function CS.LuaPerfect.ObjectItem:GetChildObjectByName(name)
end

---@param objectItem : CS.LuaPerfect.ObjectItem
---@return CS.System.Int32
function CS.LuaPerfect.ObjectItem.StaticGetChildCount(objectItem)
end

---@param objectItem : CS.LuaPerfect.ObjectItem
---@return CS.System.String
function CS.LuaPerfect.ObjectItem.StaticGetValue(objectItem)
end

---@param objectItem : CS.LuaPerfect.ObjectItem
---@param i : CS.System.Int32
---@return CS.System.String
function CS.LuaPerfect.ObjectItem.StaticGetChildName(objectItem, i)
end

---@param objectItem : CS.LuaPerfect.ObjectItem
---@param i : CS.System.Int32
---@return CS.LuaPerfect.ObjectRef
function CS.LuaPerfect.ObjectItem.StaticGetChildObject(objectItem, i)
end

---@param objectItem : CS.LuaPerfect.ObjectItem
---@param name : CS.System.String
---@return CS.LuaPerfect.ObjectRef
function CS.LuaPerfect.ObjectItem.StaticGetChildObjectByName(objectItem, name)
end