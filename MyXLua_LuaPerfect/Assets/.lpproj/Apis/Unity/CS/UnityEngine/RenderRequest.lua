---@class CS.UnityEngine.RenderRequest : CS.System.ValueType
CS.UnityEngine.RenderRequest = {}

---@property readonly CS.UnityEngine.RenderRequest.isValid : CS.System.Boolean
CS.UnityEngine.RenderRequest.isValid = nil

---@property readonly CS.UnityEngine.RenderRequest.mode : CS.UnityEngine.RenderRequestMode
CS.UnityEngine.RenderRequest.mode = nil

---@property readonly CS.UnityEngine.RenderRequest.result : CS.UnityEngine.RenderTexture
CS.UnityEngine.RenderRequest.result = nil

---@property readonly CS.UnityEngine.RenderRequest.outputSpace : CS.UnityEngine.RenderRequestOutputSpace
CS.UnityEngine.RenderRequest.outputSpace = nil

---@param mode : CS.UnityEngine.RenderRequestMode
---@param rt : CS.UnityEngine.RenderTexture
---@return CS.UnityEngine.RenderRequest
function CS.UnityEngine.RenderRequest(mode, rt)
end

---@param mode : CS.UnityEngine.RenderRequestMode
---@param space : CS.UnityEngine.RenderRequestOutputSpace
---@param rt : CS.UnityEngine.RenderTexture
---@return CS.UnityEngine.RenderRequest
function CS.UnityEngine.RenderRequest(mode, space, rt)
end