---@class CS.UnityEngine.Gizmos : CS.System.Object
CS.UnityEngine.Gizmos = {}

---@property readwrite CS.UnityEngine.Gizmos.color : CS.UnityEngine.Color
CS.UnityEngine.Gizmos.color = nil

---@property readwrite CS.UnityEngine.Gizmos.matrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Gizmos.matrix = nil

---@property readwrite CS.UnityEngine.Gizmos.exposure : CS.UnityEngine.Texture
CS.UnityEngine.Gizmos.exposure = nil

---@property readonly CS.UnityEngine.Gizmos.probeSize : CS.System.Single
CS.UnityEngine.Gizmos.probeSize = nil

---@return CS.UnityEngine.Gizmos
function CS.UnityEngine.Gizmos()
end

---@param from : CS.UnityEngine.Vector3
---@param to : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawLine(from, to)
end

---@param center : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
function CS.UnityEngine.Gizmos.DrawWireSphere(center, radius)
end

---@param center : CS.UnityEngine.Vector3
---@param radius : CS.System.Single
function CS.UnityEngine.Gizmos.DrawSphere(center, radius)
end

---@param center : CS.UnityEngine.Vector3
---@param size : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawWireCube(center, size)
end

---@param center : CS.UnityEngine.Vector3
---@param size : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawCube(center, size)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param scale : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawMesh(mesh, submeshIndex, position, rotation, scale)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param scale : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, submeshIndex, position, rotation, scale)
end

---@param center : CS.UnityEngine.Vector3
---@param name : CS.System.String
---@param allowScaling : CS.System.Boolean
function CS.UnityEngine.Gizmos.DrawIcon(center, name, allowScaling)
end

---@param center : CS.UnityEngine.Vector3
---@param name : CS.System.String
---@param allowScaling : CS.System.Boolean
---@param tint : CS.UnityEngine.Color
function CS.UnityEngine.Gizmos.DrawIcon(center, name, allowScaling, tint)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Gizmos.DrawGUITexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder, mat)
end

---@param center : CS.UnityEngine.Vector3
---@param fov : CS.System.Single
---@param maxRange : CS.System.Single
---@param minRange : CS.System.Single
---@param aspect : CS.System.Single
function CS.UnityEngine.Gizmos.DrawFrustum(center, fov, maxRange, minRange, aspect)
end

---@param r : CS.UnityEngine.Ray
function CS.UnityEngine.Gizmos.DrawRay(r)
end

---@param from : CS.UnityEngine.Vector3
---@param direction : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawRay(from, direction)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Gizmos.DrawMesh(mesh, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawMesh(mesh, position)
end

---@param mesh : CS.UnityEngine.Mesh
function CS.UnityEngine.Gizmos.DrawMesh(mesh)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param scale : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawMesh(mesh, position, rotation, scale)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Gizmos.DrawMesh(mesh, submeshIndex, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawMesh(mesh, submeshIndex, position)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Gizmos.DrawMesh(mesh, submeshIndex)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, position)
end

---@param mesh : CS.UnityEngine.Mesh
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh)
end

---@param mesh : CS.UnityEngine.Mesh
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param scale : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, position, rotation, scale)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, submeshIndex, position, rotation)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
---@param position : CS.UnityEngine.Vector3
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, submeshIndex, position)
end

---@param mesh : CS.UnityEngine.Mesh
---@param submeshIndex : CS.System.Int32
function CS.UnityEngine.Gizmos.DrawWireMesh(mesh, submeshIndex)
end

---@param center : CS.UnityEngine.Vector3
---@param name : CS.System.String
function CS.UnityEngine.Gizmos.DrawIcon(center, name)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
function CS.UnityEngine.Gizmos.DrawGUITexture(screenRect, texture)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param mat : CS.UnityEngine.Material
function CS.UnityEngine.Gizmos.DrawGUITexture(screenRect, texture, mat)
end

---@param screenRect : CS.UnityEngine.Rect
---@param texture : CS.UnityEngine.Texture
---@param leftBorder : CS.System.Int32
---@param rightBorder : CS.System.Int32
---@param topBorder : CS.System.Int32
---@param bottomBorder : CS.System.Int32
function CS.UnityEngine.Gizmos.DrawGUITexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder)
end