---@class CS.XLua.TemplateEngine.LuaTemplate : CS.System.Object
CS.XLua.TemplateEngine.LuaTemplate = {}

---@return CS.XLua.TemplateEngine.LuaTemplate
function CS.XLua.TemplateEngine.LuaTemplate()
end

---@param chunks : CS.System.Collections.Generic.List
---@return CS.System.String
function CS.XLua.TemplateEngine.LuaTemplate.ComposeCode(chunks)
end

---@param luaenv : CS.XLua.LuaEnv
---@param snippet : CS.System.String
---@return CS.XLua.LuaFunction
function CS.XLua.TemplateEngine.LuaTemplate.Compile(luaenv, snippet)
end

---@param compiledTemplate : CS.XLua.LuaFunction
---@param parameters : CS.XLua.LuaTable
---@return CS.System.String
function CS.XLua.TemplateEngine.LuaTemplate.Execute(compiledTemplate, parameters)
end

---@param compiledTemplate : CS.XLua.LuaFunction
---@return CS.System.String
function CS.XLua.TemplateEngine.LuaTemplate.Execute(compiledTemplate)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.TemplateEngine.LuaTemplate.Compile(L)
end

---@param L : CS.System.IntPtr
---@return CS.System.Int32
function CS.XLua.TemplateEngine.LuaTemplate.Execute(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.TemplateEngine.LuaTemplate.OpenLib(L)
end