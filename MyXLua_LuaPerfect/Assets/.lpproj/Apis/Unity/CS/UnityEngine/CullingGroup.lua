---@class CS.UnityEngine.CullingGroup : CS.System.Object
CS.UnityEngine.CullingGroup = {}

---@property readwrite CS.UnityEngine.CullingGroup.onStateChanged : CS.UnityEngine.StateChanged
CS.UnityEngine.CullingGroup.onStateChanged = nil

---@property readwrite CS.UnityEngine.CullingGroup.enabled : CS.System.Boolean
CS.UnityEngine.CullingGroup.enabled = nil

---@property readwrite CS.UnityEngine.CullingGroup.targetCamera : CS.UnityEngine.Camera
CS.UnityEngine.CullingGroup.targetCamera = nil

---@return CS.UnityEngine.CullingGroup
function CS.UnityEngine.CullingGroup()
end

function CS.UnityEngine.CullingGroup:Dispose()
end

---@param array : CS.UnityEngine.BoundingSphere[]
function CS.UnityEngine.CullingGroup:SetBoundingSpheres(array)
end

---@param count : CS.System.Int32
function CS.UnityEngine.CullingGroup:SetBoundingSphereCount(count)
end

---@param index : CS.System.Int32
function CS.UnityEngine.CullingGroup:EraseSwapBack(index)
end

---@param visible : CS.System.Boolean
---@param result : CS.System.Int32[]
---@param firstIndex : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.CullingGroup:QueryIndices(visible, result, firstIndex)
end

---@param distanceIndex : CS.System.Int32
---@param result : CS.System.Int32[]
---@param firstIndex : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.CullingGroup:QueryIndices(distanceIndex, result, firstIndex)
end

---@param visible : CS.System.Boolean
---@param distanceIndex : CS.System.Int32
---@param result : CS.System.Int32[]
---@param firstIndex : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.CullingGroup:QueryIndices(visible, distanceIndex, result, firstIndex)
end

---@param index : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.CullingGroup:IsVisible(index)
end

---@param index : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.CullingGroup:GetDistance(index)
end

---@param distances : CS.System.Single[]
function CS.UnityEngine.CullingGroup:SetBoundingDistances(distances)
end

---@param point : CS.UnityEngine.Vector3
function CS.UnityEngine.CullingGroup:SetDistanceReferencePoint(point)
end

---@param transform : CS.UnityEngine.Transform
function CS.UnityEngine.CullingGroup:SetDistanceReferencePoint(transform)
end