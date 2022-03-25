---@class CS.JetBrains.Annotations.ContractAnnotationAttribute : CS.System.Attribute
CS.JetBrains.Annotations.ContractAnnotationAttribute = {}

---@property readonly CS.JetBrains.Annotations.ContractAnnotationAttribute.Contract : CS.System.String
CS.JetBrains.Annotations.ContractAnnotationAttribute.Contract = nil

---@property readonly CS.JetBrains.Annotations.ContractAnnotationAttribute.ForceFullStates : CS.System.Boolean
CS.JetBrains.Annotations.ContractAnnotationAttribute.ForceFullStates = nil

---@param contract : CS.System.String
---@return CS.JetBrains.Annotations.ContractAnnotationAttribute
function CS.JetBrains.Annotations.ContractAnnotationAttribute(contract)
end

---@param contract : CS.System.String
---@param forceFullStates : CS.System.Boolean
---@return CS.JetBrains.Annotations.ContractAnnotationAttribute
function CS.JetBrains.Annotations.ContractAnnotationAttribute(contract, forceFullStates)
end