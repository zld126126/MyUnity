---@class CS.UnityEngine.UI.DefaultRuntimeFactory : CS.System.Object
CS.UnityEngine.UI.DefaultRuntimeFactory = {}

---@field public CS.UnityEngine.UI.DefaultRuntimeFactory.Default : CS.UnityEngine.UI.IFactoryControls
CS.UnityEngine.UI.DefaultRuntimeFactory.Default = nil

---@return CS.UnityEngine.UI.DefaultRuntimeFactory
function CS.UnityEngine.UI.DefaultRuntimeFactory()
end

---@param name : CS.System.String
---@param components : CS.System.Type[]
---@return CS.UnityEngine.GameObject
function CS.UnityEngine.UI.DefaultRuntimeFactory:CreateGameObject(name, components)
end