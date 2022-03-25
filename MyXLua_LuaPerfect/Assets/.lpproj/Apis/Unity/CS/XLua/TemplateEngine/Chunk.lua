---@class CS.XLua.TemplateEngine.Chunk : CS.System.Object
CS.XLua.TemplateEngine.Chunk = {}

---@property readwrite CS.XLua.TemplateEngine.Chunk.Type : CS.XLua.TemplateEngine.TokenType
CS.XLua.TemplateEngine.Chunk.Type = nil

---@property readwrite CS.XLua.TemplateEngine.Chunk.Text : CS.System.String
CS.XLua.TemplateEngine.Chunk.Text = nil

---@param type : CS.XLua.TemplateEngine.TokenType
---@param text : CS.System.String
---@return CS.XLua.TemplateEngine.Chunk
function CS.XLua.TemplateEngine.Chunk(type, text)
end