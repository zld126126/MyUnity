---@class CS.UnityEngine.BitStream : CS.System.Object
CS.UnityEngine.BitStream = {}

---@property readonly CS.UnityEngine.BitStream.isReading : CS.System.Boolean
CS.UnityEngine.BitStream.isReading = nil

---@property readonly CS.UnityEngine.BitStream.isWriting : CS.System.Boolean
CS.UnityEngine.BitStream.isWriting = nil

---@return CS.UnityEngine.BitStream
function CS.UnityEngine.BitStream()
end

---@param value : CS.System.Boolean
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.System.Char
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.System.Int16
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.System.Int32
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.System.Single
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.System.Single
---@param maxDelta : CS.System.Single
function CS.UnityEngine.BitStream:Serialize(value, maxDelta)
end

---@param value : CS.UnityEngine.Quaternion
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.UnityEngine.Quaternion
---@param maxDelta : CS.System.Single
function CS.UnityEngine.BitStream:Serialize(value, maxDelta)
end

---@param value : CS.UnityEngine.Vector3
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param value : CS.UnityEngine.Vector3
---@param maxDelta : CS.System.Single
function CS.UnityEngine.BitStream:Serialize(value, maxDelta)
end

---@param value : CS.UnityEngine.NetworkPlayer
function CS.UnityEngine.BitStream:Serialize(value)
end

---@param viewID : CS.UnityEngine.NetworkViewID
function CS.UnityEngine.BitStream:Serialize(viewID)
end