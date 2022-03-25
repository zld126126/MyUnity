---@class CS.UnityEngine.Network : CS.System.Object
CS.UnityEngine.Network = {}

---@property readwrite CS.UnityEngine.Network.incomingPassword : CS.System.String
CS.UnityEngine.Network.incomingPassword = nil

---@property readwrite CS.UnityEngine.Network.logLevel : CS.UnityEngine.NetworkLogLevel
CS.UnityEngine.Network.logLevel = nil

---@property readonly CS.UnityEngine.Network.connections : CS.UnityEngine.NetworkPlayer[]
CS.UnityEngine.Network.connections = nil

---@property readonly CS.UnityEngine.Network.player : CS.UnityEngine.NetworkPlayer
CS.UnityEngine.Network.player = nil

---@property readonly CS.UnityEngine.Network.isClient : CS.System.Boolean
CS.UnityEngine.Network.isClient = nil

---@property readonly CS.UnityEngine.Network.isServer : CS.System.Boolean
CS.UnityEngine.Network.isServer = nil

---@property readonly CS.UnityEngine.Network.peerType : CS.UnityEngine.NetworkPeerType
CS.UnityEngine.Network.peerType = nil

---@property readwrite CS.UnityEngine.Network.sendRate : CS.System.Single
CS.UnityEngine.Network.sendRate = nil

---@property readwrite CS.UnityEngine.Network.isMessageQueueRunning : CS.System.Boolean
CS.UnityEngine.Network.isMessageQueueRunning = nil

---@property readonly CS.UnityEngine.Network.time : CS.System.Double
CS.UnityEngine.Network.time = nil

---@property readwrite CS.UnityEngine.Network.minimumAllocatableViewIDs : CS.System.Int32
CS.UnityEngine.Network.minimumAllocatableViewIDs = nil

---@property readwrite CS.UnityEngine.Network.useNat : CS.System.Boolean
CS.UnityEngine.Network.useNat = nil

---@property readwrite CS.UnityEngine.Network.natFacilitatorIP : CS.System.String
CS.UnityEngine.Network.natFacilitatorIP = nil

---@property readwrite CS.UnityEngine.Network.natFacilitatorPort : CS.System.Int32
CS.UnityEngine.Network.natFacilitatorPort = nil

---@property readwrite CS.UnityEngine.Network.connectionTesterIP : CS.System.String
CS.UnityEngine.Network.connectionTesterIP = nil

---@property readwrite CS.UnityEngine.Network.connectionTesterPort : CS.System.Int32
CS.UnityEngine.Network.connectionTesterPort = nil

---@property readwrite CS.UnityEngine.Network.maxConnections : CS.System.Int32
CS.UnityEngine.Network.maxConnections = nil

---@property readwrite CS.UnityEngine.Network.proxyIP : CS.System.String
CS.UnityEngine.Network.proxyIP = nil

---@property readwrite CS.UnityEngine.Network.proxyPort : CS.System.Int32
CS.UnityEngine.Network.proxyPort = nil

---@property readwrite CS.UnityEngine.Network.useProxy : CS.System.Boolean
CS.UnityEngine.Network.useProxy = nil

---@property readwrite CS.UnityEngine.Network.proxyPassword : CS.System.String
CS.UnityEngine.Network.proxyPassword = nil

---@return CS.UnityEngine.Network
function CS.UnityEngine.Network()
end

---@param connections : CS.System.Int32
---@param listenPort : CS.System.Int32
---@param useNat : CS.System.Boolean
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.InitializeServer(connections, listenPort, useNat)
end

---@param connections : CS.System.Int32
---@param listenPort : CS.System.Int32
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.InitializeServer(connections, listenPort)
end

function CS.UnityEngine.Network.InitializeSecurity()
end

---@param IP : CS.System.String
---@param remotePort : CS.System.Int32
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(IP, remotePort)
end

---@param IP : CS.System.String
---@param remotePort : CS.System.Int32
---@param password : CS.System.String
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(IP, remotePort, password)
end

---@param IPs : CS.System.String[]
---@param remotePort : CS.System.Int32
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(IPs, remotePort)
end

---@param IPs : CS.System.String[]
---@param remotePort : CS.System.Int32
---@param password : CS.System.String
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(IPs, remotePort, password)
end

---@param GUID : CS.System.String
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(GUID)
end

---@param GUID : CS.System.String
---@param password : CS.System.String
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(GUID, password)
end

---@param hostData : CS.UnityEngine.HostData
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(hostData)
end

---@param hostData : CS.UnityEngine.HostData
---@param password : CS.System.String
---@return CS.UnityEngine.NetworkConnectionError
function CS.UnityEngine.Network.Connect(hostData, password)
end

function CS.UnityEngine.Network.Disconnect()
end

---@param timeout : CS.System.Int32
function CS.UnityEngine.Network.Disconnect(timeout)
end

---@param target : CS.UnityEngine.NetworkPlayer
---@param sendDisconnectionNotification : CS.System.Boolean
function CS.UnityEngine.Network.CloseConnection(target, sendDisconnectionNotification)
end

---@return CS.UnityEngine.NetworkViewID
function CS.UnityEngine.Network.AllocateViewID()
end

---@param prefab : CS.UnityEngine.Object
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param group : CS.System.Int32
---@return CS.UnityEngine.Object
function CS.UnityEngine.Network.Instantiate(prefab, position, rotation, group)
end

---@param viewID : CS.UnityEngine.NetworkViewID
function CS.UnityEngine.Network.Destroy(viewID)
end

---@param gameObject : CS.UnityEngine.GameObject
function CS.UnityEngine.Network.Destroy(gameObject)
end

---@param playerID : CS.UnityEngine.NetworkPlayer
function CS.UnityEngine.Network.DestroyPlayerObjects(playerID)
end

---@param playerID : CS.UnityEngine.NetworkPlayer
function CS.UnityEngine.Network.RemoveRPCs(playerID)
end

---@param playerID : CS.UnityEngine.NetworkPlayer
---@param group : CS.System.Int32
function CS.UnityEngine.Network.RemoveRPCs(playerID, group)
end

---@param viewID : CS.UnityEngine.NetworkViewID
function CS.UnityEngine.Network.RemoveRPCs(viewID)
end

---@param group : CS.System.Int32
function CS.UnityEngine.Network.RemoveRPCsInGroup(group)
end

---@param prefix : CS.System.Int32
function CS.UnityEngine.Network.SetLevelPrefix(prefix)
end

---@param player : CS.UnityEngine.NetworkPlayer
---@return CS.System.Int32
function CS.UnityEngine.Network.GetLastPing(player)
end

---@param player : CS.UnityEngine.NetworkPlayer
---@return CS.System.Int32
function CS.UnityEngine.Network.GetAveragePing(player)
end

---@param player : CS.UnityEngine.NetworkPlayer
---@param group : CS.System.Int32
---@param enabled : CS.System.Boolean
function CS.UnityEngine.Network.SetReceivingEnabled(player, group, enabled)
end

---@param group : CS.System.Int32
---@param enabled : CS.System.Boolean
function CS.UnityEngine.Network.SetSendingEnabled(group, enabled)
end

---@param player : CS.UnityEngine.NetworkPlayer
---@param group : CS.System.Int32
---@param enabled : CS.System.Boolean
function CS.UnityEngine.Network.SetSendingEnabled(player, group, enabled)
end

---@return CS.UnityEngine.ConnectionTesterStatus
function CS.UnityEngine.Network.TestConnection()
end

---@param forceTest : CS.System.Boolean
---@return CS.UnityEngine.ConnectionTesterStatus
function CS.UnityEngine.Network.TestConnection(forceTest)
end

---@return CS.UnityEngine.ConnectionTesterStatus
function CS.UnityEngine.Network.TestConnectionNAT()
end

---@param forceTest : CS.System.Boolean
---@return CS.UnityEngine.ConnectionTesterStatus
function CS.UnityEngine.Network.TestConnectionNAT(forceTest)
end

---@return CS.System.Boolean
function CS.UnityEngine.Network.HavePublicAddress()
end