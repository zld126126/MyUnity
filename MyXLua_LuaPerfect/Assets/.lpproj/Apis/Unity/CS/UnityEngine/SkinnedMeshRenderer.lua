---@class CS.UnityEngine.SkinnedMeshRenderer : CS.UnityEngine.Renderer
CS.UnityEngine.SkinnedMeshRenderer = {}

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.quality : CS.UnityEngine.SkinQuality
CS.UnityEngine.SkinnedMeshRenderer.quality = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.updateWhenOffscreen : CS.System.Boolean
CS.UnityEngine.SkinnedMeshRenderer.updateWhenOffscreen = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.forceMatrixRecalculationPerRender : CS.System.Boolean
CS.UnityEngine.SkinnedMeshRenderer.forceMatrixRecalculationPerRender = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.rootBone : CS.UnityEngine.Transform
CS.UnityEngine.SkinnedMeshRenderer.rootBone = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.bones : CS.UnityEngine.Transform[]
CS.UnityEngine.SkinnedMeshRenderer.bones = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.sharedMesh : CS.UnityEngine.Mesh
CS.UnityEngine.SkinnedMeshRenderer.sharedMesh = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.skinnedMotionVectors : CS.System.Boolean
CS.UnityEngine.SkinnedMeshRenderer.skinnedMotionVectors = nil

---@property readwrite CS.UnityEngine.SkinnedMeshRenderer.localBounds : CS.UnityEngine.Bounds
CS.UnityEngine.SkinnedMeshRenderer.localBounds = nil

---@return CS.UnityEngine.SkinnedMeshRenderer
function CS.UnityEngine.SkinnedMeshRenderer()
end

---@param index : CS.System.Int32
---@return CS.System.Single
function CS.UnityEngine.SkinnedMeshRenderer:GetBlendShapeWeight(index)
end

---@param index : CS.System.Int32
---@param value : CS.System.Single
function CS.UnityEngine.SkinnedMeshRenderer:SetBlendShapeWeight(index, value)
end

---@param mesh : CS.UnityEngine.Mesh
function CS.UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh)
end

---@param mesh : CS.UnityEngine.Mesh
---@param useScale : CS.System.Boolean
function CS.UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh, useScale)
end