---@class CS.UnityEngine.Collision : CS.System.Object
CS.UnityEngine.Collision = {}

---@property readonly CS.UnityEngine.Collision.relativeVelocity : CS.UnityEngine.Vector3
CS.UnityEngine.Collision.relativeVelocity = nil

---@property readonly CS.UnityEngine.Collision.rigidbody : CS.UnityEngine.Rigidbody
CS.UnityEngine.Collision.rigidbody = nil

---@property readonly CS.UnityEngine.Collision.articulationBody : CS.UnityEngine.ArticulationBody
CS.UnityEngine.Collision.articulationBody = nil

---@property readonly CS.UnityEngine.Collision.body : CS.UnityEngine.Component
CS.UnityEngine.Collision.body = nil

---@property readonly CS.UnityEngine.Collision.collider : CS.UnityEngine.Collider
CS.UnityEngine.Collision.collider = nil

---@property readonly CS.UnityEngine.Collision.transform : CS.UnityEngine.Transform
CS.UnityEngine.Collision.transform = nil

---@property readonly CS.UnityEngine.Collision.gameObject : CS.UnityEngine.GameObject
CS.UnityEngine.Collision.gameObject = nil

---@property readonly CS.UnityEngine.Collision.contactCount : CS.System.Int32
CS.UnityEngine.Collision.contactCount = nil

---@property readonly CS.UnityEngine.Collision.contacts : CS.UnityEngine.ContactPoint[]
CS.UnityEngine.Collision.contacts = nil

---@property readonly CS.UnityEngine.Collision.impulse : CS.UnityEngine.Vector3
CS.UnityEngine.Collision.impulse = nil

---@property readonly CS.UnityEngine.Collision.impactForceSum : CS.UnityEngine.Vector3
CS.UnityEngine.Collision.impactForceSum = nil

---@property readonly CS.UnityEngine.Collision.frictionForceSum : CS.UnityEngine.Vector3
CS.UnityEngine.Collision.frictionForceSum = nil

---@property readonly CS.UnityEngine.Collision.other : CS.UnityEngine.Component
CS.UnityEngine.Collision.other = nil

---@return CS.UnityEngine.Collision
function CS.UnityEngine.Collision()
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.ContactPoint
function CS.UnityEngine.Collision:GetContact(index)
end

---@param contacts : CS.UnityEngine.ContactPoint[]
---@return CS.System.Int32
function CS.UnityEngine.Collision:GetContacts(contacts)
end

---@param contacts : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.Collision:GetContacts(contacts)
end

---@return CS.System.Collections.IEnumerator
function CS.UnityEngine.Collision:GetEnumerator()
end