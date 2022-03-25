---@class CS.UnityEngine.SceneManagement.LoadSceneParameters : CS.System.ValueType
CS.UnityEngine.SceneManagement.LoadSceneParameters = {}

---@property readwrite CS.UnityEngine.SceneManagement.LoadSceneParameters.loadSceneMode : CS.UnityEngine.SceneManagement.LoadSceneMode
CS.UnityEngine.SceneManagement.LoadSceneParameters.loadSceneMode = nil

---@property readwrite CS.UnityEngine.SceneManagement.LoadSceneParameters.localPhysicsMode : CS.UnityEngine.SceneManagement.LocalPhysicsMode
CS.UnityEngine.SceneManagement.LoadSceneParameters.localPhysicsMode = nil

---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
---@return CS.UnityEngine.SceneManagement.LoadSceneParameters
function CS.UnityEngine.SceneManagement.LoadSceneParameters(mode)
end

---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
---@param physicsMode : CS.UnityEngine.SceneManagement.LocalPhysicsMode
---@return CS.UnityEngine.SceneManagement.LoadSceneParameters
function CS.UnityEngine.SceneManagement.LoadSceneParameters(mode, physicsMode)
end