---@class CS.UnityEngine.U2D.SpriteAtlas : CS.UnityEngine.Object
CS.UnityEngine.U2D.SpriteAtlas = {}

---@property readonly CS.UnityEngine.U2D.SpriteAtlas.isVariant : CS.System.Boolean
CS.UnityEngine.U2D.SpriteAtlas.isVariant = nil

---@property readonly CS.UnityEngine.U2D.SpriteAtlas.tag : CS.System.String
CS.UnityEngine.U2D.SpriteAtlas.tag = nil

---@property readonly CS.UnityEngine.U2D.SpriteAtlas.spriteCount : CS.System.Int32
CS.UnityEngine.U2D.SpriteAtlas.spriteCount = nil

---@return CS.UnityEngine.U2D.SpriteAtlas
function CS.UnityEngine.U2D.SpriteAtlas()
end

---@param sprite : CS.UnityEngine.Sprite
---@return CS.System.Boolean
function CS.UnityEngine.U2D.SpriteAtlas:CanBindTo(sprite)
end

---@return CS.System.Boolean
function CS.UnityEngine.U2D.SpriteAtlas:IsPlaceholder()
end

---@param name : CS.System.String
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.U2D.SpriteAtlas:GetSprite(name)
end

---@param sprites : CS.UnityEngine.Sprite[]
---@return CS.System.Int32
function CS.UnityEngine.U2D.SpriteAtlas:GetSprites(sprites)
end

---@param sprites : CS.UnityEngine.Sprite[]
---@param name : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.U2D.SpriteAtlas:GetSprites(sprites, name)
end