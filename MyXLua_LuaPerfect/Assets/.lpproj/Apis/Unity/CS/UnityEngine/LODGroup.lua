---@class CS.UnityEngine.LODGroup : CS.UnityEngine.Component
CS.UnityEngine.LODGroup = {}

---@property readwrite CS.UnityEngine.LODGroup.localReferencePoint : CS.UnityEngine.Vector3
CS.UnityEngine.LODGroup.localReferencePoint = nil

---@property readwrite CS.UnityEngine.LODGroup.size : CS.System.Single
CS.UnityEngine.LODGroup.size = nil

---@property readonly CS.UnityEngine.LODGroup.lodCount : CS.System.Int32
CS.UnityEngine.LODGroup.lodCount = nil

---@property readwrite CS.UnityEngine.LODGroup.fadeMode : CS.UnityEngine.LODFadeMode
CS.UnityEngine.LODGroup.fadeMode = nil

---@property readwrite CS.UnityEngine.LODGroup.animateCrossFading : CS.System.Boolean
CS.UnityEngine.LODGroup.animateCrossFading = nil

---@property readwrite CS.UnityEngine.LODGroup.enabled : CS.System.Boolean
CS.UnityEngine.LODGroup.enabled = nil

---@property readwrite CS.UnityEngine.LODGroup.crossFadeAnimationDuration : CS.System.Single
CS.UnityEngine.LODGroup.crossFadeAnimationDuration = nil

---@return CS.UnityEngine.LODGroup
function CS.UnityEngine.LODGroup()
end

function CS.UnityEngine.LODGroup:RecalculateBounds()
end

---@return CS.UnityEngine.LOD[]
function CS.UnityEngine.LODGroup:GetLODs()
end

---@param lods : CS.UnityEngine.LOD[]
function CS.UnityEngine.LODGroup:SetLODS(lods)
end

---@param lods : CS.UnityEngine.LOD[]
function CS.UnityEngine.LODGroup:SetLODs(lods)
end

---@param index : CS.System.Int32
function CS.UnityEngine.LODGroup:ForceLOD(index)
end