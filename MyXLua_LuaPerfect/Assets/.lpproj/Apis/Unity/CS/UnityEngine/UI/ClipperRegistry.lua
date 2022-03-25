---@class CS.UnityEngine.UI.ClipperRegistry : CS.System.Object
CS.UnityEngine.UI.ClipperRegistry = {}

---@property readonly CS.UnityEngine.UI.ClipperRegistry.instance : CS.UnityEngine.UI.ClipperRegistry
CS.UnityEngine.UI.ClipperRegistry.instance = nil

function CS.UnityEngine.UI.ClipperRegistry:Cull()
end

---@param c : CS.UnityEngine.UI.IClipper
function CS.UnityEngine.UI.ClipperRegistry.Register(c)
end

---@param c : CS.UnityEngine.UI.IClipper
function CS.UnityEngine.UI.ClipperRegistry.Unregister(c)
end