---@class CS.UnityEngine.Random : CS.System.Object
CS.UnityEngine.Random = {}

---@property readwrite CS.UnityEngine.Random.state : CS.UnityEngine.State
CS.UnityEngine.Random.state = nil

---@property readonly CS.UnityEngine.Random.value : CS.System.Single
CS.UnityEngine.Random.value = nil

---@property readonly CS.UnityEngine.Random.insideUnitSphere : CS.UnityEngine.Vector3
CS.UnityEngine.Random.insideUnitSphere = nil

---@property readonly CS.UnityEngine.Random.insideUnitCircle : CS.UnityEngine.Vector2
CS.UnityEngine.Random.insideUnitCircle = nil

---@property readonly CS.UnityEngine.Random.onUnitSphere : CS.UnityEngine.Vector3
CS.UnityEngine.Random.onUnitSphere = nil

---@property readonly CS.UnityEngine.Random.rotation : CS.UnityEngine.Quaternion
CS.UnityEngine.Random.rotation = nil

---@property readonly CS.UnityEngine.Random.rotationUniform : CS.UnityEngine.Quaternion
CS.UnityEngine.Random.rotationUniform = nil

---@property readwrite CS.UnityEngine.Random.seed : CS.System.Int32
CS.UnityEngine.Random.seed = nil

---@param seed : CS.System.Int32
function CS.UnityEngine.Random.InitState(seed)
end

---@param minInclusive : CS.System.Single
---@param maxInclusive : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Random.Range(minInclusive, maxInclusive)
end

---@param minInclusive : CS.System.Int32
---@param maxExclusive : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Random.Range(minInclusive, maxExclusive)
end

---@param min : CS.System.Single
---@param max : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Random.RandomRange(min, max)
end

---@param min : CS.System.Int32
---@param max : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Random.RandomRange(min, max)
end

---@return CS.UnityEngine.Color
function CS.UnityEngine.Random.ColorHSV()
end

---@param hueMin : CS.System.Single
---@param hueMax : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Random.ColorHSV(hueMin, hueMax)
end

---@param hueMin : CS.System.Single
---@param hueMax : CS.System.Single
---@param saturationMin : CS.System.Single
---@param saturationMax : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Random.ColorHSV(hueMin, hueMax, saturationMin, saturationMax)
end

---@param hueMin : CS.System.Single
---@param hueMax : CS.System.Single
---@param saturationMin : CS.System.Single
---@param saturationMax : CS.System.Single
---@param valueMin : CS.System.Single
---@param valueMax : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Random.ColorHSV(hueMin, hueMax, saturationMin, saturationMax, valueMin, valueMax)
end

---@param hueMin : CS.System.Single
---@param hueMax : CS.System.Single
---@param saturationMin : CS.System.Single
---@param saturationMax : CS.System.Single
---@param valueMin : CS.System.Single
---@param valueMax : CS.System.Single
---@param alphaMin : CS.System.Single
---@param alphaMax : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Random.ColorHSV(hueMin, hueMax, saturationMin, saturationMax, valueMin, valueMax, alphaMin, alphaMax)
end