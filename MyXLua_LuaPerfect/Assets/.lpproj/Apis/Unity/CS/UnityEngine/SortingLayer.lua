---@class CS.UnityEngine.SortingLayer : CS.System.ValueType
CS.UnityEngine.SortingLayer = {}

---@property readonly CS.UnityEngine.SortingLayer.id : CS.System.Int32
CS.UnityEngine.SortingLayer.id = nil

---@property readonly CS.UnityEngine.SortingLayer.name : CS.System.String
CS.UnityEngine.SortingLayer.name = nil

---@property readonly CS.UnityEngine.SortingLayer.value : CS.System.Int32
CS.UnityEngine.SortingLayer.value = nil

---@property readonly CS.UnityEngine.SortingLayer.layers : CS.UnityEngine.SortingLayer[]
CS.UnityEngine.SortingLayer.layers = nil

---@param id : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.SortingLayer.GetLayerValueFromID(id)
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.SortingLayer.GetLayerValueFromName(name)
end

---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.SortingLayer.NameToID(name)
end

---@param id : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.SortingLayer.IDToName(id)
end

---@param id : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.SortingLayer.IsValid(id)
end