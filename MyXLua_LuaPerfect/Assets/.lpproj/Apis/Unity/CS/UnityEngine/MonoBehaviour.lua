---@class CS.UnityEngine.MonoBehaviour : CS.UnityEngine.Behaviour
CS.UnityEngine.MonoBehaviour = {}

---@property readwrite CS.UnityEngine.MonoBehaviour.useGUILayout : CS.System.Boolean
CS.UnityEngine.MonoBehaviour.useGUILayout = nil

---@property readwrite CS.UnityEngine.MonoBehaviour.runInEditMode : CS.System.Boolean
CS.UnityEngine.MonoBehaviour.runInEditMode = nil

---@return CS.UnityEngine.MonoBehaviour
function CS.UnityEngine.MonoBehaviour()
end

---@return CS.System.Boolean
function CS.UnityEngine.MonoBehaviour:IsInvoking()
end

function CS.UnityEngine.MonoBehaviour:CancelInvoke()
end

---@param methodName : CS.System.String
---@param time : CS.System.Single
function CS.UnityEngine.MonoBehaviour:Invoke(methodName, time)
end

---@param methodName : CS.System.String
---@param time : CS.System.Single
---@param repeatRate : CS.System.Single
function CS.UnityEngine.MonoBehaviour:InvokeRepeating(methodName, time, repeatRate)
end

---@param methodName : CS.System.String
function CS.UnityEngine.MonoBehaviour:CancelInvoke(methodName)
end

---@param methodName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.MonoBehaviour:IsInvoking(methodName)
end

---@param methodName : CS.System.String
---@return CS.UnityEngine.Coroutine
function CS.UnityEngine.MonoBehaviour:StartCoroutine(methodName)
end

---@param methodName : CS.System.String
---@param value : CS.System.Object
---@return CS.UnityEngine.Coroutine
function CS.UnityEngine.MonoBehaviour:StartCoroutine(methodName, value)
end

---@param routine : CS.System.Collections.IEnumerator
---@return CS.UnityEngine.Coroutine
function CS.UnityEngine.MonoBehaviour:StartCoroutine(routine)
end

---@param routine : CS.System.Collections.IEnumerator
---@return CS.UnityEngine.Coroutine
function CS.UnityEngine.MonoBehaviour:StartCoroutine_Auto(routine)
end

---@param routine : CS.System.Collections.IEnumerator
function CS.UnityEngine.MonoBehaviour:StopCoroutine(routine)
end

---@param routine : CS.UnityEngine.Coroutine
function CS.UnityEngine.MonoBehaviour:StopCoroutine(routine)
end

---@param methodName : CS.System.String
function CS.UnityEngine.MonoBehaviour:StopCoroutine(methodName)
end

function CS.UnityEngine.MonoBehaviour:StopAllCoroutines()
end

---@param message : CS.System.Object
function CS.UnityEngine.MonoBehaviour.print(message)
end