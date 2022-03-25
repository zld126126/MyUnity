---@class CS.UnityEngine.iPhoneSettings : CS.System.Object
CS.UnityEngine.iPhoneSettings = {}

---@property readonly CS.UnityEngine.iPhoneSettings.screenOrientation : CS.UnityEngine.iPhoneScreenOrientation
CS.UnityEngine.iPhoneSettings.screenOrientation = nil

---@property readonly CS.UnityEngine.iPhoneSettings.uniqueIdentifier : CS.System.String
CS.UnityEngine.iPhoneSettings.uniqueIdentifier = nil

---@property readonly CS.UnityEngine.iPhoneSettings.name : CS.System.String
CS.UnityEngine.iPhoneSettings.name = nil

---@property readonly CS.UnityEngine.iPhoneSettings.model : CS.System.String
CS.UnityEngine.iPhoneSettings.model = nil

---@property readonly CS.UnityEngine.iPhoneSettings.systemName : CS.System.String
CS.UnityEngine.iPhoneSettings.systemName = nil

---@property readonly CS.UnityEngine.iPhoneSettings.internetReachability : CS.UnityEngine.iPhoneNetworkReachability
CS.UnityEngine.iPhoneSettings.internetReachability = nil

---@property readonly CS.UnityEngine.iPhoneSettings.systemVersion : CS.System.String
CS.UnityEngine.iPhoneSettings.systemVersion = nil

---@property readonly CS.UnityEngine.iPhoneSettings.generation : CS.UnityEngine.iPhoneGeneration
CS.UnityEngine.iPhoneSettings.generation = nil

---@property readonly CS.UnityEngine.iPhoneSettings.verticalOrientation : CS.System.Boolean
CS.UnityEngine.iPhoneSettings.verticalOrientation = nil

---@property readonly CS.UnityEngine.iPhoneSettings.screenCanDarken : CS.System.Boolean
CS.UnityEngine.iPhoneSettings.screenCanDarken = nil

---@property readonly CS.UnityEngine.iPhoneSettings.locationServiceEnabledByUser : CS.System.Boolean
CS.UnityEngine.iPhoneSettings.locationServiceEnabledByUser = nil

---@return CS.UnityEngine.iPhoneSettings
function CS.UnityEngine.iPhoneSettings()
end

---@param desiredAccuracyInMeters : CS.System.Single
---@param updateDistanceInMeters : CS.System.Single
function CS.UnityEngine.iPhoneSettings.StartLocationServiceUpdates(desiredAccuracyInMeters, updateDistanceInMeters)
end

---@param desiredAccuracyInMeters : CS.System.Single
function CS.UnityEngine.iPhoneSettings.StartLocationServiceUpdates(desiredAccuracyInMeters)
end

function CS.UnityEngine.iPhoneSettings.StartLocationServiceUpdates()
end

function CS.UnityEngine.iPhoneSettings.StopLocationServiceUpdates()
end