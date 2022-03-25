---@module CS.Unity.Baselib.LowLevel
CS.Unity.Baselib.LowLevel = {}

---@class CS.Unity.Baselib.LowLevel.Binding : CS.System.Object
CS.Unity.Baselib.LowLevel.Binding = {}

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_MaxAlignment : CS.System.UIntPtr
CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_MaxAlignment = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_MinGuaranteedAlignment : CS.System.UIntPtr
CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_MinGuaranteedAlignment = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_IpMaxStringLength : CS.System.UInt32
CS.Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_IpMaxStringLength = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer_Id_Invalid : CS.System.IntPtr
CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer_Id_Invalid = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint_MaxSize : CS.System.UInt32
CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint_MaxSize = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Thread_InvalidId : CS.System.IntPtr
CS.Unity.Baselib.LowLevel.Binding.Baselib_Thread_InvalidId = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_MinimumGuaranteedSlots : CS.System.UInt32
CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_MinimumGuaranteedSlots = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_SecondsPerMinute : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_SecondsPerMinute = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_MillisecondsPerSecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_MillisecondsPerSecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_MillisecondsPerMinute : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_MillisecondsPerMinute = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerMillisecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerMillisecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerSecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerSecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerMinute : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_MicrosecondsPerMinute = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMicrosecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMicrosecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMillisecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMillisecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerSecond : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerSecond = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMinute : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_NanosecondsPerMinute = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_MaxNumberOfNanosecondsPerTick : CS.System.UInt64
CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_MaxNumberOfNanosecondsPerTick = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_MinNumberOfNanosecondsPerTick : CS.System.Double
CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_MinNumberOfNanosecondsPerTick = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation_Invalid : CS.Unity.Baselib.LowLevel.Baselib_Memory_PageAllocation
CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation_Invalid = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_Invalid : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_Invalid = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle_Invalid : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle_Invalid = nil

---@field public CS.Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle_Invalid : CS.Unity.Baselib.LowLevel.Baselib_DynamicLibrary_Handle
CS.Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle_Invalid = nil

---@param pathname : CS.System.BytePointer
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_DynamicLibrary_Handle
function CS.Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Open(pathname, errorState)
end

---@param handle : CS.Unity.Baselib.LowLevel.Baselib_DynamicLibrary_Handle
---@param functionName : CS.System.BytePointer
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_GetFunction(handle, functionName, errorState)
end

---@param handle : CS.Unity.Baselib.LowLevel.Baselib_DynamicLibrary_Handle
function CS.Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Close(handle)
end

---@param errorState : CS.Baselib_ErrorStatePointer
---@param buffer : CS.System.BytePointer
---@param bufferLen : CS.System.UInt32
---@param verbosity : CS.Unity.Baselib.LowLevel.Baselib_ErrorState_ExplainVerbosity
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_ErrorState_Explain(errorState, buffer, bufferLen, verbosity)
end

---@param outPagesSizeInfo : CS.Baselib_Memory_PageSizeInfoPointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_GetPageSizeInfo(outPagesSizeInfo)
end

---@param size : CS.System.UIntPtr
---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_Allocate(size)
end

---@param ptr : CS.System.IntPtr
---@param newSize : CS.System.UIntPtr
---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_Reallocate(ptr, newSize)
end

---@param ptr : CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_Free(ptr)
end

---@param size : CS.System.UIntPtr
---@param alignment : CS.System.UIntPtr
---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_AlignedAllocate(size, alignment)
end

---@param ptr : CS.System.IntPtr
---@param newSize : CS.System.UIntPtr
---@param alignment : CS.System.UIntPtr
---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_AlignedReallocate(ptr, newSize, alignment)
end

---@param ptr : CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_AlignedFree(ptr)
end

---@param pageSize : CS.System.UInt64
---@param pageCount : CS.System.UInt64
---@param alignmentInMultipleOfPageSize : CS.System.UInt64
---@param pageState : CS.Unity.Baselib.LowLevel.Baselib_Memory_PageState
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_Memory_PageAllocation
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_AllocatePages(pageSize, pageCount, alignmentInMultipleOfPageSize, pageState, errorState)
end

---@param pageAllocation : CS.Unity.Baselib.LowLevel.Baselib_Memory_PageAllocation
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_ReleasePages(pageAllocation, errorState)
end

---@param addressOfFirstPage : CS.System.IntPtr
---@param pageSize : CS.System.UInt64
---@param pageCount : CS.System.UInt64
---@param pageState : CS.Unity.Baselib.LowLevel.Baselib_Memory_PageState
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Memory_SetPageState(addressOfFirstPage, pageSize, pageCount, pageState, errorState)
end

---@param dstAddress : CS.Baselib_NetworkAddressPointer
---@param family : CS.Unity.Baselib.LowLevel.Baselib_NetworkAddress_Family
---@param ip : CS.System.BytePointer
---@param port : CS.System.UInt16
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_Encode(dstAddress, family, ip, port, errorState)
end

---@param srcAddress : CS.Baselib_NetworkAddressPointer
---@param family : CS.Baselib_NetworkAddress_FamilyPointer
---@param ipAddressBuffer : CS.System.BytePointer
---@param ipAddressBufferLen : CS.System.UInt32
---@param port : CS.System.UInt16Pointer
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_Decode(srcAddress, family, ipAddressBuffer, ipAddressBufferLen, port, errorState)
end

---@param pageAllocation : CS.Unity.Baselib.LowLevel.Baselib_Memory_PageAllocation
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Buffer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer_Register(pageAllocation, errorState)
end

---@param buffer : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Buffer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer_Deregister(buffer)
end

---@param buffer : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Buffer
---@param offset : CS.System.UInt32
---@param size : CS.System.UInt32
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_BufferSlice
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_BufferSlice_Create(buffer, offset, size)
end

---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_BufferSlice
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_BufferSlice_Empty()
end

---@param srcAddress : CS.Baselib_NetworkAddressPointer
---@param dstSlice : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_BufferSlice
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Endpoint
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint_Create(srcAddress, dstSlice, errorState)
end

---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Endpoint
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint_Empty()
end

---@param endpoint : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Endpoint
---@param dstAddress : CS.Baselib_NetworkAddressPointer
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint_GetNetworkAddress(endpoint, dstAddress, errorState)
end

---@param bindAddress : CS.Baselib_NetworkAddressPointer
---@param endpointReuse : CS.Unity.Baselib.LowLevel.Baselib_NetworkAddress_AddressReuse
---@param sendQueueSize : CS.System.UInt32
---@param recvQueueSize : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_Create(bindAddress, endpointReuse, sendQueueSize, recvQueueSize, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param requests : CS.Baselib_RegisteredNetwork_RequestPointer
---@param requestsCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_ScheduleRecv(socket, requests, requestsCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param requests : CS.Baselib_RegisteredNetwork_RequestPointer
---@param requestsCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_ScheduleSend(socket, requests, requestsCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_ProcessStatus
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_ProcessRecv(socket, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_ProcessStatus
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_ProcessSend(socket, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param timeoutInMilliseconds : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_CompletionQueueStatus
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_WaitForCompletedRecv(socket, timeoutInMilliseconds, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param timeoutInMilliseconds : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_CompletionQueueStatus
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_WaitForCompletedSend(socket, timeoutInMilliseconds, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param results : CS.Baselib_RegisteredNetwork_CompletionResultPointer
---@param resultsCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_DequeueRecv(socket, results, resultsCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param results : CS.Baselib_RegisteredNetwork_CompletionResultPointer
---@param resultsCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_DequeueSend(socket, results, resultsCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
---@param dstAddress : CS.Baselib_NetworkAddressPointer
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_GetNetworkAddress(socket, dstAddress, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_RegisteredNetwork_Socket_UDP
function CS.Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP_Close(socket)
end

---@param family : CS.Unity.Baselib.LowLevel.Baselib_NetworkAddress_Family
---@param protocol : CS.Unity.Baselib.LowLevel.Baselib_Socket_Protocol
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Create(family, protocol, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param address : CS.Baselib_NetworkAddressPointer
---@param addressReuse : CS.Unity.Baselib.LowLevel.Baselib_NetworkAddress_AddressReuse
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Bind(socket, address, addressReuse, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param address : CS.Baselib_NetworkAddressPointer
---@param addressReuse : CS.Unity.Baselib.LowLevel.Baselib_NetworkAddress_AddressReuse
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_TCP_Connect(socket, address, addressReuse, errorState)
end

---@param sockets : CS.Baselib_Socket_PollFdPointer
---@param socketsCount : CS.System.UInt32
---@param timeoutInMilliseconds : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Poll(sockets, socketsCount, timeoutInMilliseconds, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param address : CS.Baselib_NetworkAddressPointer
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_GetAddress(socket, address, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param errorState : CS.Baselib_ErrorStatePointer
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_TCP_Listen(socket, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_TCP_Accept(socket, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param messages : CS.Baselib_Socket_MessagePointer
---@param messagesCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_UDP_Send(socket, messages, messagesCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param data : CS.System.IntPtr
---@param dataLen : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_TCP_Send(socket, data, dataLen, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param messages : CS.Baselib_Socket_MessagePointer
---@param messagesCount : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_UDP_Recv(socket, messages, messagesCount, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
---@param data : CS.System.IntPtr
---@param dataLen : CS.System.UInt32
---@param errorState : CS.Baselib_ErrorStatePointer
---@return CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_TCP_Recv(socket, data, dataLen, errorState)
end

---@param socket : CS.Unity.Baselib.LowLevel.Baselib_Socket_Handle
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Socket_Close(socket)
end

function CS.Unity.Baselib.LowLevel.Binding.Baselib_Thread_YieldExecution()
end

---@return CS.System.IntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Thread_GetCurrentThreadId()
end

---@return CS.System.UIntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_Alloc()
end

---@param handle : CS.System.UIntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_Free(handle)
end

---@param handle : CS.System.UIntPtr
---@param value : CS.System.UIntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_Set(handle, value)
end

---@param handle : CS.System.UIntPtr
---@return CS.System.UIntPtr
function CS.Unity.Baselib.LowLevel.Binding.Baselib_TLS_Get(handle)
end

---@return CS.Unity.Baselib.LowLevel.Baselib_Timer_TickToNanosecondConversionRatio
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_GetTicksToNanosecondsConversionRatio()
end

---@return CS.System.UInt64
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_GetHighPrecisionTimerTicks()
end

---@param timeInMilliseconds : CS.System.UInt32
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_WaitForAtLeast(timeInMilliseconds)
end

---@return CS.System.Double
function CS.Unity.Baselib.LowLevel.Binding.Baselib_Timer_GetTimeSinceStartupInSeconds()
end