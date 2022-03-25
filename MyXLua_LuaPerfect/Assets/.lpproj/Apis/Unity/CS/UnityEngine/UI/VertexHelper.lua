---@class CS.UnityEngine.UI.VertexHelper : CS.System.Object
CS.UnityEngine.UI.VertexHelper = {}

---@property readonly CS.UnityEngine.UI.VertexHelper.currentVertCount : CS.System.Int32
CS.UnityEngine.UI.VertexHelper.currentVertCount = nil

---@property readonly CS.UnityEngine.UI.VertexHelper.currentIndexCount : CS.System.Int32
CS.UnityEngine.UI.VertexHelper.currentIndexCount = nil

---@return CS.UnityEngine.UI.VertexHelper
function CS.UnityEngine.UI.VertexHelper()
end

---@param m : CS.UnityEngine.Mesh
---@return CS.UnityEngine.UI.VertexHelper
function CS.UnityEngine.UI.VertexHelper(m)
end

function CS.UnityEngine.UI.VertexHelper:Dispose()
end

function CS.UnityEngine.UI.VertexHelper:Clear()
end

---@param vertex : CS.UnityEngine.UIVertex
---@param i : CS.System.Int32
function CS.UnityEngine.UI.VertexHelper:PopulateUIVertex(vertex, i)
end

---@param vertex : CS.UnityEngine.UIVertex
---@param i : CS.System.Int32
function CS.UnityEngine.UI.VertexHelper:SetUIVertex(vertex, i)
end

---@param mesh : CS.UnityEngine.Mesh
function CS.UnityEngine.UI.VertexHelper:FillMesh(mesh)
end

---@param position : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color32
---@param uv0 : CS.UnityEngine.Vector4
---@param uv1 : CS.UnityEngine.Vector4
---@param uv2 : CS.UnityEngine.Vector4
---@param uv3 : CS.UnityEngine.Vector4
---@param normal : CS.UnityEngine.Vector3
---@param tangent : CS.UnityEngine.Vector4
function CS.UnityEngine.UI.VertexHelper:AddVert(position, color, uv0, uv1, uv2, uv3, normal, tangent)
end

---@param position : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color32
---@param uv0 : CS.UnityEngine.Vector4
---@param uv1 : CS.UnityEngine.Vector4
---@param normal : CS.UnityEngine.Vector3
---@param tangent : CS.UnityEngine.Vector4
function CS.UnityEngine.UI.VertexHelper:AddVert(position, color, uv0, uv1, normal, tangent)
end

---@param position : CS.UnityEngine.Vector3
---@param color : CS.UnityEngine.Color32
---@param uv0 : CS.UnityEngine.Vector4
function CS.UnityEngine.UI.VertexHelper:AddVert(position, color, uv0)
end

---@param v : CS.UnityEngine.UIVertex
function CS.UnityEngine.UI.VertexHelper:AddVert(v)
end

---@param idx0 : CS.System.Int32
---@param idx1 : CS.System.Int32
---@param idx2 : CS.System.Int32
function CS.UnityEngine.UI.VertexHelper:AddTriangle(idx0, idx1, idx2)
end

---@param verts : CS.UnityEngine.UIVertex[]
function CS.UnityEngine.UI.VertexHelper:AddUIVertexQuad(verts)
end

---@param verts : CS.System.Collections.Generic.List
---@param indices : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.VertexHelper:AddUIVertexStream(verts, indices)
end

---@param verts : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.VertexHelper:AddUIVertexTriangleStream(verts)
end

---@param stream : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.VertexHelper:GetUIVertexStream(stream)
end