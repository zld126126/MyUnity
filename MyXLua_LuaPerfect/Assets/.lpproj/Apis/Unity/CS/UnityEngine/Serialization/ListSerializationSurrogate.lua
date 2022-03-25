---@class CS.UnityEngine.Serialization.ListSerializationSurrogate : CS.System.Object
CS.UnityEngine.Serialization.ListSerializationSurrogate = {}

---@field public CS.UnityEngine.Serialization.ListSerializationSurrogate.Default : CS.System.Runtime.Serialization.ISerializationSurrogate
CS.UnityEngine.Serialization.ListSerializationSurrogate.Default = nil

---@return CS.UnityEngine.Serialization.ListSerializationSurrogate
function CS.UnityEngine.Serialization.ListSerializationSurrogate()
end

---@param obj : CS.System.Object
---@param info : CS.System.Runtime.Serialization.SerializationInfo
---@param context : CS.System.Runtime.Serialization.StreamingContext
function CS.UnityEngine.Serialization.ListSerializationSurrogate:GetObjectData(obj, info, context)
end

---@param obj : CS.System.Object
---@param info : CS.System.Runtime.Serialization.SerializationInfo
---@param context : CS.System.Runtime.Serialization.StreamingContext
---@param selector : CS.System.Runtime.Serialization.ISurrogateSelector
---@return CS.System.Object
function CS.UnityEngine.Serialization.ListSerializationSurrogate:SetObjectData(obj, info, context, selector)
end