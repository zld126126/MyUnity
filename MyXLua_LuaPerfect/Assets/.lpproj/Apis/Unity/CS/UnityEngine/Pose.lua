---@class CS.UnityEngine.Pose : CS.System.ValueType
CS.UnityEngine.Pose = {}

---@field public CS.UnityEngine.Pose.position : CS.UnityEngine.Vector3
CS.UnityEngine.Pose.position = nil

---@field public CS.UnityEngine.Pose.rotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Pose.rotation = nil

---@property readonly CS.UnityEngine.Pose.forward : CS.UnityEngine.Vector3
CS.UnityEngine.Pose.forward = nil

---@property readonly CS.UnityEngine.Pose.right : CS.UnityEngine.Vector3
CS.UnityEngine.Pose.right = nil

---@property readonly CS.UnityEngine.Pose.up : CS.UnityEngine.Vector3
CS.UnityEngine.Pose.up = nil

---@property readonly CS.UnityEngine.Pose.identity : CS.UnityEngine.Pose
CS.UnityEngine.Pose.identity = nil

---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Pose
function CS.UnityEngine.Pose(position, rotation)
end

---@return CS.System.String
function CS.UnityEngine.Pose:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Pose:ToString(format)
end

---@param lhs : CS.UnityEngine.Pose
---@return CS.UnityEngine.Pose
function CS.UnityEngine.Pose:GetTransformedBy(lhs)
end

---@param lhs : CS.UnityEngine.Transform
---@return CS.UnityEngine.Pose
function CS.UnityEngine.Pose:GetTransformedBy(lhs)
end

---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Pose:Equals(obj)
end

---@param other : CS.UnityEngine.Pose
---@return CS.System.Boolean
function CS.UnityEngine.Pose:Equals(other)
end

---@return CS.System.Int32
function CS.UnityEngine.Pose:GetHashCode()
end

---@param a : CS.UnityEngine.Pose
---@param b : CS.UnityEngine.Pose
---@return CS.System.Boolean
function CS.UnityEngine.Pose.op_Equality(a, b)
end

---@param a : CS.UnityEngine.Pose
---@param b : CS.UnityEngine.Pose
---@return CS.System.Boolean
function CS.UnityEngine.Pose.op_Inequality(a, b)
end