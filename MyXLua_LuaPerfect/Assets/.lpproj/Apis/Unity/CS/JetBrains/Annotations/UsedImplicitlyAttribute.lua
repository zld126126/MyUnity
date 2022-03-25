---@class CS.JetBrains.Annotations.UsedImplicitlyAttribute : CS.System.Attribute
CS.JetBrains.Annotations.UsedImplicitlyAttribute = {}

---@property readonly CS.JetBrains.Annotations.UsedImplicitlyAttribute.UseKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
CS.JetBrains.Annotations.UsedImplicitlyAttribute.UseKindFlags = nil

---@property readonly CS.JetBrains.Annotations.UsedImplicitlyAttribute.TargetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
CS.JetBrains.Annotations.UsedImplicitlyAttribute.TargetFlags = nil

---@return CS.JetBrains.Annotations.UsedImplicitlyAttribute
function CS.JetBrains.Annotations.UsedImplicitlyAttribute()
end

---@param useKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
---@return CS.JetBrains.Annotations.UsedImplicitlyAttribute
function CS.JetBrains.Annotations.UsedImplicitlyAttribute(useKindFlags)
end

---@param targetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
---@return CS.JetBrains.Annotations.UsedImplicitlyAttribute
function CS.JetBrains.Annotations.UsedImplicitlyAttribute(targetFlags)
end

---@param useKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
---@param targetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
---@return CS.JetBrains.Annotations.UsedImplicitlyAttribute
function CS.JetBrains.Annotations.UsedImplicitlyAttribute(useKindFlags, targetFlags)
end