---@class CS.JetBrains.Annotations.MeansImplicitUseAttribute : CS.System.Attribute
CS.JetBrains.Annotations.MeansImplicitUseAttribute = {}

---@property readonly CS.JetBrains.Annotations.MeansImplicitUseAttribute.UseKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
CS.JetBrains.Annotations.MeansImplicitUseAttribute.UseKindFlags = nil

---@property readonly CS.JetBrains.Annotations.MeansImplicitUseAttribute.TargetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
CS.JetBrains.Annotations.MeansImplicitUseAttribute.TargetFlags = nil

---@return CS.JetBrains.Annotations.MeansImplicitUseAttribute
function CS.JetBrains.Annotations.MeansImplicitUseAttribute()
end

---@param useKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
---@return CS.JetBrains.Annotations.MeansImplicitUseAttribute
function CS.JetBrains.Annotations.MeansImplicitUseAttribute(useKindFlags)
end

---@param targetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
---@return CS.JetBrains.Annotations.MeansImplicitUseAttribute
function CS.JetBrains.Annotations.MeansImplicitUseAttribute(targetFlags)
end

---@param useKindFlags : CS.JetBrains.Annotations.ImplicitUseKindFlags
---@param targetFlags : CS.JetBrains.Annotations.ImplicitUseTargetFlags
---@return CS.JetBrains.Annotations.MeansImplicitUseAttribute
function CS.JetBrains.Annotations.MeansImplicitUseAttribute(useKindFlags, targetFlags)
end