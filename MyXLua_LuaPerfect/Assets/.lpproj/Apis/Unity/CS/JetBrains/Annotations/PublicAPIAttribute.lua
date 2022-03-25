---@class CS.JetBrains.Annotations.PublicAPIAttribute : CS.System.Attribute
CS.JetBrains.Annotations.PublicAPIAttribute = {}

---@property readonly CS.JetBrains.Annotations.PublicAPIAttribute.Comment : CS.System.String
CS.JetBrains.Annotations.PublicAPIAttribute.Comment = nil

---@return CS.JetBrains.Annotations.PublicAPIAttribute
function CS.JetBrains.Annotations.PublicAPIAttribute()
end

---@param comment : CS.System.String
---@return CS.JetBrains.Annotations.PublicAPIAttribute
function CS.JetBrains.Annotations.PublicAPIAttribute(comment)
end