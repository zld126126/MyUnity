---@class CS.UnityEngine.Component : CS.UnityEngine.Object
CS.UnityEngine.Component = {}

---@property readonly CS.UnityEngine.Component.transform : CS.UnityEngine.Transform
CS.UnityEngine.Component.transform = nil

---@property readonly CS.UnityEngine.Component.gameObject : CS.UnityEngine.GameObject
CS.UnityEngine.Component.gameObject = nil

---@property readwrite CS.UnityEngine.Component.tag : CS.System.String
CS.UnityEngine.Component.tag = nil

---@property readonly CS.UnityEngine.Component.rigidbody : CS.UnityEngine.Component
CS.UnityEngine.Component.rigidbody = nil

---@property readonly CS.UnityEngine.Component.rigidbody2D : CS.UnityEngine.Component
CS.UnityEngine.Component.rigidbody2D = nil

---@property readonly CS.UnityEngine.Component.camera : CS.UnityEngine.Component
CS.UnityEngine.Component.camera = nil

---@property readonly CS.UnityEngine.Component.light : CS.UnityEngine.Component
CS.UnityEngine.Component.light = nil

---@property readonly CS.UnityEngine.Component.animation : CS.UnityEngine.Component
CS.UnityEngine.Component.animation = nil

---@property readonly CS.UnityEngine.Component.constantForce : CS.UnityEngine.Component
CS.UnityEngine.Component.constantForce = nil

---@property readonly CS.UnityEngine.Component.renderer : CS.UnityEngine.Component
CS.UnityEngine.Component.renderer = nil

---@property readonly CS.UnityEngine.Component.audio : CS.UnityEngine.Component
CS.UnityEngine.Component.audio = nil

---@property readonly CS.UnityEngine.Component.networkView : CS.UnityEngine.Component
CS.UnityEngine.Component.networkView = nil

---@property readonly CS.UnityEngine.Component.collider : CS.UnityEngine.Component
CS.UnityEngine.Component.collider = nil

---@property readonly CS.UnityEngine.Component.collider2D : CS.UnityEngine.Component
CS.UnityEngine.Component.collider2D = nil

---@property readonly CS.UnityEngine.Component.hingeJoint : CS.UnityEngine.Component
CS.UnityEngine.Component.hingeJoint = nil

---@property readonly CS.UnityEngine.Component.particleSystem : CS.UnityEngine.Component
CS.UnityEngine.Component.particleSystem = nil

---@return CS.UnityEngine.Component
function CS.UnityEngine.Component()
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.Component:GetComponent(type)
end

---@param type : CS.System.Type
---@param component : CS.UnityEngine.Component
---@return CS.System.Boolean
function CS.UnityEngine.Component:TryGetComponent(type, component)
end

---@param type : CS.System.String
---@return CS.UnityEngine.Component
function CS.UnityEngine.Component:GetComponent(type)
end

---@param t : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component
function CS.UnityEngine.Component:GetComponentInChildren(t, includeInactive)
end

---@param t : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.Component:GetComponentInChildren(t)
end

---@param t : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.Component:GetComponentsInChildren(t, includeInactive)
end

---@param t : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.Component:GetComponentsInChildren(t)
end

---@param t : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.Component:GetComponentInParent(t)
end

---@param t : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.Component:GetComponentsInParent(t, includeInactive)
end

---@param t : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.Component:GetComponentsInParent(t)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.Component:GetComponents(type)
end

---@param type : CS.System.Type
---@param results : CS.System.Collections.Generic.List
function CS.UnityEngine.Component:GetComponents(type, results)
end

---@param tag : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Component:CompareTag(tag)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:SendMessageUpwards(methodName, value, options)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
function CS.UnityEngine.Component:SendMessageUpwards(methodName, value)
end

---@param methodName : CS.System.String
function CS.UnityEngine.Component:SendMessageUpwards(methodName)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:SendMessageUpwards(methodName, options)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
function CS.UnityEngine.Component:SendMessage(methodName, value)
end

---@param methodName : CS.System.String
function CS.UnityEngine.Component:SendMessage(methodName)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:SendMessage(methodName, value, options)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:SendMessage(methodName, options)
end

---@param methodName : CS.System.String
---@param parameter : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:BroadcastMessage(methodName, parameter, options)
end

---@param methodName : CS.System.String
---@param parameter : CS.System.Object
function CS.UnityEngine.Component:BroadcastMessage(methodName, parameter)
end

---@param methodName : CS.System.String
function CS.UnityEngine.Component:BroadcastMessage(methodName)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.Component:BroadcastMessage(methodName, options)
end