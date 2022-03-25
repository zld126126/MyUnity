---@class CS.UnityEngine.SceneManagement.SceneManager : CS.System.Object
CS.UnityEngine.SceneManagement.SceneManager = {}

---@property readonly CS.UnityEngine.SceneManagement.SceneManager.sceneCount : CS.System.Int32
CS.UnityEngine.SceneManagement.SceneManager.sceneCount = nil

---@property readonly CS.UnityEngine.SceneManagement.SceneManager.sceneCountInBuildSettings : CS.System.Int32
CS.UnityEngine.SceneManagement.SceneManager.sceneCountInBuildSettings = nil

---@return CS.UnityEngine.SceneManagement.SceneManager
function CS.UnityEngine.SceneManagement.SceneManager()
end

---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.GetActiveScene()
end

---@param scene : CS.UnityEngine.SceneManagement.Scene
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.SceneManager.SetActiveScene(scene)
end

---@param scenePath : CS.System.String
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.GetSceneByPath(scenePath)
end

---@param name : CS.System.String
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.GetSceneByName(name)
end

---@param buildIndex : CS.System.Int32
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.GetSceneByBuildIndex(buildIndex)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.GetSceneAt(index)
end

---@param sceneName : CS.System.String
---@param parameters : CS.UnityEngine.SceneManagement.CreateSceneParameters
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.CreateScene(sceneName, parameters)
end

---@param sourceScene : CS.UnityEngine.SceneManagement.Scene
---@param destinationScene : CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.MergeScenes(sourceScene, destinationScene)
end

---@param go : CS.UnityEngine.GameObject
---@param scene : CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.MoveGameObjectToScene(go, scene)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.add_sceneLoaded(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.remove_sceneLoaded(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.add_sceneUnloaded(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.remove_sceneUnloaded(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.add_activeSceneChanged(value)
end

---@param value : CS.UnityEngine.Events.UnityAction
function CS.UnityEngine.SceneManagement.SceneManager.remove_activeSceneChanged(value)
end

---@return CS.UnityEngine.SceneManagement.Scene[]
function CS.UnityEngine.SceneManagement.SceneManager.GetAllScenes()
end

---@param sceneName : CS.System.String
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.CreateScene(sceneName)
end

---@param sceneName : CS.System.String
---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneName, mode)
end

---@param sceneName : CS.System.String
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneName)
end

---@param sceneName : CS.System.String
---@param parameters : CS.UnityEngine.SceneManagement.LoadSceneParameters
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneName, parameters)
end

---@param sceneBuildIndex : CS.System.Int32
---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneBuildIndex, mode)
end

---@param sceneBuildIndex : CS.System.Int32
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneBuildIndex)
end

---@param sceneBuildIndex : CS.System.Int32
---@param parameters : CS.UnityEngine.SceneManagement.LoadSceneParameters
---@return CS.UnityEngine.SceneManagement.Scene
function CS.UnityEngine.SceneManagement.SceneManager.LoadScene(sceneBuildIndex, parameters)
end

---@param sceneBuildIndex : CS.System.Int32
---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneBuildIndex, mode)
end

---@param sceneBuildIndex : CS.System.Int32
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneBuildIndex)
end

---@param sceneBuildIndex : CS.System.Int32
---@param parameters : CS.UnityEngine.SceneManagement.LoadSceneParameters
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneBuildIndex, parameters)
end

---@param sceneName : CS.System.String
---@param mode : CS.UnityEngine.SceneManagement.LoadSceneMode
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneName, mode)
end

---@param sceneName : CS.System.String
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneName)
end

---@param sceneName : CS.System.String
---@param parameters : CS.UnityEngine.SceneManagement.LoadSceneParameters
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneName, parameters)
end

---@param scene : CS.UnityEngine.SceneManagement.Scene
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.SceneManager.UnloadScene(scene)
end

---@param sceneBuildIndex : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.SceneManager.UnloadScene(sceneBuildIndex)
end

---@param sceneName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.SceneManagement.SceneManager.UnloadScene(sceneName)
end

---@param sceneBuildIndex : CS.System.Int32
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(sceneBuildIndex)
end

---@param sceneName : CS.System.String
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(sceneName)
end

---@param scene : CS.UnityEngine.SceneManagement.Scene
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(scene)
end

---@param sceneBuildIndex : CS.System.Int32
---@param options : CS.UnityEngine.SceneManagement.UnloadSceneOptions
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(sceneBuildIndex, options)
end

---@param sceneName : CS.System.String
---@param options : CS.UnityEngine.SceneManagement.UnloadSceneOptions
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(sceneName, options)
end

---@param scene : CS.UnityEngine.SceneManagement.Scene
---@param options : CS.UnityEngine.SceneManagement.UnloadSceneOptions
---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(scene, options)
end