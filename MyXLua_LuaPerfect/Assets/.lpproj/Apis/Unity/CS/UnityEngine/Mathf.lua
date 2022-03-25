---@class CS.UnityEngine.Mathf : CS.System.ValueType
CS.UnityEngine.Mathf = {}

---@field public CS.UnityEngine.Mathf.PI : CS.System.Single
CS.UnityEngine.Mathf.PI = nil

---@field public CS.UnityEngine.Mathf.Infinity : CS.System.Single
CS.UnityEngine.Mathf.Infinity = nil

---@field public CS.UnityEngine.Mathf.NegativeInfinity : CS.System.Single
CS.UnityEngine.Mathf.NegativeInfinity = nil

---@field public CS.UnityEngine.Mathf.Deg2Rad : CS.System.Single
CS.UnityEngine.Mathf.Deg2Rad = nil

---@field public CS.UnityEngine.Mathf.Rad2Deg : CS.System.Single
CS.UnityEngine.Mathf.Rad2Deg = nil

---@field public CS.UnityEngine.Mathf.Epsilon : CS.System.Single
CS.UnityEngine.Mathf.Epsilon = nil

---@param value : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.ClosestPowerOfTwo(value)
end

---@param value : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Mathf.IsPowerOfTwo(value)
end

---@param value : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.NextPowerOfTwo(value)
end

---@param value : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.GammaToLinearSpace(value)
end

---@param value : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.LinearToGammaSpace(value)
end

---@param kelvin : CS.System.Single
---@return CS.UnityEngine.Color
function CS.UnityEngine.Mathf.CorrelatedColorTemperatureToRGB(kelvin)
end

---@param val : CS.System.Single
---@return CS.System.UInt16
function CS.UnityEngine.Mathf.FloatToHalf(val)
end

---@param val : CS.System.UInt16
---@return CS.System.Single
function CS.UnityEngine.Mathf.HalfToFloat(val)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.PerlinNoise(x, y)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Sin(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Cos(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Tan(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Asin(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Acos(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Atan(f)
end

---@param y : CS.System.Single
---@param x : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Atan2(y, x)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Sqrt(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Abs(f)
end

---@param value : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Abs(value)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Min(a, b)
end

---@param values : CS.System.Single[]
---@return CS.System.Single
function CS.UnityEngine.Mathf.Min(values)
end

---@param a : CS.System.Int32
---@param b : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Min(a, b)
end

---@param values : CS.System.Int32[]
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Min(values)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Max(a, b)
end

---@param values : CS.System.Single[]
---@return CS.System.Single
function CS.UnityEngine.Mathf.Max(values)
end

---@param a : CS.System.Int32
---@param b : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Max(a, b)
end

---@param values : CS.System.Int32[]
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Max(values)
end

---@param f : CS.System.Single
---@param p : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Pow(f, p)
end

---@param power : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Exp(power)
end

---@param f : CS.System.Single
---@param p : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Log(f, p)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Log(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Log10(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Ceil(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Floor(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Round(f)
end

---@param f : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Mathf.CeilToInt(f)
end

---@param f : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Mathf.FloorToInt(f)
end

---@param f : CS.System.Single
---@return CS.System.Int32
function CS.UnityEngine.Mathf.RoundToInt(f)
end

---@param f : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Sign(f)
end

---@param value : CS.System.Single
---@param min : CS.System.Single
---@param max : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Clamp(value, min, max)
end

---@param value : CS.System.Int32
---@param min : CS.System.Int32
---@param max : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Mathf.Clamp(value, min, max)
end

---@param value : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Clamp01(value)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@param t : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Lerp(a, b, t)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@param t : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.LerpUnclamped(a, b, t)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@param t : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.LerpAngle(a, b, t)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param maxDelta : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.MoveTowards(current, target, maxDelta)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param maxDelta : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.MoveTowardsAngle(current, target, maxDelta)
end

---@param from : CS.System.Single
---@param to : CS.System.Single
---@param t : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothStep(from, to, t)
end

---@param value : CS.System.Single
---@param absmax : CS.System.Single
---@param gamma : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Gamma(value, absmax, gamma)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@return CS.System.Boolean
function CS.UnityEngine.Mathf.Approximately(a, b)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@param deltaTime : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@param currentVelocity : CS.System.Single
---@param smoothTime : CS.System.Single
---@param maxSpeed : CS.System.Single
---@param deltaTime : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param t : CS.System.Single
---@param length : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.Repeat(t, length)
end

---@param t : CS.System.Single
---@param length : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.PingPong(t, length)
end

---@param a : CS.System.Single
---@param b : CS.System.Single
---@param value : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.InverseLerp(a, b, value)
end

---@param current : CS.System.Single
---@param target : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Mathf.DeltaAngle(current, target)
end