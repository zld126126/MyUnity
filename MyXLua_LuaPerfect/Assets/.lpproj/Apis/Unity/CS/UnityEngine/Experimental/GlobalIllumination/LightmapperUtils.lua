---@class CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils : CS.System.Object
CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = {}

---@param baketype : CS.UnityEngine.LightmapBakeType
---@return CS.UnityEngine.Experimental.GlobalIllumination.LightMode
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(baketype)
end

---@param l : CS.UnityEngine.Light
---@return CS.UnityEngine.Experimental.GlobalIllumination.LinearColor
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractIndirect(l)
end

---@param l : CS.UnityEngine.Light
---@return CS.System.Single
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractInnerCone(l)
end

---@param l : CS.UnityEngine.Light
---@param dir : CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, dir)
end

---@param l : CS.UnityEngine.Light
---@param point : CS.UnityEngine.Experimental.GlobalIllumination.PointLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, point)
end

---@param l : CS.UnityEngine.Light
---@param spot : CS.UnityEngine.Experimental.GlobalIllumination.SpotLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, spot)
end

---@param l : CS.UnityEngine.Light
---@param rect : CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, rect)
end

---@param l : CS.UnityEngine.Light
---@param disc : CS.UnityEngine.Experimental.GlobalIllumination.DiscLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, disc)
end

---@param l : CS.UnityEngine.Light
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, cookie)
end