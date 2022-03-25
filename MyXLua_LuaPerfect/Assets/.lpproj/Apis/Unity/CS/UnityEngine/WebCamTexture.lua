---@class CS.UnityEngine.WebCamTexture : CS.UnityEngine.Texture
CS.UnityEngine.WebCamTexture = {}

---@property readonly CS.UnityEngine.WebCamTexture.devices : CS.UnityEngine.WebCamDevice[]
CS.UnityEngine.WebCamTexture.devices = nil

---@property readonly CS.UnityEngine.WebCamTexture.isPlaying : CS.System.Boolean
CS.UnityEngine.WebCamTexture.isPlaying = nil

---@property readwrite CS.UnityEngine.WebCamTexture.deviceName : CS.System.String
CS.UnityEngine.WebCamTexture.deviceName = nil

---@property readwrite CS.UnityEngine.WebCamTexture.requestedFPS : CS.System.Single
CS.UnityEngine.WebCamTexture.requestedFPS = nil

---@property readwrite CS.UnityEngine.WebCamTexture.requestedWidth : CS.System.Int32
CS.UnityEngine.WebCamTexture.requestedWidth = nil

---@property readwrite CS.UnityEngine.WebCamTexture.requestedHeight : CS.System.Int32
CS.UnityEngine.WebCamTexture.requestedHeight = nil

---@property readonly CS.UnityEngine.WebCamTexture.videoRotationAngle : CS.System.Int32
CS.UnityEngine.WebCamTexture.videoRotationAngle = nil

---@property readonly CS.UnityEngine.WebCamTexture.videoVerticallyMirrored : CS.System.Boolean
CS.UnityEngine.WebCamTexture.videoVerticallyMirrored = nil

---@property readonly CS.UnityEngine.WebCamTexture.didUpdateThisFrame : CS.System.Boolean
CS.UnityEngine.WebCamTexture.didUpdateThisFrame = nil

---@property readwrite CS.UnityEngine.WebCamTexture.autoFocusPoint : CS.System.Nullable
CS.UnityEngine.WebCamTexture.autoFocusPoint = nil

---@property readonly CS.UnityEngine.WebCamTexture.isDepth : CS.System.Boolean
CS.UnityEngine.WebCamTexture.isDepth = nil

---@param deviceName : CS.System.String
---@param requestedWidth : CS.System.Int32
---@param requestedHeight : CS.System.Int32
---@param requestedFPS : CS.System.Int32
---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture(deviceName, requestedWidth, requestedHeight, requestedFPS)
end

---@param deviceName : CS.System.String
---@param requestedWidth : CS.System.Int32
---@param requestedHeight : CS.System.Int32
---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture(deviceName, requestedWidth, requestedHeight)
end

---@param deviceName : CS.System.String
---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture(deviceName)
end

---@param requestedWidth : CS.System.Int32
---@param requestedHeight : CS.System.Int32
---@param requestedFPS : CS.System.Int32
---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture(requestedWidth, requestedHeight, requestedFPS)
end

---@param requestedWidth : CS.System.Int32
---@param requestedHeight : CS.System.Int32
---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture(requestedWidth, requestedHeight)
end

---@return CS.UnityEngine.WebCamTexture
function CS.UnityEngine.WebCamTexture()
end

function CS.UnityEngine.WebCamTexture:Play()
end

function CS.UnityEngine.WebCamTexture:Pause()
end

function CS.UnityEngine.WebCamTexture:Stop()
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@return CS.UnityEngine.Color
function CS.UnityEngine.WebCamTexture:GetPixel(x, y)
end

---@return CS.UnityEngine.Color[]
function CS.UnityEngine.WebCamTexture:GetPixels()
end

---@param x : CS.System.Int32
---@param y : CS.System.Int32
---@param blockWidth : CS.System.Int32
---@param blockHeight : CS.System.Int32
---@return CS.UnityEngine.Color[]
function CS.UnityEngine.WebCamTexture:GetPixels(x, y, blockWidth, blockHeight)
end

---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.WebCamTexture:GetPixels32()
end

---@param colors : CS.UnityEngine.Color32[]
---@return CS.UnityEngine.Color32[]
function CS.UnityEngine.WebCamTexture:GetPixels32(colors)
end