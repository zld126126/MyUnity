---@class CS.UnityEngine.Mobile : CS.System.Object
CS.UnityEngine.Mobile = {}

---@property readonly CS.UnityEngine.Mobile.muteState : CS.System.Boolean
CS.UnityEngine.Mobile.muteState = nil

---@property readwrite CS.UnityEngine.Mobile.stopAudioOutputOnMute : CS.System.Boolean
CS.UnityEngine.Mobile.stopAudioOutputOnMute = nil

---@property readonly CS.UnityEngine.Mobile.audioOutputStarted : CS.System.Boolean
CS.UnityEngine.Mobile.audioOutputStarted = nil

---@param value : CS.System.Action
function CS.UnityEngine.Mobile.add_OnMuteStateChanged(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.Mobile.remove_OnMuteStateChanged(value)
end

function CS.UnityEngine.Mobile.StartAudioOutput()
end

function CS.UnityEngine.Mobile.StopAudioOutput()
end