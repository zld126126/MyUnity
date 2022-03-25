---@class CS.UnityEngine.iOS.Device : CS.System.Object
CS.UnityEngine.iOS.Device = {}

---@property readonly CS.UnityEngine.iOS.Device.systemVersion : CS.System.String
CS.UnityEngine.iOS.Device.systemVersion = nil

---@property readonly CS.UnityEngine.iOS.Device.generation : CS.UnityEngine.iOS.DeviceGeneration
CS.UnityEngine.iOS.Device.generation = nil

---@property readonly CS.UnityEngine.iOS.Device.vendorIdentifier : CS.System.String
CS.UnityEngine.iOS.Device.vendorIdentifier = nil

---@property readonly CS.UnityEngine.iOS.Device.advertisingIdentifier : CS.System.String
CS.UnityEngine.iOS.Device.advertisingIdentifier = nil

---@property readonly CS.UnityEngine.iOS.Device.advertisingTrackingEnabled : CS.System.Boolean
CS.UnityEngine.iOS.Device.advertisingTrackingEnabled = nil

---@property readwrite CS.UnityEngine.iOS.Device.hideHomeButton : CS.System.Boolean
CS.UnityEngine.iOS.Device.hideHomeButton = nil

---@property readonly CS.UnityEngine.iOS.Device.lowPowerModeEnabled : CS.System.Boolean
CS.UnityEngine.iOS.Device.lowPowerModeEnabled = nil

---@property readwrite CS.UnityEngine.iOS.Device.wantsSoftwareDimming : CS.System.Boolean
CS.UnityEngine.iOS.Device.wantsSoftwareDimming = nil

---@property readonly CS.UnityEngine.iOS.Device.iosAppOnMac : CS.System.Boolean
CS.UnityEngine.iOS.Device.iosAppOnMac = nil

---@property readwrite CS.UnityEngine.iOS.Device.deferSystemGesturesMode : CS.UnityEngine.iOS.SystemGestureDeferMode
CS.UnityEngine.iOS.Device.deferSystemGesturesMode = nil

---@return CS.UnityEngine.iOS.Device
function CS.UnityEngine.iOS.Device()
end

---@param path : CS.System.String
function CS.UnityEngine.iOS.Device.SetNoBackupFlag(path)
end

---@param path : CS.System.String
function CS.UnityEngine.iOS.Device.ResetNoBackupFlag(path)
end

---@return CS.System.Boolean
function CS.UnityEngine.iOS.Device.RequestStoreReview()
end