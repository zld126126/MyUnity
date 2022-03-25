---@class CS.UnityEngine.InternalStaticBatchingUtility : CS.System.Object
CS.UnityEngine.InternalStaticBatchingUtility = {}

---@return CS.UnityEngine.InternalStaticBatchingUtility
function CS.UnityEngine.InternalStaticBatchingUtility()
end

---@param staticBatchRoot : CS.UnityEngine.GameObject
---@param sorter : CS.UnityEngine.StaticBatcherGOSorter
function CS.UnityEngine.InternalStaticBatchingUtility.CombineRoot(staticBatchRoot, sorter)
end

---@param staticBatchRoot : CS.UnityEngine.GameObject
---@param combineOnlyStatic : CS.System.Boolean
---@param isEditorPostprocessScene : CS.System.Boolean
---@param sorter : CS.UnityEngine.StaticBatcherGOSorter
function CS.UnityEngine.InternalStaticBatchingUtility.Combine(staticBatchRoot, combineOnlyStatic, isEditorPostprocessScene, sorter)
end

---@param gos : CS.UnityEngine.GameObject[]
---@param staticBatchRoot : CS.UnityEngine.GameObject
---@param isEditorPostprocessScene : CS.System.Boolean
---@param sorter : CS.UnityEngine.StaticBatcherGOSorter
function CS.UnityEngine.InternalStaticBatchingUtility.CombineGameObjects(gos, staticBatchRoot, isEditorPostprocessScene, sorter)
end