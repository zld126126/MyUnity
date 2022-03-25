---@class CS.UnityEngine.Assertions.AssertionMessageUtil : CS.System.Object
CS.UnityEngine.Assertions.AssertionMessageUtil = {}

---@return CS.UnityEngine.Assertions.AssertionMessageUtil
function CS.UnityEngine.Assertions.AssertionMessageUtil()
end

---@param failureMessage : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Assertions.AssertionMessageUtil.GetMessage(failureMessage)
end

---@param failureMessage : CS.System.String
---@param expected : CS.System.String
---@return CS.System.String
function CS.UnityEngine.Assertions.AssertionMessageUtil.GetMessage(failureMessage, expected)
end

---@param actual : CS.System.Object
---@param expected : CS.System.Object
---@param expectEqual : CS.System.Boolean
---@return CS.System.String
function CS.UnityEngine.Assertions.AssertionMessageUtil.GetEqualityMessage(actual, expected, expectEqual)
end

---@param value : CS.System.Object
---@param expectNull : CS.System.Boolean
---@return CS.System.String
function CS.UnityEngine.Assertions.AssertionMessageUtil.NullFailureMessage(value, expectNull)
end

---@param expected : CS.System.Boolean
---@return CS.System.String
function CS.UnityEngine.Assertions.AssertionMessageUtil.BooleanFailureMessage(expected)
end