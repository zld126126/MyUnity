---@class CS.UnityEngine.CustomRenderTexture : CS.UnityEngine.RenderTexture
CS.UnityEngine.CustomRenderTexture = {}

---@property readwrite CS.UnityEngine.CustomRenderTexture.material : CS.UnityEngine.Material
CS.UnityEngine.CustomRenderTexture.material = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.initializationMaterial : CS.UnityEngine.Material
CS.UnityEngine.CustomRenderTexture.initializationMaterial = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.initializationTexture : CS.UnityEngine.Texture
CS.UnityEngine.CustomRenderTexture.initializationTexture = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.initializationSource : CS.UnityEngine.CustomRenderTextureInitializationSource
CS.UnityEngine.CustomRenderTexture.initializationSource = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.initializationColor : CS.UnityEngine.Color
CS.UnityEngine.CustomRenderTexture.initializationColor = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.updateMode : CS.UnityEngine.CustomRenderTextureUpdateMode
CS.UnityEngine.CustomRenderTexture.updateMode = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.initializationMode : CS.UnityEngine.CustomRenderTextureUpdateMode
CS.UnityEngine.CustomRenderTexture.initializationMode = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.updateZoneSpace : CS.UnityEngine.CustomRenderTextureUpdateZoneSpace
CS.UnityEngine.CustomRenderTexture.updateZoneSpace = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.shaderPass : CS.System.Int32
CS.UnityEngine.CustomRenderTexture.shaderPass = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.cubemapFaceMask : CS.System.UInt32
CS.UnityEngine.CustomRenderTexture.cubemapFaceMask = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.doubleBuffered : CS.System.Boolean
CS.UnityEngine.CustomRenderTexture.doubleBuffered = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.wrapUpdateZones : CS.System.Boolean
CS.UnityEngine.CustomRenderTexture.wrapUpdateZones = nil

---@property readwrite CS.UnityEngine.CustomRenderTexture.updatePeriod : CS.System.Single
CS.UnityEngine.CustomRenderTexture.updatePeriod = nil

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@param readWrite : CS.UnityEngine.RenderTextureReadWrite
---@return CS.UnityEngine.CustomRenderTexture
function CS.UnityEngine.CustomRenderTexture(width, height, format, readWrite)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.RenderTextureFormat
---@return CS.UnityEngine.CustomRenderTexture
function CS.UnityEngine.CustomRenderTexture(width, height, format)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@return CS.UnityEngine.CustomRenderTexture
function CS.UnityEngine.CustomRenderTexture(width, height)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param defaultFormat : CS.UnityEngine.Experimental.Rendering.DefaultFormat
---@return CS.UnityEngine.CustomRenderTexture
function CS.UnityEngine.CustomRenderTexture(width, height, defaultFormat)
end

---@param width : CS.System.Int32
---@param height : CS.System.Int32
---@param format : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
---@return CS.UnityEngine.CustomRenderTexture
function CS.UnityEngine.CustomRenderTexture(width, height, format)
end

---@param count : CS.System.Int32
function CS.UnityEngine.CustomRenderTexture:Update(count)
end

function CS.UnityEngine.CustomRenderTexture:Update()
end

function CS.UnityEngine.CustomRenderTexture:Initialize()
end

function CS.UnityEngine.CustomRenderTexture:ClearUpdateZones()
end

---@param updateZones : CS.System.Collections.Generic.List
function CS.UnityEngine.CustomRenderTexture:GetUpdateZones(updateZones)
end

---@return CS.UnityEngine.RenderTexture
function CS.UnityEngine.CustomRenderTexture:GetDoubleBufferRenderTexture()
end

function CS.UnityEngine.CustomRenderTexture:EnsureDoubleBufferConsistency()
end

---@param updateZones : CS.UnityEngine.CustomRenderTextureUpdateZone[]
function CS.UnityEngine.CustomRenderTexture:SetUpdateZones(updateZones)
end