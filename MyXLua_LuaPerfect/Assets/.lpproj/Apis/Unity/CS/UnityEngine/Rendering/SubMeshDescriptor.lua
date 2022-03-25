---@class CS.UnityEngine.Rendering.SubMeshDescriptor : CS.System.ValueType
CS.UnityEngine.Rendering.SubMeshDescriptor = {}

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.bounds : CS.UnityEngine.Bounds
CS.UnityEngine.Rendering.SubMeshDescriptor.bounds = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.topology : CS.UnityEngine.MeshTopology
CS.UnityEngine.Rendering.SubMeshDescriptor.topology = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.indexStart : CS.System.Int32
CS.UnityEngine.Rendering.SubMeshDescriptor.indexStart = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.indexCount : CS.System.Int32
CS.UnityEngine.Rendering.SubMeshDescriptor.indexCount = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.baseVertex : CS.System.Int32
CS.UnityEngine.Rendering.SubMeshDescriptor.baseVertex = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.firstVertex : CS.System.Int32
CS.UnityEngine.Rendering.SubMeshDescriptor.firstVertex = nil

---@property readwrite CS.UnityEngine.Rendering.SubMeshDescriptor.vertexCount : CS.System.Int32
CS.UnityEngine.Rendering.SubMeshDescriptor.vertexCount = nil

---@param indexStart : CS.System.Int32
---@param indexCount : CS.System.Int32
---@param topology : CS.UnityEngine.MeshTopology
---@return CS.UnityEngine.Rendering.SubMeshDescriptor
function CS.UnityEngine.Rendering.SubMeshDescriptor(indexStart, indexCount, topology)
end

---@return CS.System.String
function CS.UnityEngine.Rendering.SubMeshDescriptor:ToString()
end