---@class CS.UnityEngine.GraphicsBuffer : CS.System.Object
CS.UnityEngine.GraphicsBuffer = {}

---@property readonly CS.UnityEngine.GraphicsBuffer.count : CS.System.Int32
CS.UnityEngine.GraphicsBuffer.count = nil

---@property readonly CS.UnityEngine.GraphicsBuffer.stride : CS.System.Int32
CS.UnityEngine.GraphicsBuffer.stride = nil

---@param target : CS.UnityEngine.Target
---@param count : CS.System.Int32
---@param stride : CS.System.Int32
---@return CS.UnityEngine.GraphicsBuffer
function CS.UnityEngine.GraphicsBuffer(target, count, stride)
end

function CS.UnityEngine.GraphicsBuffer:Dispose()
end

function CS.UnityEngine.GraphicsBuffer:Release()
end

---@return CS.System.Boolean
function CS.UnityEngine.GraphicsBuffer:IsValid()
end

---@param data : CS.System.Array
function CS.UnityEngine.GraphicsBuffer:SetData(data)
end

---@param data : CS.System.Array
---@param managedBufferStartIndex : CS.System.Int32
---@param graphicsBufferStartIndex : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer:SetData(data, managedBufferStartIndex, graphicsBufferStartIndex, count)
end

---@param data : CS.System.Array
function CS.UnityEngine.GraphicsBuffer:GetData(data)
end

---@param data : CS.System.Array
---@param managedBufferStartIndex : CS.System.Int32
---@param computeBufferStartIndex : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer:GetData(data, managedBufferStartIndex, computeBufferStartIndex, count)
end

---@return CS.System.IntPtr
function CS.UnityEngine.GraphicsBuffer:GetNativeBufferPtr()
end

---@param counterValue : CS.System.UInt32
function CS.UnityEngine.GraphicsBuffer:SetCounterValue(counterValue)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param dst : CS.UnityEngine.ComputeBuffer
---@param dstOffsetBytes : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer.CopyCount(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param dst : CS.UnityEngine.ComputeBuffer
---@param dstOffsetBytes : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer.CopyCount(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param dst : CS.UnityEngine.GraphicsBuffer
---@param dstOffsetBytes : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer.CopyCount(src, dst, dstOffsetBytes)
end

---@param src : CS.UnityEngine.GraphicsBuffer
---@param dst : CS.UnityEngine.GraphicsBuffer
---@param dstOffsetBytes : CS.System.Int32
function CS.UnityEngine.GraphicsBuffer.CopyCount(src, dst, dstOffsetBytes)
end