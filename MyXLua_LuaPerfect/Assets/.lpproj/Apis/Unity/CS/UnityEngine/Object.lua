---@class CS.UnityEngine.Object : CS.System.Object
CS.UnityEngine.Object = {}

---@property readwrite CS.UnityEngine.Object.name : CS.System.String
CS.UnityEngine.Object.name = nil

---@property readwrite CS.UnityEngine.Object.hideFlags : CS.UnityEngine.HideFlags
CS.UnityEngine.Object.hideFlags = nil

---@return CS.UnityEngine.Object
function CS.UnityEngine.Object()
end

---@return CS.System.Int32
function CS.UnityEngine.Object:GetInstanceID()
end

---@return CS.System.Int32
function CS.UnityEngine.Object:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Object:Equals(other)
end

---@param exists : CS.UnityEngine.Object
---@return CS.System.Boolean
function CS.UnityEngine.Object.op_Implicit(exists)
end

---@param original : CS.UnityEngine.Object
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.Instantiate(original, position, rotation)
end

---@param original : CS.UnityEngine.Object
---@param position : CS.UnityEngine.Vector3
---@param rotation : CS.UnityEngine.Quaternion
---@param parent : CS.UnityEngine.Transform
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.Instantiate(original, position, rotation, parent)
end

---@param original : CS.UnityEngine.Object
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.Instantiate(original)
end

---@param original : CS.UnityEngine.Object
---@param parent : CS.UnityEngine.Transform
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.Instantiate(original, parent)
end

---@param original : CS.UnityEngine.Object
---@param parent : CS.UnityEngine.Transform
---@param instantiateInWorldSpace : CS.System.Boolean
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.Instantiate(original, parent, instantiateInWorldSpace)
end

---@param obj : CS.UnityEngine.Object
---@param t : CS.System.Single
function CS.UnityEngine.Object.Destroy(obj, t)
end

---@param obj : CS.UnityEngine.Object
function CS.UnityEngine.Object.Destroy(obj)
end

---@param obj : CS.UnityEngine.Object
---@param allowDestroyingAssets : CS.System.Boolean
function CS.UnityEngine.Object.DestroyImmediate(obj, allowDestroyingAssets)
end

---@param obj : CS.UnityEngine.Object
function CS.UnityEngine.Object.DestroyImmediate(obj)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Object.FindObjectsOfType(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Object.FindObjectsOfType(type, includeInactive)
end

---@param target : CS.UnityEngine.Object
function CS.UnityEngine.Object.DontDestroyOnLoad(target)
end

---@param obj : CS.UnityEngine.Object
---@param t : CS.System.Single
function CS.UnityEngine.Object.DestroyObject(obj, t)
end

---@param obj : CS.UnityEngine.Object
function CS.UnityEngine.Object.DestroyObject(obj)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Object.FindSceneObjectsOfType(type)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Object.FindObjectsOfTypeIncludingAssets(type)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object[]
function CS.UnityEngine.Object.FindObjectsOfTypeAll(type)
end

---@param type : CS.System.Type
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.FindObjectOfType(type)
end

---@param type : CS.System.Type
---@param includeInactive : CS.System.Boolean
---@return CS.UnityEngine.Object
function CS.UnityEngine.Object.FindObjectOfType(type, includeInactive)
end

---@return CS.System.String
function CS.UnityEngine.Object:ToString()
end

---@param x : CS.UnityEngine.Object
---@param y : CS.UnityEngine.Object
---@return CS.System.Boolean
function CS.UnityEngine.Object.op_Equality(x, y)
end

---@param x : CS.UnityEngine.Object
---@param y : CS.UnityEngine.Object
---@return CS.System.Boolean
function CS.UnityEngine.Object.op_Inequality(x, y)
end