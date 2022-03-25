---@module CS.UnityEngine.Assertions
CS.UnityEngine.Assertions = {}

---@class CS.UnityEngine.Assertions.Assert : CS.System.Object
CS.UnityEngine.Assertions.Assert = {}

---@field public CS.UnityEngine.Assertions.Assert.raiseExceptions : CS.System.Boolean
CS.UnityEngine.Assertions.Assert.raiseExceptions = nil

---@param obj1 : CS.System.Object
---@param obj2 : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Assertions.Assert.Equals(obj1, obj2)
end

---@param obj1 : CS.System.Object
---@param obj2 : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Assertions.Assert.ReferenceEquals(obj1, obj2)
end

---@param condition : CS.System.Boolean
function CS.UnityEngine.Assertions.Assert.IsTrue(condition)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.IsTrue(condition, message)
end

---@param condition : CS.System.Boolean
function CS.UnityEngine.Assertions.Assert.IsFalse(condition)
end

---@param condition : CS.System.Boolean
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.IsFalse(condition, message)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
function CS.UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual, message)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param tolerance : CS.System.Single
function CS.UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual, tolerance)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param tolerance : CS.System.Single
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual, tolerance, message)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
function CS.UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual, message)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param tolerance : CS.System.Single
function CS.UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual, tolerance)
end

---@param expected : CS.System.Single
---@param actual : CS.System.Single
---@param tolerance : CS.System.Single
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual, tolerance, message)
end

---@param expected : CS.UnityEngine.Object
---@param actual : CS.UnityEngine.Object
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.UnityEngine.Object
---@param actual : CS.UnityEngine.Object
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param value : CS.UnityEngine.Object
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.IsNull(value, message)
end

---@param value : CS.UnityEngine.Object
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.IsNotNull(value, message)
end

---@param expected : CS.System.SByte
---@param actual : CS.System.SByte
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.SByte
---@param actual : CS.System.SByte
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.SByte
---@param actual : CS.System.SByte
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.SByte
---@param actual : CS.System.SByte
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.Byte
---@param actual : CS.System.Byte
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.Byte
---@param actual : CS.System.Byte
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.Byte
---@param actual : CS.System.Byte
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.Byte
---@param actual : CS.System.Byte
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.Char
---@param actual : CS.System.Char
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.Char
---@param actual : CS.System.Char
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.Char
---@param actual : CS.System.Char
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.Char
---@param actual : CS.System.Char
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.Int16
---@param actual : CS.System.Int16
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.Int16
---@param actual : CS.System.Int16
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.Int16
---@param actual : CS.System.Int16
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.Int16
---@param actual : CS.System.Int16
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.UInt16
---@param actual : CS.System.UInt16
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.UInt16
---@param actual : CS.System.UInt16
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.UInt16
---@param actual : CS.System.UInt16
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.UInt16
---@param actual : CS.System.UInt16
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.Int32
---@param actual : CS.System.Int32
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.Int32
---@param actual : CS.System.Int32
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.Int32
---@param actual : CS.System.Int32
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.Int32
---@param actual : CS.System.Int32
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.UInt32
---@param actual : CS.System.UInt32
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.UInt32
---@param actual : CS.System.UInt32
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.UInt32
---@param actual : CS.System.UInt32
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.UInt32
---@param actual : CS.System.UInt32
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.Int64
---@param actual : CS.System.Int64
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.Int64
---@param actual : CS.System.Int64
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.Int64
---@param actual : CS.System.Int64
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.Int64
---@param actual : CS.System.Int64
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end

---@param expected : CS.System.UInt64
---@param actual : CS.System.UInt64
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual)
end

---@param expected : CS.System.UInt64
---@param actual : CS.System.UInt64
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreEqual(expected, actual, message)
end

---@param expected : CS.System.UInt64
---@param actual : CS.System.UInt64
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual)
end

---@param expected : CS.System.UInt64
---@param actual : CS.System.UInt64
---@param message : CS.System.String
function CS.UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message)
end