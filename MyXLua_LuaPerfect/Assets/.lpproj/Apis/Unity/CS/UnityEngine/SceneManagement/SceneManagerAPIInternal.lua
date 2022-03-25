---@class CS.UnityEngine.SceneManagement.SceneManagerAPIInternal : CS.System.Object
CS.UnityEngine.SceneManagement.SceneManagerAPIInternal = {}

---@return CS.System.Int32
function CS.UnityEngine.SceneManagement.SceneManagerAPIInternal.GetNumScenesInBuildSettings()
end

---@param buildIndex : CS.System.Int32
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManagerAPIInternal.GetSceneByBuildIndex(buildIndex)
end

---@param sceneName : CS.System.String
---@param sceneBuildIndex : CS.System.Int32
---@param parameters : CS.UnityEngine.SceneManagement.LoadSceneParameters
---@param mustCompleteNextFrame : CS.System.Boolean
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManagerAPIInternal.LoadSceneAsyncNameIndexInternal(sceneName, sceneBuildIndex, parameters, mustCompleteNextFrame)
end

---@param sceneName : CS.System.String
---@param sceneBuildIndex : CS.System.Int32
---@param immediately : CS.System.Boolean
---@param options : CS.UnityEngine.SceneManagement.UnloadSceneOptions
---@param outSuccess : CS.System.Boolean
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManagerAPIInternal.UnloadSceneNameIndexInternal(sceneName, sceneBuildIndex, immediately, options, outSuccess)
end