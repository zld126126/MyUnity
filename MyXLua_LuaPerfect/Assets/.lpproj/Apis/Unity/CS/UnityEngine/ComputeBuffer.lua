---@class CS.UnityEngine.ComputeBuffer : CS.System.Object
CS.UnityEngine.ComputeBuffer = {}

---@property readonly CS.UnityEngine.ComputeBuffer.count : CS.System.Int32
CS.UnityEngine.ComputeBuffer.count = nil

---@property readonly CS.UnityEngine.ComputeBuffer.stride : CS.System.Int32
CS.UnityEngine.ComputeBuffer.stride = nil

---@property writeonly CS.UnityEngine.ComputeBuffer.name : CS.System.String
CS.UnityEngine.ComputeBuffer.name = nil

---@param count : CS.System.Int32
---@param stride : CS.System.Int32
---@return CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeBuffer(count, stride)
end

---@param count : CS.System.Int32
---@param stride : CS.System.Int32
---@param type : CS.UnityEngine.ComputeBufferType
---@return CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeBuffer(count, stride, type)
end

---@param count : CS.System.Int32
---@param stride : CS.System.Int32
---@param type : CS.UnityEngine.ComputeBufferType
---@param usage : CS.UnityEngine.ComputeBufferMode
---@return CS.UnityEngine.ComputeBuffer
function CS.UnityEngine.ComputeBuffer(count, stride, type, usage)
end

function CS.UnityEngine.ComputeBuffer:Dispose()
end

function CS.UnityEngine.ComputeBuffer:Release()
end

---@return CS.System.Boolean
function CS.UnityEngine.ComputeBuffer:IsValid()
end

---@param data : CS.System.Array
function CS.UnityEngine.ComputeBuffer:SetData(data)
end

---@param data : CS.System.Array
---@param managedBufferStartIndex : CS.System.Int32
---@param computeBufferStartIndex : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.ComputeBuffer:SetData(data, managedBufferStartIndex, computeBufferStartIndex, count)
end

---@param data : CS.System.Array
function CS.UnityEngine.ComputeBuffer:GetData(data)
end

---@param data : CS.System.Array
---@param managedBufferStartIndex : CS.System.Int32
---@param computeBufferStartIndex : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.ComputeBuffer:GetData(data, managedBufferStartIndex, computeBufferStartIndex, count)
end

---@param counterValue : CS.System.UInt32
function CS.UnityEngine.ComputeBuffer:SetCounterValue(counterValue)
end

---@param src : CS.UnityEngine.ComputeBuffer
---@param dst : CS.UnityEngine.ComputeBuffer
---@param dstOffsetBytes : CS.System.Int32
function CS.UnityEngine.ComputeBuffer.CopyCount(src, dst, dstOffsetBytes)
end

---@return CS.System.IntPtr
function CS.UnityEngine.ComputeBuffer:GetNativeBufferPtr()
end