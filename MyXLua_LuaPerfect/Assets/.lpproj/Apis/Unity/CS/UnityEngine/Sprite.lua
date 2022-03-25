---@class CS.UnityEngine.Sprite : CS.UnityEngine.Object
CS.UnityEngine.Sprite = {}

---@property readonly CS.UnityEngine.Sprite.bounds : CS.UnityEngine.Bounds
CS.UnityEngine.Sprite.bounds = nil

---@property readonly CS.UnityEngine.Sprite.rect : CS.UnityEngine.Rect
CS.UnityEngine.Sprite.rect = nil

---@property readonly CS.UnityEngine.Sprite.border : CS.UnityEngine.Vector4
CS.UnityEngine.Sprite.border = nil

---@property readonly CS.UnityEngine.Sprite.texture : CS.UnityEngine.Texture2D
CS.UnityEngine.Sprite.texture = nil

---@property readonly CS.UnityEngine.Sprite.pixelsPerUnit : CS.System.Single
CS.UnityEngine.Sprite.pixelsPerUnit = nil

---@property readonly CS.UnityEngine.Sprite.spriteAtlasTextureScale : CS.System.Single
CS.UnityEngine.Sprite.spriteAtlasTextureScale = nil

---@property readonly CS.UnityEngine.Sprite.associatedAlphaSplitTexture : CS.UnityEngine.Texture2D
CS.UnityEngine.Sprite.associatedAlphaSplitTexture = nil

---@property readonly CS.UnityEngine.Sprite.pivot : CS.UnityEngine.Vector2
CS.UnityEngine.Sprite.pivot = nil

---@property readonly CS.UnityEngine.Sprite.isUsingPlaceholder : CS.System.Boolean
CS.UnityEngine.Sprite.isUsingPlaceholder = nil

---@property readonly CS.UnityEngine.Sprite.packed : CS.System.Boolean
CS.UnityEngine.Sprite.packed = nil

---@property readonly CS.UnityEngine.Sprite.packingMode : CS.UnityEngine.SpritePackingMode
CS.UnityEngine.Sprite.packingMode = nil

---@property readonly CS.UnityEngine.Sprite.packingRotation : CS.UnityEngine.SpritePackingRotation
CS.UnityEngine.Sprite.packingRotation = nil

---@property readonly CS.UnityEngine.Sprite.textureRect : CS.UnityEngine.Rect
CS.UnityEngine.Sprite.textureRect = nil

---@property readonly CS.UnityEngine.Sprite.textureRectOffset : CS.UnityEngine.Vector2
CS.UnityEngine.Sprite.textureRectOffset = nil

---@property readonly CS.UnityEngine.Sprite.vertices : CS.UnityEngine.Vector2[]
CS.UnityEngine.Sprite.vertices = nil

---@property readonly CS.UnityEngine.Sprite.triangles : CS.System.UInt16[]
CS.UnityEngine.Sprite.triangles = nil

---@property readonly CS.UnityEngine.Sprite.uv : CS.UnityEngine.Vector2[]
CS.UnityEngine.Sprite.uv = nil

---@return CS.System.Int32
function CS.UnityEngine.Sprite:GetPhysicsShapeCount()
end

---@param shapeIdx : CS.System.Int32
---@return CS.System.Int32
function CS.UnityEngine.Sprite:GetPhysicsShapePointCount(shapeIdx)
end

---@param shapeIdx : CS.System.Int32
---@param physicsShape : CS.System.Collections.Generic.List
---@return CS.System.Int32
function CS.UnityEngine.Sprite:GetPhysicsShape(shapeIdx, physicsShape)
end

---@param physicsShapes : CS.System.Collections.Generic.IList
function CS.UnityEngine.Sprite:OverridePhysicsShape(physicsShapes)
end

---@param vertices : CS.UnityEngine.Vector2[]
---@param triangles : CS.System.UInt16[]
function CS.UnityEngine.Sprite:OverrideGeometry(vertices, triangles)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@param pixelsPerUnit : CS.System.Single
---@param extrude : CS.System.UInt32
---@param meshType : CS.UnityEngine.SpriteMeshType
---@param border : CS.UnityEngine.Vector4
---@param generateFallbackPhysicsShape : CS.System.Boolean
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border, generateFallbackPhysicsShape)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@param pixelsPerUnit : CS.System.Single
---@param extrude : CS.System.UInt32
---@param meshType : CS.UnityEngine.SpriteMeshType
---@param border : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@param pixelsPerUnit : CS.System.Single
---@param extrude : CS.System.UInt32
---@param meshType : CS.UnityEngine.SpriteMeshType
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@param pixelsPerUnit : CS.System.Single
---@param extrude : CS.System.UInt32
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@param pixelsPerUnit : CS.System.Single
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot, pixelsPerUnit)
end

---@param texture : CS.UnityEngine.Texture2D
---@param rect : CS.UnityEngine.Rect
---@param pivot : CS.UnityEngine.Vector2
---@return CS.UnityEngine.Sprite
function CS.UnityEngine.Sprite.Create(texture, rect, pivot)
end