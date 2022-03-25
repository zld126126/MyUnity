---@module CS.UnityEngine.SceneManagement
CS.UnityEngine.SceneManagement = {}

---@class CS.UnityEngine.SceneManagement.Scene : CS.System.ValueType
CS.UnityEngine.SceneManagement.Scene = {}

---@property readonly CS.UnityEngine.SceneManagement.Scene.handle : CS.System.Int32
CS.UnityEngine.SceneManagement.Scene.handle = nil

---@property readonly CS.UnityEngine.SceneManagement.Scene.path : CS.System.String
CS.UnityEngine.SceneManagement.Scene.path = nil

---@property readwrite CS.UnityEngine.SceneManagement.Scene.name : CS.System.String
CS.UnityEngine.SceneManagement.Scene.name = nil

---@property readonly CS.UnityEngine.SceneManagement.Scene.isLoaded : CS.System.Boolean
CS.UnityEngine.SceneManagement.Scene.isLoaded = nil

---@property readonly CS.UnityEngine.SceneManagement.Scene.buildIndex : CS.System.Int32
CS.UnityEngine.SceneManagement.Scene.buildIndex = nil

---@property readonly CS.UnityEngine.SceneManagement.Scene.isDirty : CS.System.Boolean
CS.UnityEngine.SceneManagement.Scene.isDirty = nil

---@property readonly CS.UnityEngine.SceneManagement.Scene.rootCount : CS.System.Int32
CS.UnityEngine.SceneManagement.Scene.rootCount = nil

---@property readwrite CS.UnityEngine.SceneManagement.Scene.isSubScene : CS.System.Boolean
CS.UnityEngine.SceneManagement.Scene.isSubScene = nil

---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.Scene:IsValid()
end

---@return CS.UnityEngine.GameObject[]
function CS.UnityEngine.SceneManagement.Scene:GetRootGameObjects()
end

---@param rootGameObjects : CS.System.Collections.Generic.List
function CS.UnityEngine.SceneManagement.Scene:GetRootGameObjects(rootGameObjects)
end

---@param lhs : CS.UnityEngine.SceneManagement.Scene
---@param rhs : CS.UnityEngine.SceneManagement.Scene
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.Scene.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.SceneManagement.Scene
---@param rhs : CS.UnityEngine.SceneManagement.Scene
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.Scene.op_Inequality(lhs, rhs)
end

---@return CS.System.Int32
function CS.UnityEngine.SceneManagement.Scene:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.Scene:Equals(other)
end