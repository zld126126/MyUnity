---@class CS.UnityEngine.TrailRenderer : CS.UnityEngine.Renderer
CS.UnityEngine.TrailRenderer = {}

---@property readonly CS.UnityEngine.TrailRenderer.numPositions : CS.System.Int32
CS.UnityEngine.TrailRenderer.numPositions = nil

---@property readwrite CS.UnityEngine.TrailRenderer.time : CS.System.Single
CS.UnityEngine.TrailRenderer.time = nil

---@property readwrite CS.UnityEngine.TrailRenderer.startWidth : CS.System.Single
CS.UnityEngine.TrailRenderer.startWidth = nil

---@property readwrite CS.UnityEngine.TrailRenderer.endWidth : CS.System.Single
CS.UnityEngine.TrailRenderer.endWidth = nil

---@property readwrite CS.UnityEngine.TrailRenderer.widthMultiplier : CS.System.Single
CS.UnityEngine.TrailRenderer.widthMultiplier = nil

---@property readwrite CS.UnityEngine.TrailRenderer.autodestruct : CS.System.Boolean
CS.UnityEngine.TrailRenderer.autodestruct = nil

---@property readwrite CS.UnityEngine.TrailRenderer.emitting : CS.System.Boolean
CS.UnityEngine.TrailRenderer.emitting = nil

---@property readwrite CS.UnityEngine.TrailRenderer.numCornerVertices : CS.System.Int32
CS.UnityEngine.TrailRenderer.numCornerVertices = nil

---@property readwrite CS.UnityEngine.TrailRenderer.numCapVertices : CS.System.Int32
CS.UnityEngine.TrailRenderer.numCapVertices = nil

---@property readwrite CS.UnityEngine.TrailRenderer.minVertexDistance : CS.System.Single
CS.UnityEngine.TrailRenderer.minVertexDistance = nil

---@property readwrite CS.UnityEngine.TrailRenderer.startColor : CS.UnityEngine.Color
CS.UnityEngine.TrailRenderer.startColor = nil

---@property readwrite CS.UnityEngine.TrailRenderer.endColor : CS.UnityEngine.Color
CS.UnityEngine.TrailRenderer.endColor = nil

---@property readonly CS.UnityEngine.TrailRenderer.positionCount : CS.System.Int32
CS.UnityEngine.TrailRenderer.positionCount = nil

---@property readwrite CS.UnityEngine.TrailRenderer.shadowBias : CS.System.Single
CS.UnityEngine.TrailRenderer.shadowBias = nil

---@property readwrite CS.UnityEngine.TrailRenderer.generateLightingData : CS.System.Boolean
CS.UnityEngine.TrailRenderer.generateLightingData = nil

---@property readwrite CS.UnityEngine.TrailRenderer.textureMode : CS.UnityEngine.LineTextureMode
CS.UnityEngine.TrailRenderer.textureMode = nil

---@property readwrite CS.UnityEngine.TrailRenderer.alignment : CS.UnityEngine.LineAlignment
CS.UnityEngine.TrailRenderer.alignment = nil

---@property readwrite CS.UnityEngine.TrailRenderer.widthCurve : CS.UnityEngine.AnimationCurve
CS.UnityEngine.TrailRenderer.widthCurve = nil

---@property readwrite CS.UnityEngine.TrailRenderer.colorGradient : CS.UnityEngine.Gradient
CS.UnityEngine.TrailRenderer.colorGradient = nil

---@return CS.UnityEngine.TrailRenderer
function CS.UnityEngine.TrailRenderer()
end

---@param index : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.TrailRenderer:SetPosition(index, position)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.TrailRenderer:GetPosition(index)
end

function CS.UnityEngine.TrailRenderer:Clear()
end

---@param mesh : CS.UnityEngine.Mesh
---@param useTransform : CS.System.Boolean
function CS.UnityEngine.TrailRenderer:BakeMesh(mesh, useTransform)
end

---@param mesh : CS.UnityEngine.Mesh
---@param camera : CS.UnityEngine.Camera
---@param useTransform : CS.System.Boolean
function CS.UnityEngine.TrailRenderer:BakeMesh(mesh, camera, useTransform)
end

---@param positions : CS.UnityEngine.Vector3[]
---@return CS.System.Int32
function CS.UnityEngine.TrailRenderer:GetPositions(positions)
end

---@param positions : CS.UnityEngine.Vector3[]
function CS.UnityEngine.TrailRenderer:SetPositions(positions)
end

---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.TrailRenderer:AddPosition(position)
end

---@param positions : CS.UnityEngine.Vector3[]
function CS.UnityEngine.TrailRenderer:AddPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeArray
function CS.UnityEngine.TrailRenderer:SetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeSlice
function CS.UnityEngine.TrailRenderer:SetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeArray
---@return CS.System.Int32
function CS.UnityEngine.TrailRenderer:GetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeSlice
---@return CS.System.Int32
function CS.UnityEngine.TrailRenderer:GetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeArray
function CS.UnityEngine.TrailRenderer:AddPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeSlice
function CS.UnityEngine.TrailRenderer:AddPositions(positions)
end