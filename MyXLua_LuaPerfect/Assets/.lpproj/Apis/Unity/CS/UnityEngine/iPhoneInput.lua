---@class CS.UnityEngine.iPhoneInput : CS.System.Object
CS.UnityEngine.iPhoneInput = {}

---@property readonly CS.UnityEngine.iPhoneInput.orientation : CS.UnityEngine.iPhoneOrientation
CS.UnityEngine.iPhoneInput.orientation = nil

---@property readonly CS.UnityEngine.iPhoneInput.accelerationEvents : CS.UnityEngine.iPhoneAccelerationEvent[]
CS.UnityEngine.iPhoneInput.accelerationEvents = nil

---@property readonly CS.UnityEngine.iPhoneInput.touches : CS.UnityEngine.iPhoneTouch[]
CS.UnityEngine.iPhoneInput.touches = nil

---@property readonly CS.UnityEngine.iPhoneInput.touchCount : CS.System.Int32
CS.UnityEngine.iPhoneInput.touchCount = nil

---@property readwrite CS.UnityEngine.iPhoneInput.multiTouchEnabled : CS.System.Boolean
CS.UnityEngine.iPhoneInput.multiTouchEnabled = nil

---@property readonly CS.UnityEngine.iPhoneInput.accelerationEventCount : CS.System.Int32
CS.UnityEngine.iPhoneInput.accelerationEventCount = nil

---@property readonly CS.UnityEngine.iPhoneInput.acceleration : CS.UnityEngine.Vector3
CS.UnityEngine.iPhoneInput.acceleration = nil

---@return CS.UnityEngine.iPhoneInput
function CS.UnityEngine.iPhoneInput()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.iPhoneTouch
function CS.UnityEngine.iPhoneInput.GetTouch(index)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.iPhoneAccelerationEvent
function CS.UnityEngine.iPhoneInput.GetAccelerationEvent(index)
end