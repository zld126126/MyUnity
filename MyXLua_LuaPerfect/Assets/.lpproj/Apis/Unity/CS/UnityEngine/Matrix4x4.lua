---@class CS.UnityEngine.Matrix4x4 : CS.System.ValueType
CS.UnityEngine.Matrix4x4 = {}

---@field public CS.UnityEngine.Matrix4x4.m00 : CS.System.Single
CS.UnityEngine.Matrix4x4.m00 = nil

---@field public CS.UnityEngine.Matrix4x4.m10 : CS.System.Single
CS.UnityEngine.Matrix4x4.m10 = nil

---@field public CS.UnityEngine.Matrix4x4.m20 : CS.System.Single
CS.UnityEngine.Matrix4x4.m20 = nil

---@field public CS.UnityEngine.Matrix4x4.m30 : CS.System.Single
CS.UnityEngine.Matrix4x4.m30 = nil

---@field public CS.UnityEngine.Matrix4x4.m01 : CS.System.Single
CS.UnityEngine.Matrix4x4.m01 = nil

---@field public CS.UnityEngine.Matrix4x4.m11 : CS.System.Single
CS.UnityEngine.Matrix4x4.m11 = nil

---@field public CS.UnityEngine.Matrix4x4.m21 : CS.System.Single
CS.UnityEngine.Matrix4x4.m21 = nil

---@field public CS.UnityEngine.Matrix4x4.m31 : CS.System.Single
CS.UnityEngine.Matrix4x4.m31 = nil

---@field public CS.UnityEngine.Matrix4x4.m02 : CS.System.Single
CS.UnityEngine.Matrix4x4.m02 = nil

---@field public CS.UnityEngine.Matrix4x4.m12 : CS.System.Single
CS.UnityEngine.Matrix4x4.m12 = nil

---@field public CS.UnityEngine.Matrix4x4.m22 : CS.System.Single
CS.UnityEngine.Matrix4x4.m22 = nil

---@field public CS.UnityEngine.Matrix4x4.m32 : CS.System.Single
CS.UnityEngine.Matrix4x4.m32 = nil

---@field public CS.UnityEngine.Matrix4x4.m03 : CS.System.Single
CS.UnityEngine.Matrix4x4.m03 = nil

---@field public CS.UnityEngine.Matrix4x4.m13 : CS.System.Single
CS.UnityEngine.Matrix4x4.m13 = nil

---@field public CS.UnityEngine.Matrix4x4.m23 : CS.System.Single
CS.UnityEngine.Matrix4x4.m23 = nil

---@field public CS.UnityEngine.Matrix4x4.m33 : CS.System.Single
CS.UnityEngine.Matrix4x4.m33 = nil

---@property readonly CS.UnityEngine.Matrix4x4.rotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Matrix4x4.rotation = nil

---@property readonly CS.UnityEngine.Matrix4x4.lossyScale : CS.UnityEngine.Vector3
CS.UnityEngine.Matrix4x4.lossyScale = nil

---@property readonly CS.UnityEngine.Matrix4x4.isIdentity : CS.System.Boolean
CS.UnityEngine.Matrix4x4.isIdentity = nil

---@property readonly CS.UnityEngine.Matrix4x4.determinant : CS.System.Single
CS.UnityEngine.Matrix4x4.determinant = nil

---@property readonly CS.UnityEngine.Matrix4x4.decomposeProjection : CS.UnityEngine.FrustumPlanes
CS.UnityEngine.Matrix4x4.decomposeProjection = nil

---@property readonly CS.UnityEngine.Matrix4x4.inverse : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4.inverse = nil

---@property readonly CS.UnityEngine.Matrix4x4.transpose : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4.transpose = nil

---@property readwrite CS.UnityEngine.Matrix4x4.Item : CS.System.Single
CS.UnityEngine.Matrix4x4.Item = nil

---@property readwrite CS.UnityEngine.Matrix4x4.Item : CS.System.Single
CS.UnityEngine.Matrix4x4.Item = nil

---@property readonly CS.UnityEngine.Matrix4x4.zero : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4.zero = nil

---@property readonly CS.UnityEngine.Matrix4x4.identity : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4.identity = nil

---@param column0 : CS.UnityEngine.Vector4
---@param column1 : CS.UnityEngine.Vector4
---@param column2 : CS.UnityEngine.Vector4
---@param column3 : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4(column0, column1, column2, column3)
end

---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4:ValidTRS()
end

---@param m : CS.UnityEngine.Matrix4x4
---@return CS.System.Single
function CS.UnityEngine.Matrix4x4.Determinant(m)
end

---@param pos : CS.UnityEngine.Vector3
---@param q : CS.UnityEngine.Quaternion
---@param s : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.TRS(pos, q, s)
end

---@param pos : CS.UnityEngine.Vector3
---@param q : CS.UnityEngine.Quaternion
---@param s : CS.UnityEngine.Vector3
function CS.UnityEngine.Matrix4x4:SetTRS(pos, q, s)
end

---@param input : CS.UnityEngine.Matrix4x4
---@param result : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4.Inverse3DAffine(input, result)
end

---@param m : CS.UnityEngine.Matrix4x4
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Inverse(m)
end

---@param m : CS.UnityEngine.Matrix4x4
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Transpose(m)
end

---@param left : CS.System.Single
---@param right : CS.System.Single
---@param bottom : CS.System.Single
---@param top : CS.System.Single
---@param zNear : CS.System.Single
---@param zFar : CS.System.Single
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Ortho(left, right, bottom, top, zNear, zFar)
end

---@param fov : CS.System.Single
---@param aspect : CS.System.Single
---@param zNear : CS.System.Single
---@param zFar : CS.System.Single
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Perspective(fov, aspect, zNear, zFar)
end

---@param from : CS.UnityEngine.Vector3
---@param to : CS.UnityEngine.Vector3
---@param up : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.LookAt(from, to, up)
end

---@param left : CS.System.Single
---@param right : CS.System.Single
---@param bottom : CS.System.Single
---@param top : CS.System.Single
---@param zNear : CS.System.Single
---@param zFar : CS.System.Single
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Frustum(left, right, bottom, top, zNear, zFar)
end

---@param fp : CS.UnityEngine.FrustumPlanes
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Frustum(fp)
end

---@return CS.System.Int32
function CS.UnityEngine.Matrix4x4:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4:Equals(other)
end

---@param other : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4:Equals(other)
end

---@param lhs : CS.UnityEngine.Matrix4x4
---@param rhs : CS.UnityEngine.Matrix4x4
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.op_Multiply(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Matrix4x4
---@param vector : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Matrix4x4.op_Multiply(lhs, vector)
end

---@param lhs : CS.UnityEngine.Matrix4x4
---@param rhs : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Matrix4x4
---@param rhs : CS.UnityEngine.Matrix4x4
---@return CS.System.Boolean
function CS.UnityEngine.Matrix4x4.op_Inequality(lhs, rhs)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Matrix4x4:GetColumn(index)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Vector4
function CS.UnityEngine.Matrix4x4:GetRow(index)
end

---@param index : CS.System.Int32
---@param column : CS.UnityEngine.Vector4
function CS.UnityEngine.Matrix4x4:SetColumn(index, column)
end

---@param index : CS.System.Int32
---@param row : CS.UnityEngine.Vector4
function CS.UnityEngine.Matrix4x4:SetRow(index, row)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Matrix4x4:MultiplyPoint(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Matrix4x4:MultiplyPoint3x4(point)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Matrix4x4:MultiplyVector(vector)
end

---@param plane : CS.UnityEngine.Plane
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Matrix4x4:TransformPlane(plane)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Scale(vector)
end

---@param vector : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Translate(vector)
end

---@param q : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Matrix4x4.Rotate(q)
end

---@return CS.System.String
function CS.UnityEngine.Matrix4x4:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Matrix4x4:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Matrix4x4:ToString(format, formatProvider)
end