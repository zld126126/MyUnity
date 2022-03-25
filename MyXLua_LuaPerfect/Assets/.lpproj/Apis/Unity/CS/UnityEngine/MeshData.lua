---@class CS.UnityEngine.MeshData : CS.System.ValueType
CS.UnityEngine.MeshData = {}

---@property readonly CS.UnityEngine.MeshData.vertexCount : CS.System.Int32
CS.UnityEngine.MeshData.vertexCount = nil

---@property readonly CS.UnityEngine.MeshData.vertexBufferCount : CS.System.Int32
CS.UnityEngine.MeshData.vertexBufferCount = nil

---@property readonly CS.UnityEngine.MeshData.indexFormat : CS.UnityEngine.Rendering.IndexFormat
CS.UnityEngine.MeshData.indexFormat = nil

---@property readwrite CS.UnityEngine.MeshData.subMeshCount : CS.System.Int32
CS.UnityEngine.MeshData.subMeshCount = nil

---@param attr : CS.UnityEngine.Rendering.VertexAttribute
---@return CS.System.Boolean
function CS.UnityEngine.MeshData:HasVertexAttribute(attr)
end

---@param attr : CS.UnityEngine.Rendering.VertexAttribute
---@return CS.System.Int32
function CS.UnityEngine.MeshData:GetVertexAttributeDimension(attr)
end

---@param attr : CS.UnityEngine.Rendering.VertexAttribute
---@return CS.UnityEngine.Rendering.VertexAttributeFormat
function CS.UnityEngine.MeshData:GetVertexAttributeFormat(attr)
end

---@param outVertices : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetVertices(outVertices)
end

---@param outNormals : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetNormals(outNormals)
end

---@param outTangents : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetTangents(outTangents)
end

---@param outColors : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetColors(outColors)
end

---@param outColors : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetColors(outColors)
end

---@param channel : CS.System.Int32
---@param outUVs : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetUVs(channel, outUVs)
end

---@param channel : CS.System.Int32
---@param outUVs : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetUVs(channel, outUVs)
end

---@param channel : CS.System.Int32
---@param outUVs : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:GetUVs(channel, outUVs)
end

---@param vertexCount : CS.System.Int32
---@param attributes : CS.UnityEngine.Rendering.VertexAttributeDescriptor[]
function CS.UnityEngine.MeshData:SetVertexBufferParams(vertexCount, attributes)
end

---@param vertexCount : CS.System.Int32
---@param attributes : CS.Unity.Collections.NativeArray
function CS.UnityEngine.MeshData:SetVertexBufferParams(vertexCount, attributes)
end

---@param indexCount : CS.System.Int32
---@param format : CS.UnityEngine.Rendering.IndexFormat
function CS.UnityEngine.MeshData:SetIndexBufferParams(indexCount, format)
end

---@param outIndices : CS.Unity.Collections.NativeArray
---@param submesh : CS.System.Int32
---@param applyBaseVertex : CS.System.Boolean
function CS.UnityEngine.MeshData:GetIndices(outIndices, submesh, applyBaseVertex)
end

---@param outIndices : CS.Unity.Collections.NativeArray
---@param submesh : CS.System.Int32
---@param applyBaseVertex : CS.System.Boolean
function CS.UnityEngine.MeshData:GetIndices(outIndices, submesh, applyBaseVertex)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Rendering.SubMeshDescriptor
function CS.UnityEngine.MeshData:GetSubMesh(index)
end

---@param index : CS.System.Int32
---@param desc : CS.UnityEngine.Rendering.SubMeshDescriptor
---@param flags : CS.UnityEngine.Rendering.MeshUpdateFlags
function CS.UnityEngine.MeshData:SetSubMesh(index, desc, flags)
end