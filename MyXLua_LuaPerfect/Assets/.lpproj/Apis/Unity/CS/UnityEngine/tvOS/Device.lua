---@class CS.UnityEngine.tvOS.Device : CS.System.Object
CS.UnityEngine.tvOS.Device = {}

---@property readonly CS.UnityEngine.tvOS.Device.systemVersion : CS.System.String
CS.UnityEngine.tvOS.Device.systemVersion = nil

---@property readonly CS.UnityEngine.tvOS.Device.generation : CS.UnityEngine.tvOS.DeviceGeneration
CS.UnityEngine.tvOS.Device.generation = nil

---@property readonly CS.UnityEngine.tvOS.Device.vendorIdentifier : CS.System.String
CS.UnityEngine.tvOS.Device.vendorIdentifier = nil

---@property readonly CS.UnityEngine.tvOS.Device.advertisingIdentifier : CS.System.String
CS.UnityEngine.tvOS.Device.advertisingIdentifier = nil

---@property readonly CS.UnityEngine.tvOS.Device.advertisingTrackingEnabled : CS.System.Boolean
CS.UnityEngine.tvOS.Device.advertisingTrackingEnabled = nil

---@return CS.UnityEngine.tvOS.Device
function CS.UnityEngine.tvOS.Device()
end

---@param path : CS.System.String
function CS.UnityEngine.tvOS.Device.SetNoBackupFlag(path)
end

---@param path : CS.System.String
function CS.UnityEngine.tvOS.Device.ResetNoBackupFlag(path)
end