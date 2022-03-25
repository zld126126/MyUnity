---@class CS.UnityEngine.AsyncOperation : CS.UnityEngine.YieldInstruction
CS.UnityEngine.AsyncOperation = {}

---@property readonly CS.UnityEngine.AsyncOperation.isDone : CS.System.Boolean
CS.UnityEngine.AsyncOperation.isDone = nil

---@property readonly CS.UnityEngine.AsyncOperation.progress : CS.System.Single
CS.UnityEngine.AsyncOperation.progress = nil

---@property readwrite CS.UnityEngine.AsyncOperation.priority : CS.System.Int32
CS.UnityEngine.AsyncOperation.priority = nil

---@property readwrite CS.UnityEngine.AsyncOperation.allowSceneActivation : CS.System.Boolean
CS.UnityEngine.AsyncOperation.allowSceneActivation = nil

---@return CS.UnityEngine.AsyncOperation
function CS.UnityEngine.AsyncOperation()
end

---@param value : CS.System.Action
function CS.UnityEngine.AsyncOperation:add_completed(value)
end

---@param value : CS.System.Action
function CS.UnityEngine.AsyncOperation:remove_completed(value)
end