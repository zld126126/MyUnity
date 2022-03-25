---@class CS.UnityEngine.AdvertisingIdentifierCallback : CS.System.MulticastDelegate
CS.UnityEngine.AdvertisingIdentifierCallback = {}

---@param object : CS.System.Object
---@param method : CS.System.IntPtr
---@return CS.UnityEngine.AdvertisingIdentifierCallback
function CS.UnityEngine.AdvertisingIdentifierCallback(object, method)
end

---@param advertisingId : CS.System.String
---@param trackingEnabled : CS.System.Boolean
---@param errorMsg : CS.System.String
function CS.UnityEngine.AdvertisingIdentifierCallback:Invoke(advertisingId, trackingEnabled, errorMsg)
end

---@param advertisingId : CS.System.String
---@param trackingEnabled : CS.System.Boolean
---@param errorMsg : CS.System.String
---@param callback : CS.System.AsyncCallback
---@param object : CS.System.Object
---@return CS.System.IAsyncResult
function CS.UnityEngine.AdvertisingIdentifierCallback:BeginInvoke(advertisingId, trackingEnabled, errorMsg, callback, object)
end

---@param result : CS.System.IAsyncResult
function CS.UnityEngine.AdvertisingIdentifierCallback:EndInvoke(result)
end