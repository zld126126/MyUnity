---@class CS.Unity.IO.LowLevel.Unsafe.AsyncReadManager : CS.System.Object
CS.Unity.IO.LowLevel.Unsafe.AsyncReadManager = {}

---@param filename : CS.System.String
---@param readCmds : CS.Unity.IO.LowLevel.Unsafe.ReadCommandPointer
---@param readCmdCount : CS.System.UInt32
---@param assetName : CS.System.String
---@param typeID : CS.System.UInt64
---@param subsystem : CS.Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@return CS.Unity.IO.LowLevel.Unsafe.ReadHandle
function CS.Unity.IO.LowLevel.Unsafe.AsyncReadManager.Read(filename, readCmds, readCmdCount, assetName, typeID, subsystem)
end