---@class CS.UnityEngine.MovieTexture : CS.UnityEngine.Texture
CS.UnityEngine.MovieTexture = {}

---@property readonly CS.UnityEngine.MovieTexture.audioClip : CS.UnityEngine.AudioClip
CS.UnityEngine.MovieTexture.audioClip = nil

---@property readwrite CS.UnityEngine.MovieTexture.loop : CS.System.Boolean
CS.UnityEngine.MovieTexture.loop = nil

---@property readonly CS.UnityEngine.MovieTexture.isPlaying : CS.System.Boolean
CS.UnityEngine.MovieTexture.isPlaying = nil

---@property readonly CS.UnityEngine.MovieTexture.isReadyToPlay : CS.System.Boolean
CS.UnityEngine.MovieTexture.isReadyToPlay = nil

---@property readonly CS.UnityEngine.MovieTexture.duration : CS.System.Single
CS.UnityEngine.MovieTexture.duration = nil

function CS.UnityEngine.MovieTexture:Play()
end

function CS.UnityEngine.MovieTexture:Stop()
end

function CS.UnityEngine.MovieTexture:Pause()
end