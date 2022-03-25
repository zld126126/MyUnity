---@class CS.UnityEngine.Networking.PlayerConnection.PlayerConnection : CS.UnityEngine.ScriptableObject
CS.UnityEngine.Networking.PlayerConnection.PlayerConnection = {}

---@property readonly CS.UnityEngine.Networking.PlayerConnection.PlayerConnection.instance : CS.UnityEngine.Networking.PlayerConnection.PlayerConnection
CS.UnityEngine.Networking.PlayerConnection.PlayerConnection.instance = nil

---@property readonly CS.UnityEngine.Networking.PlayerConnection.PlayerConnection.isConnected : CS.System.Boolean
CS.UnityEngine.Networking.PlayerConnection.PlayerConnection.isConnected = nil

---@return CS.UnityEngine.Networking.PlayerConnection.PlayerConnection
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection()
end

function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:OnEnable()
end

---@param messageId : CS.System.Guid
---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:Register(messageId, callback)
end

---@param messageId : CS.System.Guid
---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:Unregister(messageId, callback)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterConnection(callback)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterDisconnection(callback)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:UnregisterConnection(callback)
end

---@param callback : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:UnregisterDisconnection(callback)
end

---@param messageId : CS.System.Guid
---@param data : CS.System.Byte[]
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:Send(messageId, data)
end

---@param messageId : CS.System.Guid
---@param data : CS.System.Byte[]
---@return CS.System.Boolean
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:TrySend(messageId, data)
end

---@param messageId : CS.System.Guid
---@param timeout : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:BlockUntilRecvMsg(messageId, timeout)
end

function CS.UnityEngine.Networking.PlayerConnection.PlayerConnection:DisconnectAll()
end