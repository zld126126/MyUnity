---@class CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI : CS.System.ValueType
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI = {}

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.instanceID : CS.System.Int32
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.instanceID = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.cookieID : CS.System.Int32
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.cookieID = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.cookieScale : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.cookieScale = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.color : CS.UnityEngine.Experimental.GlobalIllumination.LinearColor
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.color = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.indirectColor : CS.UnityEngine.Experimental.GlobalIllumination.LinearColor
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.indirectColor = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.orientation : CS.UnityEngine.Quaternion
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.orientation = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.position : CS.UnityEngine.Vector3
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.position = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.range : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.range = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.coneAngle : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.coneAngle = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.innerConeAngle : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.innerConeAngle = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shape0 : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shape0 = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shape1 : CS.System.Single
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shape1 = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.type : CS.UnityEngine.Experimental.GlobalIllumination.LightType
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.type = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.mode : CS.UnityEngine.Experimental.GlobalIllumination.LightMode
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.mode = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shadow : CS.System.Byte
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.shadow = nil

---@field public CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.falloff : CS.UnityEngine.Experimental.GlobalIllumination.FalloffType
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI.falloff = nil

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.PointLight
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLight
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.DiscLight
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape
---@param cookie : CS.UnityEngine.Experimental.GlobalIllumination.Cookie
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light, cookie)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.PointLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.DiscLight
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param light : CS.UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(light)
end

---@param lightInstanceID : CS.System.Int32
function CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI:InitNoBake(lightInstanceID)
end