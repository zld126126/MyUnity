---@class CS.UnityEngine.Jobs.TransformAccessArray : CS.System.ValueType
CS.UnityEngine.Jobs.TransformAccessArray = {}

---@property readonly CS.UnityEngine.Jobs.TransformAccessArray.isCreated : CS.System.Boolean
CS.UnityEngine.Jobs.TransformAccessArray.isCreated = nil

---@property readwrite CS.UnityEngine.Jobs.TransformAccessArray.Item : CS.UnityEngine.Transform
CS.UnityEngine.Jobs.TransformAccessArray.Item = nil

---@property readwrite CS.UnityEngine.Jobs.TransformAccessArray.capacity : CS.System.Int32
CS.UnityEngine.Jobs.TransformAccessArray.capacity = nil

---@property readonly CS.UnityEngine.Jobs.TransformAccessArray.length : CS.System.Int32
CS.UnityEngine.Jobs.TransformAccessArray.length = nil

---@param transforms : CS.UnityEngine.Transform[]
---@param desiredJobCount : CS.System.Int32
---@return CS.UnityEngine.Jobs.TransformAccessArray
function CS.UnityEngine.Jobs.TransformAccessArray(transforms, desiredJobCount)
end

---@param capacity : CS.System.Int32
---@param desiredJobCount : CS.System.Int32
---@return CS.UnityEngine.Jobs.TransformAccessArray
function CS.UnityEngine.Jobs.TransformAccessArray(capacity, desiredJobCount)
end

---@param capacity : CS.System.Int32
---@param desiredJobCount : CS.System.Int32
---@param array : CS.UnityEngine.Jobs.TransformAccessArray
function CS.UnityEngine.Jobs.TransformAccessArray.Allocate(capacity, desiredJobCount, array)
end

function CS.UnityEngine.Jobs.TransformAccessArray:Dispose()
end

---@param transform : CS.UnityEngine.Transform
function CS.UnityEngine.Jobs.TransformAccessArray:Add(transform)
end

---@param index : CS.System.Int32
function CS.UnityEngine.Jobs.TransformAccessArray:RemoveAtSwapBack(index)
end

---@param transforms : CS.UnityEngine.Transform[]
function CS.UnityEngine.Jobs.TransformAccessArray:SetTransforms(transforms)
end