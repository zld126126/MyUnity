---@class CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents : CS.System.Object
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents = {}

---@field public CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.messageTypeSubscribers : CS.System.Collections.Generic.List
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.messageTypeSubscribers = nil

---@field public CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.connectionEvent : CS.UnityEngine.Networking.PlayerConnection.ConnectionChangeEvent
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.connectionEvent = nil

---@field public CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.disconnectionEvent : CS.UnityEngine.Networking.PlayerConnection.ConnectionChangeEvent
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.disconnectionEvent = nil

---@return CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents
function CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents()
end

---@param messageId : CS.System.Guid
---@param data : CS.System.Byte[]
---@param playerId : CS.System.Int32
function CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:InvokeMessageIdSubscribers(messageId, data, playerId)
end

---@param messageId : CS.System.Guid
---@return CS.UnityEngine.Events.UnityEvent
function CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:AddAndCreate(messageId)
end

---@param messageId : CS.System.Guid
---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:UnregisterManagedCallback(messageId, callback)
end