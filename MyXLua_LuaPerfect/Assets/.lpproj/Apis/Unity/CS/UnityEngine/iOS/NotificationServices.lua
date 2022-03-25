---@class CS.UnityEngine.iOS.NotificationServices : CS.System.Object
CS.UnityEngine.iOS.NotificationServices = {}

---@property readonly CS.UnityEngine.iOS.NotificationServices.localNotificationCount : CS.System.Int32
CS.UnityEngine.iOS.NotificationServices.localNotificationCount = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.remoteNotificationCount : CS.System.Int32
CS.UnityEngine.iOS.NotificationServices.remoteNotificationCount = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.enabledNotificationTypes : CS.UnityEngine.iOS.NotificationType
CS.UnityEngine.iOS.NotificationServices.enabledNotificationTypes = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.registrationError : CS.System.String
CS.UnityEngine.iOS.NotificationServices.registrationError = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.deviceToken : CS.System.Byte[]
CS.UnityEngine.iOS.NotificationServices.deviceToken = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.localNotifications : CS.UnityEngine.iOS.LocalNotification[]
CS.UnityEngine.iOS.NotificationServices.localNotifications = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.remoteNotifications : CS.UnityEngine.iOS.RemoteNotification[]
CS.UnityEngine.iOS.NotificationServices.remoteNotifications = nil

---@property readonly CS.UnityEngine.iOS.NotificationServices.scheduledLocalNotifications : CS.UnityEngine.iOS.LocalNotification[]
CS.UnityEngine.iOS.NotificationServices.scheduledLocalNotifications = nil

---@return CS.UnityEngine.iOS.NotificationServices
function CS.UnityEngine.iOS.NotificationServices()
end

function CS.UnityEngine.iOS.NotificationServices.ClearLocalNotifications()
end

function CS.UnityEngine.iOS.NotificationServices.ClearRemoteNotifications()
end

---@param notificationTypes : CS.UnityEngine.iOS.NotificationType
function CS.UnityEngine.iOS.NotificationServices.RegisterForNotifications(notificationTypes)
end

---@param notificationTypes : CS.UnityEngine.iOS.NotificationType
---@param registerForRemote : CS.System.Boolean
function CS.UnityEngine.iOS.NotificationServices.RegisterForNotifications(notificationTypes, registerForRemote)
end

---@param notification : CS.UnityEngine.iOS.LocalNotification
function CS.UnityEngine.iOS.NotificationServices.ScheduleLocalNotification(notification)
end

---@param notification : CS.UnityEngine.iOS.LocalNotification
function CS.UnityEngine.iOS.NotificationServices.PresentLocalNotificationNow(notification)
end

---@param notification : CS.UnityEngine.iOS.LocalNotification
function CS.UnityEngine.iOS.NotificationServices.CancelLocalNotification(notification)
end

function CS.UnityEngine.iOS.NotificationServices.CancelAllLocalNotifications()
end

function CS.UnityEngine.iOS.NotificationServices.UnregisterForRemoteNotifications()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.iOS.LocalNotification
function CS.UnityEngine.iOS.NotificationServices.GetLocalNotification(index)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.iOS.RemoteNotification
function CS.UnityEngine.iOS.NotificationServices.GetRemoteNotification(index)
end