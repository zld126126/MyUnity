---@class CS.UnityEngine.LayerMask : CS.System.ValueType
CS.UnityEngine.LayerMask = {}

---@property readwrite CS.UnityEngine.LayerMask.value : CS.System.Int32
CS.UnityEngine.LayerMask.value = nil

---@param mask : CS.UnityEngine.LayerMask
---@return CS.System.Int32
function CS.UnityEngine.LayerMask.op_Implicit(mask)
end

---@param intVal : CS.System.Int32
---@return CS.UnityEngine.LayerMask
function CS.UnityEngine.LayerMask.op_Implicit(intVal)
end

---@param layer : CS.System.Int32
---@return CS.System.String
function CS.UnityEngine.LayerMask.LayerToName(layer)
end

---@param layerName : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.LayerMask.NameToLayer(layerName)
end

---@param layerNames : CS.System.String[]
---@return CS.System.Int32
function CS.UnityEngine.LayerMask.GetMask(layerNames)
end