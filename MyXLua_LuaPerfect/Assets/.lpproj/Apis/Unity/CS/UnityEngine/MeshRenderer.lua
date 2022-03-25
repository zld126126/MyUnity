---@class CS.UnityEngine.MeshRenderer : CS.UnityEngine.Renderer
CS.UnityEngine.MeshRenderer = {}

---@property readwrite CS.UnityEngine.MeshRenderer.additionalVertexStreams : CS.UnityEngine.Mesh
CS.UnityEngine.MeshRenderer.additionalVertexStreams = nil

---@property readwrite CS.UnityEngine.MeshRenderer.enlightenVertexStream : CS.UnityEngine.Mesh
CS.UnityEngine.MeshRenderer.enlightenVertexStream = nil

---@property readonly CS.UnityEngine.MeshRenderer.subMeshStartIndex : CS.System.Int32
CS.UnityEngine.MeshRenderer.subMeshStartIndex = nil

---@property readwrite CS.UnityEngine.MeshRenderer.scaleInLightmap : CS.System.Single
CS.UnityEngine.MeshRenderer.scaleInLightmap = nil

---@property readwrite CS.UnityEngine.MeshRenderer.receiveGI : CS.UnityEngine.ReceiveGI
CS.UnityEngine.MeshRenderer.receiveGI = nil

---@property readwrite CS.UnityEngine.MeshRenderer.stitchLightmapSeams : CS.System.Boolean
CS.UnityEngine.MeshRenderer.stitchLightmapSeams = nil

---@return CS.UnityEngine.MeshRenderer
function CS.UnityEngine.MeshRenderer()
end