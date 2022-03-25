---@class CS.UnityEngine.LineRenderer : CS.UnityEngine.Renderer
CS.UnityEngine.LineRenderer = {}

---@property readwrite CS.UnityEngine.LineRenderer.numPositions : CS.System.Int32
CS.UnityEngine.LineRenderer.numPositions = nil

---@property readwrite CS.UnityEngine.LineRenderer.startWidth : CS.System.Single
CS.UnityEngine.LineRenderer.startWidth = nil

---@property readwrite CS.UnityEngine.LineRenderer.endWidth : CS.System.Single
CS.UnityEngine.LineRenderer.endWidth = nil

---@property readwrite CS.UnityEngine.LineRenderer.widthMultiplier : CS.System.Single
CS.UnityEngine.LineRenderer.widthMultiplier = nil

---@property readwrite CS.UnityEngine.LineRenderer.numCornerVertices : CS.System.Int32
CS.UnityEngine.LineRenderer.numCornerVertices = nil

---@property readwrite CS.UnityEngine.LineRenderer.numCapVertices : CS.System.Int32
CS.UnityEngine.LineRenderer.numCapVertices = nil

---@property readwrite CS.UnityEngine.LineRenderer.useWorldSpace : CS.System.Boolean
CS.UnityEngine.LineRenderer.useWorldSpace = nil

---@property readwrite CS.UnityEngine.LineRenderer.loop : CS.System.Boolean
CS.UnityEngine.LineRenderer.loop = nil

---@property readwrite CS.UnityEngine.LineRenderer.startColor : CS.UnityEngine.Color
CS.UnityEngine.LineRenderer.startColor = nil

---@property readwrite CS.UnityEngine.LineRenderer.endColor : CS.UnityEngine.Color
CS.UnityEngine.LineRenderer.endColor = nil

---@property readwrite CS.UnityEngine.LineRenderer.positionCount : CS.System.Int32
CS.UnityEngine.LineRenderer.positionCount = nil

---@property readwrite CS.UnityEngine.LineRenderer.shadowBias : CS.System.Single
CS.UnityEngine.LineRenderer.shadowBias = nil

---@property readwrite CS.UnityEngine.LineRenderer.generateLightingData : CS.System.Boolean
CS.UnityEngine.LineRenderer.generateLightingData = nil

---@property readwrite CS.UnityEngine.LineRenderer.textureMode : CS.UnityEngine.LineTextureMode
CS.UnityEngine.LineRenderer.textureMode = nil

---@property readwrite CS.UnityEngine.LineRenderer.alignment : CS.UnityEngine.LineAlignment
CS.UnityEngine.LineRenderer.alignment = nil

---@property readwrite CS.UnityEngine.LineRenderer.widthCurve : CS.UnityEngine.AnimationCurve
CS.UnityEngine.LineRenderer.widthCurve = nil

---@property readwrite CS.UnityEngine.LineRenderer.colorGradient : CS.UnityEngine.Gradient
CS.UnityEngine.LineRenderer.colorGradient = nil

---@return CS.UnityEngine.LineRenderer
function CS.UnityEngine.LineRenderer()
end

---@param start : CS.System.Single
---@param end_ : CS.System.Single
function CS.UnityEngine.LineRenderer:SetWidth(start, end_)
end

---@param start : CS.UnityEngine.Color
---@param end_ : CS.UnityEngine.Color
function CS.UnityEngine.LineRenderer:SetColors(start, end_)
end

---@param count : CS.System.Int32
function CS.UnityEngine.LineRenderer:SetVertexCount(count)
end

---@param index : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.LineRenderer:SetPosition(index, position)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.LineRenderer:GetPosition(index)
end

---@param tolerance : CS.System.Single
function CS.UnityEngine.LineRenderer:Simplify(tolerance)
end

---@param mesh : CS.UnityEngine.Mesh
---@param useTransform : CS.System.Boolean
function CS.UnityEngine.LineRenderer:BakeMesh(mesh, useTransform)
end

---@param mesh : CS.UnityEngine.Mesh
---@param camera : CS.UnityEngine.Camera
---@param useTransform : CS.System.Boolean
function CS.UnityEngine.LineRenderer:BakeMesh(mesh, camera, useTransform)
end

---@param positions : CS.UnityEngine.Vector3[]
---@return CS.System.Int32
function CS.UnityEngine.LineRenderer:GetPositions(positions)
end

---@param positions : CS.UnityEngine.Vector3[]
function CS.UnityEngine.LineRenderer:SetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeArray
function CS.UnityEngine.LineRenderer:SetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeSlice
function CS.UnityEngine.LineRenderer:SetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeArray
---@return CS.System.Int32
function CS.UnityEngine.LineRenderer:GetPositions(positions)
end

---@param positions : CS.Unity.Collections.NativeSlice
---@return CS.System.Int32
function CS.UnityEngine.LineRenderer:GetPositions(positions)
end