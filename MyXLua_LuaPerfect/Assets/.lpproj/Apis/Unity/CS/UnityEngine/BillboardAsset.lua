---@class CS.UnityEngine.BillboardAsset : CS.UnityEngine.Object
CS.UnityEngine.BillboardAsset = {}

---@property readwrite CS.UnityEngine.BillboardAsset.width : CS.System.Single
CS.UnityEngine.BillboardAsset.width = nil

---@property readwrite CS.UnityEngine.BillboardAsset.height : CS.System.Single
CS.UnityEngine.BillboardAsset.height = nil

---@property readwrite CS.UnityEngine.BillboardAsset.bottom : CS.System.Single
CS.UnityEngine.BillboardAsset.bottom = nil

---@property readonly CS.UnityEngine.BillboardAsset.imageCount : CS.System.Int32
CS.UnityEngine.BillboardAsset.imageCount = nil

---@property readonly CS.UnityEngine.BillboardAsset.vertexCount : CS.System.Int32
CS.UnityEngine.BillboardAsset.vertexCount = nil

---@property readonly CS.UnityEngine.BillboardAsset.indexCount : CS.System.Int32
CS.UnityEngine.BillboardAsset.indexCount = nil

---@property readwrite CS.UnityEngine.BillboardAsset.material : CS.UnityEngine.Material
CS.UnityEngine.BillboardAsset.material = nil

---@return CS.UnityEngine.BillboardAsset
function CS.UnityEngine.BillboardAsset()
end

---@param imageTexCoords : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:GetImageTexCoords(imageTexCoords)
end

---@return CS.UnityEngine.Vector4[]
function CS.UnityEngine.BillboardAsset:GetImageTexCoords()
end

---@param imageTexCoords : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:SetImageTexCoords(imageTexCoords)
end

---@param imageTexCoords : CS.UnityEngine.Vector4[]
function CS.UnityEngine.BillboardAsset:SetImageTexCoords(imageTexCoords)
end

---@param vertices : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:GetVertices(vertices)
end

---@return CS.UnityEngine.Vector2[]
function CS.UnityEngine.BillboardAsset:GetVertices()
end

---@param vertices : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:SetVertices(vertices)
end

---@param vertices : CS.UnityEngine.Vector2[]
function CS.UnityEngine.BillboardAsset:SetVertices(vertices)
end

---@param indices : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:GetIndices(indices)
end

---@return CS.System.UInt16[]
function CS.UnityEngine.BillboardAsset:GetIndices()
end

---@param indices : CS.System.Collections.Generic.List
function CS.UnityEngine.BillboardAsset:SetIndices(indices)
end

---@param indices : CS.System.UInt16[]
function CS.UnityEngine.BillboardAsset:SetIndices(indices)
end