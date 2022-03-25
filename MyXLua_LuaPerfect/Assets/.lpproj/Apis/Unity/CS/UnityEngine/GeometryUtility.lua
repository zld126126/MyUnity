---@class CS.UnityEngine.GeometryUtility : CS.System.Object
CS.UnityEngine.GeometryUtility = {}

---@return CS.UnityEngine.GeometryUtility
function CS.UnityEngine.GeometryUtility()
end

---@param camera : CS.UnityEngine.Camera
---@return CS.UnityEngine.Plane[]
function CS.UnityEngine.GeometryUtility.CalculateFrustumPlanes(camera)
end

---@param worldToProjectionMatrix : CS.UnityEngine.Matrix4x4
---@return CS.UnityEngine.Plane[]
function CS.UnityEngine.GeometryUtility.CalculateFrustumPlanes(worldToProjectionMatrix)
end

---@param camera : CS.UnityEngine.Camera
---@param planes : CS.UnityEngine.Plane[]
function CS.UnityEngine.GeometryUtility.CalculateFrustumPlanes(camera, planes)
end

---@param worldToProjectionMatrix : CS.UnityEngine.Matrix4x4
---@param planes : CS.UnityEngine.Plane[]
function CS.UnityEngine.GeometryUtility.CalculateFrustumPlanes(worldToProjectionMatrix, planes)
end

---@param positions : CS.UnityEngine.Vector3[]
---@param transform : CS.UnityEngine.Matrix4x4
---@return CS.UnityEngine.Bounds
function CS.UnityEngine.GeometryUtility.CalculateBounds(positions, transform)
end

---@param vertices : CS.UnityEngine.Vector3[]
---@param plane : CS.UnityEngine.Plane
---@return CS.System.Boolean
function CS.UnityEngine.GeometryUtility.TryCreatePlaneFromPolygon(vertices, plane)
end

---@param planes : CS.UnityEngine.Plane[]
---@param bounds : CS.UnityEngine.Bounds
---@return CS.System.Boolean
function CS.UnityEngine.GeometryUtility.TestPlanesAABB(planes, bounds)
end