---@class CS.UnityEngine.Transform : CS.UnityEngine.Component
CS.UnityEngine.Transform = {}

---@property readwrite CS.UnityEngine.Transform.position : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.position = nil

---@property readwrite CS.UnityEngine.Transform.localPosition : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.localPosition = nil

---@property readwrite CS.UnityEngine.Transform.eulerAngles : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.eulerAngles = nil

---@property readwrite CS.UnityEngine.Transform.localEulerAngles : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.localEulerAngles = nil

---@property readwrite CS.UnityEngine.Transform.right : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.right = nil

---@property readwrite CS.UnityEngine.Transform.up : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.up = nil

---@property readwrite CS.UnityEngine.Transform.forward : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.forward = nil

---@property readwrite CS.UnityEngine.Transform.rotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Transform.rotation = nil

---@property readwrite CS.UnityEngine.Transform.localRotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Transform.localRotation = nil

---@property readwrite CS.UnityEngine.Transform.localScale : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.localScale = nil

---@property readwrite CS.UnityEngine.Transform.parent : CS.UnityEngine.Transform
CS.UnityEngine.Transform.parent = nil

---@property readonly CS.UnityEngine.Transform.worldToLocalMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Transform.worldToLocalMatrix = nil

---@property readonly CS.UnityEngine.Transform.localToWorldMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Transform.localToWorldMatrix = nil

---@property readonly CS.UnityEngine.Transform.root : CS.UnityEngine.Transform
CS.UnityEngine.Transform.root = nil

---@property readonly CS.UnityEngine.Transform.childCount : CS.System.Int32
CS.UnityEngine.Transform.childCount = nil

---@property readonly CS.UnityEngine.Transform.lossyScale : CS.UnityEngine.Vector3
CS.UnityEngine.Transform.lossyScale = nil

---@property readwrite CS.UnityEngine.Transform.hasChanged : CS.System.Boolean
CS.UnityEngine.Transform.hasChanged = nil

---@property readwrite CS.UnityEngine.Transform.hierarchyCapacity : CS.System.Int32
CS.UnityEngine.Transform.hierarchyCapacity = nil

---@property readonly CS.UnityEngine.Transform.hierarchyCount : CS.System.Int32
CS.UnityEngine.Transform.hierarchyCount = nil

---@param p : CS.UnityEngine.Transform
function CS.UnityEngine.Transform:SetParent(p)
end

---@param parent : CS.UnityEngine.Transform
---@param worldPositionStays : CS.System.Boolean
function CS.UnityEngine.Transform:SetParent(parent, worldPositionStays)
end

---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Transform:SetPositionAndRotation(position, rotation)
end

---@param translation : CS.UnityEngine.Vector3
---@param relativeTo : CS.UnityEngine.Space
function CS.UnityEngine.Transform:Translate(translation, relativeTo)
end

---@param translation : CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:Translate(translation)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param relativeTo : CS.UnityEngine.Space
function CS.UnityEngine.Transform:Translate(x, y, z, relativeTo)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.Transform:Translate(x, y, z)
end

---@param translation : CS.UnityEngine.Vector3
---@param relativeTo : CS.UnityEngine.Transform
function CS.UnityEngine.Transform:Translate(translation, relativeTo)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@param relativeTo : CS.UnityEngine.Transform
function CS.UnityEngine.Transform:Translate(x, y, z, relativeTo)
end

---@param eulers : CS.UnityEngine.Vector3
---@param relativeTo : CS.UnityEngine.Space
function CS.UnityEngine.Transform:Rotate(eulers, relativeTo)
end

---@param eulers : CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:Rotate(eulers)
end

---@param xAngle : CS.System.Single
---@param yAngle : CS.System.Single
---@param zAngle : CS.System.Single
---@param relativeTo : CS.UnityEngine.Space
function CS.UnityEngine.Transform:Rotate(xAngle, yAngle, zAngle, relativeTo)
end

---@param xAngle : CS.System.Single
---@param yAngle : CS.System.Single
---@param zAngle : CS.System.Single
function CS.UnityEngine.Transform:Rotate(xAngle, yAngle, zAngle)
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
---@param relativeTo : CS.UnityEngine.Space
function CS.UnityEngine.Transform:Rotate(axis, angle, relativeTo)
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Transform:Rotate(axis, angle)
end

---@param point : CS.UnityEngine.Vector3
---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Transform:RotateAround(point, axis, angle)
end

---@param target : CS.UnityEngine.Transform
---@param worldUp : CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:LookAt(target, worldUp)
end

---@param target : CS.UnityEngine.Transform
function CS.UnityEngine.Transform:LookAt(target)
end

---@param worldPosition : CS.UnityEngine.Vector3
---@param worldUp : CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:LookAt(worldPosition, worldUp)
end

---@param worldPosition : CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:LookAt(worldPosition)
end

---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformDirection(direction)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformDirection(x, y, z)
end

---@param direction : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformDirection(direction)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformDirection(x, y, z)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformVector(vector)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformVector(x, y, z)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformVector(vector)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformVector(x, y, z)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformPoint(position)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:TransformPoint(x, y, z)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformPoint(position)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Transform:InverseTransformPoint(x, y, z)
end

function CS.UnityEngine.Transform:DetachChildren()
end

function CS.UnityEngine.Transform:SetAsFirstSibling()
end

function CS.UnityEngine.Transform:SetAsLastSibling()
end

---@param index : CS.System.Int32
function CS.UnityEngine.Transform:SetSiblingIndex(index)
end

---@return CS.System.Int32
function CS.UnityEngine.Transform:GetSiblingIndex()
end

---@param n : CS.System.String
---@return CS.UnityEngine.Transform
function CS.UnityEngine.Transform:Find(n)
end

---@param parent : CS.UnityEngine.Transform
---@return CS.System.Boolean
function CS.UnityEngine.Transform:IsChildOf(parent)
end

---@param n : CS.System.String
---@return CS.UnityEngine.Transform
function CS.UnityEngine.Transform:FindChild(n)
end

---@return CS.System.Collections.IEnumerator
function CS.UnityEngine.Transform:GetEnumerator()
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Transform:RotateAround(axis, angle)
end

---@param axis : CS.UnityEngine.Vector3
---@param angle : CS.System.Single
function CS.UnityEngine.Transform:RotateAroundLocal(axis, angle)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Transform
function CS.UnityEngine.Transform:GetChild(index)
end

---@return CS.System.Int32
function CS.UnityEngine.Transform:GetChildCount()
end