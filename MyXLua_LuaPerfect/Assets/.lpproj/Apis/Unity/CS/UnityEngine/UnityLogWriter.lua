---@class CS.UnityEngine.UnityLogWriter : CS.System.IO.TextWriter
CS.UnityEngine.UnityLogWriter = {}

---@property readonly CS.UnityEngine.UnityLogWriter.Encoding : CS.System.Text.Encoding
CS.UnityEngine.UnityLogWriter.Encoding = nil

---@return CS.UnityEngine.UnityLogWriter
function CS.UnityEngine.UnityLogWriter()
end

---@param s : CS.System.String
function CS.UnityEngine.UnityLogWriter.WriteStringToUnityLog(s)
end

function CS.UnityEngine.UnityLogWriter.Init()
end

---@param value : CS.System.Char
function CS.UnityEngine.UnityLogWriter:Write(value)
end

---@param s : CS.System.String
function CS.UnityEngine.UnityLogWriter:Write(s)
end

---@param buffer : CS.System.Char[]
---@param index : CS.System.Int32
---@param count : CS.System.Int32
function CS.UnityEngine.UnityLogWriter:Write(buffer, index, count)
end