---@class CS.UnityEngine.RectOffset : CS.System.Object
CS.UnityEngine.RectOffset = {}

---@property readwrite CS.UnityEngine.RectOffset.left : CS.System.Int32
CS.UnityEngine.RectOffset.left = nil

---@property readwrite CS.UnityEngine.RectOffset.right : CS.System.Int32
CS.UnityEngine.RectOffset.right = nil

---@property readwrite CS.UnityEngine.RectOffset.top : CS.System.Int32
CS.UnityEngine.RectOffset.top = nil

---@property readwrite CS.UnityEngine.RectOffset.bottom : CS.System.Int32
CS.UnityEngine.RectOffset.bottom = nil

---@property readonly CS.UnityEngine.RectOffset.horizontal : CS.System.Int32
CS.UnityEngine.RectOffset.horizontal = nil

---@property readonly CS.UnityEngine.RectOffset.vertical : CS.System.Int32
CS.UnityEngine.RectOffset.vertical = nil

---@return CS.UnityEngine.RectOffset
function CS.UnityEngine.RectOffset()
end

---@param left : CS.System.Int32
---@param right : CS.System.Int32
---@param top : CS.System.Int32
---@param bottom : CS.System.Int32
---@return CS.UnityEngine.RectOffset
function CS.UnityEngine.RectOffset(left, right, top, bottom)
end

---@return CS.System.String
function CS.UnityEngine.RectOffset:ToString()
end

---@param format : CS.System.String
---@return CS.System.String
function CS.UnityEngine.RectOffset:ToString(format)
end

---@param format : CS.System.String
---@param formatProvider : CS.System.IFormatProvider
---@return CS.System.String
function CS.UnityEngine.RectOffset:ToString(format, formatProvider)
end

---@param rect : CS.UnityEngine.Rect
---@return CS.UnityEngine.Rect
function CS.UnityEngine.RectOffset:Add(rect)
end

---@param rect : CS.UnityEngine.Rect
---@return CS.UnityEngine.Rect
function CS.UnityEngine.RectOffset:Remove(rect)
end