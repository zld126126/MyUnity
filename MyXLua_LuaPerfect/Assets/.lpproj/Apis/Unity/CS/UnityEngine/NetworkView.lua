---@class CS.UnityEngine.NetworkView : CS.UnityEngine.Behaviour
CS.UnityEngine.NetworkView = {}

---@property readwrite CS.UnityEngine.NetworkView.observed : CS.UnityEngine.Component
CS.UnityEngine.NetworkView.observed = nil

---@property readwrite CS.UnityEngine.NetworkView.stateSynchronization : CS.UnityEngine.NetworkStateSynchronization
CS.UnityEngine.NetworkView.stateSynchronization = nil

---@property readwrite CS.UnityEngine.NetworkView.viewID : CS.UnityEngine.NetworkViewID
CS.UnityEngine.NetworkView.viewID = nil

---@property readwrite CS.UnityEngine.NetworkView.group : CS.System.Int32
CS.UnityEngine.NetworkView.group = nil

---@property readonly CS.UnityEngine.NetworkView.isMine : CS.System.Boolean
CS.UnityEngine.NetworkView.isMine = nil

---@property readonly CS.UnityEngine.NetworkView.owner : CS.UnityEngine.NetworkPlayer
CS.UnityEngine.NetworkView.owner = nil

---@return CS.UnityEngine.NetworkView
function CS.UnityEngine.NetworkView()
end

---@param name : CS.System.String
---@param mode : CS.UnityEngine.RPCMode
---@param args : CS.System.Object[]
function CS.UnityEngine.NetworkView:RPC(name, mode, args)
end

---@param name : CS.System.String
---@param target : CS.UnityEngine.NetworkPlayer
---@param args : CS.System.Object[]
function CS.UnityEngine.NetworkView:RPC(name, target, args)
end