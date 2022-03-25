---@class CS.UnityEngine.Serialization.UnitySurrogateSelector : CS.System.Object
CS.UnityEngine.Serialization.UnitySurrogateSelector = {}

---@return CS.UnityEngine.Serialization.UnitySurrogateSelector
function CS.UnityEngine.Serialization.UnitySurrogateSelector()
end

---@param type : CS.System.Type
---@param context : CS.System.Runtime.Serialization.StreamingContext
---@param selector : CS.System.Runtime.Serialization.ISurrogateSelector
---@return CS.System.Runtime.Serialization.ISerializationSurrogate
function CS.UnityEngine.Serialization.UnitySurrogateSelector:GetSurrogate(type, context, selector)
end

---@param selector : CS.System.Runtime.Serialization.ISurrogateSelector
function CS.UnityEngine.Serialization.UnitySurrogateSelector:ChainSelector(selector)
end

---@return CS.System.Runtime.Serialization.ISurrogateSelector
function CS.UnityEngine.Serialization.UnitySurrogateSelector:GetNextSelector()
end