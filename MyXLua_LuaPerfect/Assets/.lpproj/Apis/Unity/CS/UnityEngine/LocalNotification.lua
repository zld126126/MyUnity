---@class CS.UnityEngine.LocalNotification : CS.System.Object
CS.UnityEngine.LocalNotification = {}

---@property readwrite CS.UnityEngine.LocalNotification.fireDate : CS.System.DateTime
CS.UnityEngine.LocalNotification.fireDate = nil

---@property readwrite CS.UnityEngine.LocalNotification.timeZone : CS.System.String
CS.UnityEngine.LocalNotification.timeZone = nil

---@property readwrite CS.UnityEngine.LocalNotification.repeatInterval : CS.UnityEngine.CalendarUnit
CS.UnityEngine.LocalNotification.repeatInterval = nil

---@property readwrite CS.UnityEngine.LocalNotification.repeatCalendar : CS.UnityEngine.CalendarIdentifier
CS.UnityEngine.LocalNotification.repeatCalendar = nil

---@property readwrite CS.UnityEngine.LocalNotification.alertBody : CS.System.String
CS.UnityEngine.LocalNotification.alertBody = nil

---@property readwrite CS.UnityEngine.LocalNotification.alertAction : CS.System.String
CS.UnityEngine.LocalNotification.alertAction = nil

---@property readwrite CS.UnityEngine.LocalNotification.hasAction : CS.System.Boolean
CS.UnityEngine.LocalNotification.hasAction = nil

---@property readwrite CS.UnityEngine.LocalNotification.alertLaunchImage : CS.System.String
CS.UnityEngine.LocalNotification.alertLaunchImage = nil

---@property readwrite CS.UnityEngine.LocalNotification.applicationIconBadgeNumber : CS.System.Int32
CS.UnityEngine.LocalNotification.applicationIconBadgeNumber = nil

---@property readwrite CS.UnityEngine.LocalNotification.soundName : CS.System.String
CS.UnityEngine.LocalNotification.soundName = nil

---@property readonly CS.UnityEngine.LocalNotification.defaultSoundName : CS.System.String
CS.UnityEngine.LocalNotification.defaultSoundName = nil

---@property readwrite CS.UnityEngine.LocalNotification.userInfo : CS.System.Collections.IDictionary
CS.UnityEngine.LocalNotification.userInfo = nil

---@return CS.UnityEngine.LocalNotification
function CS.UnityEngine.LocalNotification()
end