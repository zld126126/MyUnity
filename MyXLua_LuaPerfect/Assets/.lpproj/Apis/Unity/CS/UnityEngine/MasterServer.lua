---@class CS.UnityEngine.MasterServer : CS.System.Object
CS.UnityEngine.MasterServer = {}

---@property readwrite CS.UnityEngine.MasterServer.ipAddress : CS.System.String
CS.UnityEngine.MasterServer.ipAddress = nil

---@property readwrite CS.UnityEngine.MasterServer.port : CS.System.Int32
CS.UnityEngine.MasterServer.port = nil

---@property readwrite CS.UnityEngine.MasterServer.updateRate : CS.System.Int32
CS.UnityEngine.MasterServer.updateRate = nil

---@property readwrite CS.UnityEngine.MasterServer.dedicatedServer : CS.System.Boolean
CS.UnityEngine.MasterServer.dedicatedServer = nil

---@return CS.UnityEngine.MasterServer
function CS.UnityEngine.MasterServer()
end

---@param gameTypeName : CS.System.String
function CS.UnityEngine.MasterServer.RequestHostList(gameTypeName)
end

---@return CS.UnityEngine.HostData[]
function CS.UnityEngine.MasterServer.PollHostList()
end

---@param gameTypeName : CS.System.String
---@param gameName : CS.System.String
function CS.UnityEngine.MasterServer.RegisterHost(gameTypeName, gameName)
end

---@param gameTypeName : CS.System.String
---@param gameName : CS.System.String
---@param comment : CS.System.String
function CS.UnityEngine.MasterServer.RegisterHost(gameTypeName, gameName, comment)
end

function CS.UnityEngine.MasterServer.UnregisterHost()
end

function CS.UnityEngine.MasterServer.ClearHostList()
end