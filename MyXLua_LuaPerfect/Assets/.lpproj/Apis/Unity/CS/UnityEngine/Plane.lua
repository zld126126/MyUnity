---@class CS.UnityEngine.Plane : CS.System.ValueType
CS.UnityEngine.Plane = {}

---@property readwrite CS.UnityEngine.Plane.normal : CS.UnityEngine.Vector3
CS.UnityEngine.Plane.normal = nil

---@property readwrite CS.UnityEngine.Plane.distance : CS.System.Single
CS.UnityEngine.Plane.distance = nil

---@property readonly CS.UnityEngine.Plane.flipped : CS.UnityEngine.Plane
CS.UnityEngine.Plane.flipped = nil

---@param inNormal : CS.UnityEngine.Vector3
---@param inPoint : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Plane(inNormal, inPoint)
end

---@param inNormal : CS.UnityEngine.Vector3
---@param d : CS.System.Single
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Plane(inNormal, d)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param c : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Plane(a, b, c)
end

---@param inNormal : CS.UnityEngine.Vector3
---@param inPoint : CS.UnityEngine.Vector3
function CS.UnityEngine.Plane:SetNormalAndPosition(inNormal, inPoint)
end

---@param a : CS.UnityEngine.Vector3
---@param b : CS.UnityEngine.Vector3
---@param c : CS.UnityEngine.Vector3
function CS.UnityEngine.Plane:Set3Points(a, b, c)
end

function CS.UnityEngine.Plane:Flip()
end

---@param translation : CS.UnityEngine.Vector3
function CS.UnityEngine.Plane:Translate(translation)
end

---@param plane : CS.UnityEngine.Plane
---@param translation : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Plane
function CS.UnityEngine.Plane.Translate(plane, translation)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Plane:ClosestPointOnPlane(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.System.Single
function CS.UnityEngine.Plane:GetDistanceToPoint(point)
end

---@param point : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Plane:GetSide(point)
end

---@param inPt0 : CS.UnityEngine.Vector3
---@param inPt1 : CS.UnityEngine.Vector3
---@return CS.System.Boolean
function CS.UnityEngine.Plane:SameSide(inPt0, inPt1)
end

---@param ray : CS.UnityEngine.Ray
---@param enter : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Plane:Raycast(ray, enter)
end

---@return CS.System.String
function CS.UnityEngine.Plane:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Plane:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.Plane:ToString(format, formatProvider)
end