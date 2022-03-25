---@class CS.UnityEngine.HashUtilities : CS.System.Object
CS.UnityEngine.HashUtilities = {}

---@param inHash : CS.UnityEngine.Hash128
---@param outHash : CS.UnityEngine.Hash128
function CS.UnityEngine.HashUtilities.AppendHash(inHash, outHash)
end

---@param value : CS.UnityEngine.Matrix4x4
---@param hash : CS.UnityEngine.Hash128
function CS.UnityEngine.HashUtilities.QuantisedMatrixHash(value, hash)
end

---@param value : CS.UnityEngine.Vector3
---@param hash : CS.UnityEngine.Hash128
function CS.UnityEngine.HashUtilities.QuantisedVectorHash(value, hash)
end

---@param value : CS.System.Byte[]
---@param hash : CS.UnityEngine.Hash128
function CS.UnityEngine.HashUtilities.ComputeHash128(value, hash)
end