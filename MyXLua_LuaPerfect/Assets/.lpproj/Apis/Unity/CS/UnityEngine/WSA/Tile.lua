---@class CS.UnityEngine.WSA.Tile : CS.System.Object
CS.UnityEngine.WSA.Tile = {}

---@property readonly CS.UnityEngine.WSA.Tile.main : CS.UnityEngine.WSA.Tile
CS.UnityEngine.WSA.Tile.main = nil

---@property readonly CS.UnityEngine.WSA.Tile.id : CS.System.String
CS.UnityEngine.WSA.Tile.id = nil

---@property readonly CS.UnityEngine.WSA.Tile.hasUserConsent : CS.System.Boolean
CS.UnityEngine.WSA.Tile.hasUserConsent = nil

---@property readonly CS.UnityEngine.WSA.Tile.exists : CS.System.Boolean
CS.UnityEngine.WSA.Tile.exists = nil

---@param templ : CS.UnityEngine.WSA.TileTemplate
---@return CS.System.String
function CS.UnityEngine.WSA.Tile.GetTemplate(templ)
end

---@param xml : CS.System.String
function CS.UnityEngine.WSA.Tile:Update(xml)
end

---@param medium : CS.System.String
---@param wide : CS.System.String
---@param large : CS.System.String
---@param text : CS.System.String
function CS.UnityEngine.WSA.Tile:Update(medium, wide, large, text)
end

---@param uri : CS.System.String
---@param interval : CS.System.Single
function CS.UnityEngine.WSA.Tile:PeriodicUpdate(uri, interval)
end

function CS.UnityEngine.WSA.Tile:StopPeriodicUpdate()
end

---@param image : CS.System.String
function CS.UnityEngine.WSA.Tile:UpdateBadgeImage(image)
end

---@param number : CS.System.Single
function CS.UnityEngine.WSA.Tile:UpdateBadgeNumber(number)
end

function CS.UnityEngine.WSA.Tile:RemoveBadge()
end

---@param uri : CS.System.String
---@param interval : CS.System.Single
function CS.UnityEngine.WSA.Tile:PeriodicBadgeUpdate(uri, interval)
end

function CS.UnityEngine.WSA.Tile:StopPeriodicBadgeUpdate()
end

---@param tileId : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.WSA.Tile.Exists(tileId)
end

---@param data : CS.UnityEngine.WSA.SecondaryTileData
---@return CS.UnityEngine.WSA.Tile
function CS.UnityEngine.WSA.Tile.CreateOrUpdateSecondary(data)
end

---@param data : CS.UnityEngine.WSA.SecondaryTileData
---@param pos : CS.UnityEngine.Vector2
---@return CS.UnityEngine.WSA.Tile
function CS.UnityEngine.WSA.Tile.CreateOrUpdateSecondary(data, pos)
end

---@param data : CS.UnityEngine.WSA.SecondaryTileData
---@param area : CS.UnityEngine.Rect
---@return CS.UnityEngine.WSA.Tile
function CS.UnityEngine.WSA.Tile.CreateOrUpdateSecondary(data, area)
end

---@param tileId : CS.System.String
---@return CS.UnityEngine.WSA.Tile
function CS.UnityEngine.WSA.Tile.GetSecondary(tileId)
end

---@return CS.UnityEngine.WSA.Tile[]
function CS.UnityEngine.WSA.Tile.GetSecondaries()
end

function CS.UnityEngine.WSA.Tile:Delete()
end

---@param tileId : CS.System.String
function CS.UnityEngine.WSA.Tile.DeleteSecondary(tileId)
end

---@param pos : CS.UnityEngine.Vector2
function CS.UnityEngine.WSA.Tile:Delete(pos)
end

---@param tileId : CS.System.String
---@param pos : CS.UnityEngine.Vector2
function CS.UnityEngine.WSA.Tile.DeleteSecondary(tileId, pos)
end

---@param area : CS.UnityEngine.Rect
function CS.UnityEngine.WSA.Tile:Delete(area)
end

---@param tileId : CS.System.String
---@param area : CS.UnityEngine.Rect
function CS.UnityEngine.WSA.Tile.DeleteSecondary(tileId, area)
end