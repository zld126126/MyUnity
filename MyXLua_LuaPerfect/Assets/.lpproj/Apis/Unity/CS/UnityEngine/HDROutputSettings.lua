---@class CS.UnityEngine.HDROutputSettings : CS.System.Object
CS.UnityEngine.HDROutputSettings = {}

---@field public CS.UnityEngine.HDROutputSettings.displays : CS.UnityEngine.HDROutputSettings[]
CS.UnityEngine.HDROutputSettings.displays = nil

---@property readonly CS.UnityEngine.HDROutputSettings.main : CS.UnityEngine.HDROutputSettings
CS.UnityEngine.HDROutputSettings.main = nil

---@property readonly CS.UnityEngine.HDROutputSettings.active : CS.System.Boolean
CS.UnityEngine.HDROutputSettings.active = nil

---@property readonly CS.UnityEngine.HDROutputSettings.available : CS.System.Boolean
CS.UnityEngine.HDROutputSettings.available = nil

---@property readwrite CS.UnityEngine.HDROutputSettings.automaticHDRTonemapping : CS.System.Boolean
CS.UnityEngine.HDROutputSettings.automaticHDRTonemapping = nil

---@property readonly CS.UnityEngine.HDROutputSettings.displayColorGamut : CS.UnityEngine.ColorGamut
CS.UnityEngine.HDROutputSettings.displayColorGamut = nil

---@property readonly CS.UnityEngine.HDROutputSettings.format : CS.UnityEngine.RenderTextureFormat
CS.UnityEngine.HDROutputSettings.format = nil

---@property readonly CS.UnityEngine.HDROutputSettings.graphicsFormat : CS.UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.HDROutputSettings.graphicsFormat = nil

---@property readwrite CS.UnityEngine.HDROutputSettings.paperWhiteNits : CS.System.Single
CS.UnityEngine.HDROutputSettings.paperWhiteNits = nil

---@property readonly CS.UnityEngine.HDROutputSettings.maxFullFrameToneMapLuminance : CS.System.Int32
CS.UnityEngine.HDROutputSettings.maxFullFrameToneMapLuminance = nil

---@property readonly CS.UnityEngine.HDROutputSettings.maxToneMapLuminance : CS.System.Int32
CS.UnityEngine.HDROutputSettings.maxToneMapLuminance = nil

---@property readonly CS.UnityEngine.HDROutputSettings.minToneMapLuminance : CS.System.Int32
CS.UnityEngine.HDROutputSettings.minToneMapLuminance = nil

---@property readonly CS.UnityEngine.HDROutputSettings.HDRModeChangeRequested : CS.System.Boolean
CS.UnityEngine.HDROutputSettings.HDRModeChangeRequested = nil

---@param enabled : CS.System.Boolean
function CS.UnityEngine.HDROutputSettings:RequestHDRModeChange(enabled)
end

---@param paperWhite : CS.System.Single
function CS.UnityEngine.HDROutputSettings.SetPaperWhiteInNits(paperWhite)
end