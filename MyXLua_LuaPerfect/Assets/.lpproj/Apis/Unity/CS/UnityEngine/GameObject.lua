---@class CS.UnityEngine.GameObject : CS.UnityEngine.Object
CS.UnityEngine.GameObject = {}

---@property readonly CS.UnityEngine.GameObject.transform : CS.UnityEngine.Transform
CS.UnityEngine.GameObject.transform = nil

---@property readwrite CS.UnityEngine.GameObject.layer : CS.System.Int32
CS.UnityEngine.GameObject.layer = nil

---@property readwrite CS.UnityEngine.GameObject.active : CS.System.Boolean
CS.UnityEngine.GameObject.active = nil

---@property readonly CS.UnityEngine.GameObject.activeSelf : CS.System.Boolean
CS.UnityEngine.GameObject.activeSelf = nil

---@property readonly CS.UnityEngine.GameObject.activeInHierarchy : CS.System.Boolean
CS.UnityEngine.GameObject.activeInHierarchy = nil

---@property readwrite CS.UnityEngine.GameObject.isStatic : CS.System.Boolean
CS.UnityEngine.GameObject.isStatic = nil

---@property readwrite CS.UnityEngine.GameObject.tag : CS.System.String
CS.UnityEngine.GameObject.tag = nil

---@property readonly CS.UnityEngine.GameObject.scene : CS.UnityEngine.SceneManagement.Scene
CS.UnityEngine.GameObject.scene = nil

---@property readonly CS.UnityEngine.GameObject.sceneCullingMask : CS.System.UInt64
CS.UnityEngine.GameObject.sceneCullingMask = nil

---@property readonly CS.UnityEngine.GameObject.gameObject : CS.UnityEngine.GameObject
CS.UnityEngine.GameObject.gameObject = nil

---@property readonly CS.UnityEngine.GameObject.rigidbody : CS.UnityEngine.Component
CS.UnityEngine.GameObject.rigidbody = nil

---@property readonly CS.UnityEngine.GameObject.rigidbody2D : CS.UnityEngine.Component
CS.UnityEngine.GameObject.rigidbody2D = nil

---@property readonly CS.UnityEngine.GameObject.camera : CS.UnityEngine.Component
CS.UnityEngine.GameObject.camera = nil

---@property readonly CS.UnityEngine.GameObject.light : CS.UnityEngine.Component
CS.UnityEngine.GameObject.light = nil

---@property readonly CS.UnityEngine.GameObject.animation : CS.UnityEngine.Component
CS.UnityEngine.GameObject.animation = nil

---@property readonly CS.UnityEngine.GameObject.constantForce : CS.UnityEngine.Component
CS.UnityEngine.GameObject.constantForce = nil

---@property readonly CS.UnityEngine.GameObject.renderer : CS.UnityEngine.Component
CS.UnityEngine.GameObject.renderer = nil

---@property readonly CS.UnityEngine.GameObject.audio : CS.UnityEngine.Component
CS.UnityEngine.GameObject.audio = nil

---@property readonly CS.UnityEngine.GameObject.networkView : CS.UnityEngine.Component
CS.UnityEngine.GameObject.networkView = nil

---@property readonly CS.UnityEngine.GameObject.collider : CS.UnityEngine.Component
CS.UnityEngine.GameObject.collider = nil

---@property readonly CS.UnityEngine.GameObject.collider2D : CS.UnityEngine.Component
CS.UnityEngine.GameObject.collider2D = nil

---@property readonly CS.UnityEngine.GameObject.hingeJoint : CS.UnityEngine.Component
CS.UnityEngine.GameObject.hingeJoint = nil

---@property readonly CS.UnityEngine.GameObject.particleSystem : CS.UnityEngine.Component
CS.UnityEngine.GameObject.particleSystem = nil

---@param name : CS.System.String
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject(name)
end

---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject()
end

---@param name : CS.System.String
---@param components : CS.System.Type[]
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject(name, components)
end

---@param type : CS.UnityEngine.PrimitiveType
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject.CreatePrimitive(type)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponent(type)
end

---@param type : CS.System.String
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponent(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponentInChildren(type, includeInactive)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponentInChildren(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponentInParent(type, includeInactive)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:GetComponentInParent(type)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.GameObject:GetComponents(type)
end

---@param type : CS.System.Type
---@param results : CS.System.Collections.Generic.List
function CS.UnityEngine.GameObject:GetComponents(type, results)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.GameObject:GetComponentsInChildren(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.GameObject:GetComponentsInChildren(type, includeInactive)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.GameObject:GetComponentsInParent(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Component[]
function CS.UnityEngine.GameObject:GetComponentsInParent(type, includeInactive)
end

---@param type : CS.System.Type
---@param component : CS.UnityEngine.Component
---@return CS.System.Boolean
function CS.UnityEngine.GameObject:TryGetComponent(type, component)
end

---@param tag : CS.System.String
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject.FindWithTag(tag)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName, options)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:SendMessage(methodName, options)
end

---@param methodName : CS.System.String
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:BroadcastMessage(methodName, options)
end

---@param componentType : CS.System.Type
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:AddComponent(componentType)
end

---@param value : CS.System.Boolean
function CS.UnityEngine.GameObject:SetActive(value)
end

---@param state : CS.System.Boolean
function CS.UnityEngine.GameObject:SetActiveRecursively(state)
end

---@param tag : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.GameObject:CompareTag(tag)
end

---@param tag : CS.System.String
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject.FindGameObjectWithTag(tag)
end

---@param tag : CS.System.String
---@return CS.UnityEngine.GameObject[]
function CS.UnityEngine.GameObject.FindGameObjectsWithTag(tag)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName, value, options)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName, value)
end

---@param methodName : CS.System.String
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:SendMessage(methodName, value, options)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
function CS.UnityEngine.GameObject:SendMessage(methodName, value)
end

---@param methodName : CS.System.String
function CS.UnityEngine.GameObject:SendMessage(methodName)
end

---@param methodName : CS.System.String
---@param parameter : CS.System.Object
---@param options : CS.UnityEngine.SendMessageOptions
function CS.UnityEngine.GameObject:BroadcastMessage(methodName, parameter, options)
end

---@param methodName : CS.System.String
---@param parameter : CS.System.Object
function CS.UnityEngine.GameObject:BroadcastMessage(methodName, parameter)
end

---@param methodName : CS.System.String
function CS.UnityEngine.GameObject:BroadcastMessage(methodName)
end

---@param name : CS.System.String
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.GameObject.Find(name)
end

---@param clip : CS.UnityEngine.Object
---@param time : CS.System.Single
function CS.UnityEngine.GameObject:SampleAnimation(clip, time)
end

---@param className : CS.System.String
---@return CS.UnityEngine.Component
function CS.UnityEngine.GameObject:AddComponent(className)
end

---@param animation : CS.UnityEngine.Object
function CS.UnityEngine.GameObject:PlayAnimation(animation)
end

function CS.UnityEngine.GameObject:StopAnimation()
end