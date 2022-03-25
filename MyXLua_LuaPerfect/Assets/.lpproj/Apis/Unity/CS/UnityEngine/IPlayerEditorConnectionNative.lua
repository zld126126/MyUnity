---@class CS.UnityEngine.IPlayerEditorConnectionNative
CS.UnityEngine.IPlayerEditorConnectionNative = {}

function CS.UnityEngine.IPlayerEditorConnectionNative:Initialize()
end

function CS.UnityEngine.IPlayerEditorConnectionNative:DisconnectAll()
end

---@param messageId : CS.System.Guid
---@param data : CS.System.Byte[]
---@param playerId : CS.System.Int32
function CS.UnityEngine.IPlayerEditorConnectionNative:SendMessage(messageId, data, playerId)
end

---@param messageId : CS.System.Guid
---@param data : CS.System.Byte[]
---@param playerId : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.IPlayerEditorConnectionNative:TrySendMessage(messageId, data, playerId)
end

function CS.UnityEngine.IPlayerEditorConnectionNative:Poll()
end

---@param messageId : CS.System.Guid
function CS.UnityEngine.IPlayerEditorConnectionNative:RegisterInternal(messageId)
end

---@param messageId : CS.System.Guid
function CS.UnityEngine.IPlayerEditorConnectionNative:UnregisterInternal(messageId)
end

---@return CS.System.Boolean
function CS.UnityEngine.IPlayerEditorConnectionNative:IsConnected()
end