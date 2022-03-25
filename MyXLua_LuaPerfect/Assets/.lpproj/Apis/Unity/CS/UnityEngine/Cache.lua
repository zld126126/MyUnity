---@class CS.UnityEngine.Cache : CS.System.ValueType
CS.UnityEngine.Cache = {}

---@property readonly CS.UnityEngine.Cache.valid : CS.System.Boolean
CS.UnityEngine.Cache.valid = nil

---@property readonly CS.UnityEngine.Cache.ready : CS.System.Boolean
CS.UnityEngine.Cache.ready = nil

---@property readonly CS.UnityEngine.Cache.readOnly : CS.System.Boolean
CS.UnityEngine.Cache.readOnly = nil

---@property readonly CS.UnityEngine.Cache.path : CS.System.String
CS.UnityEngine.Cache.path = nil

---@property readonly CS.UnityEngine.Cache.index : CS.System.Int32
CS.UnityEngine.Cache.index = nil

---@property readonly CS.UnityEngine.Cache.spaceFree : CS.System.Int64
CS.UnityEngine.Cache.spaceFree = nil

---@property readwrite CS.UnityEngine.Cache.maximumAvailableStorageSpace : CS.System.Int64
CS.UnityEngine.Cache.maximumAvailableStorageSpace = nil

---@property readonly CS.UnityEngine.Cache.spaceOccupied : CS.System.Int64
CS.UnityEngine.Cache.spaceOccupied = nil

---@property readwrite CS.UnityEngine.Cache.expirationDelay : CS.System.Int32
CS.UnityEngine.Cache.expirationDelay = nil

---@param lhs : CS.UnityEngine.Cache
---@param rhs : CS.UnityEngine.Cache
---@return CS.System.Boolean
function CS.UnityEngine.Cache.op_Equality(lhs, rhs)
end

---@param lhs : CS.UnityEngine.Cache
---@param rhs : CS.UnityEngine.Cache
---@return CS.System.Boolean
function CS.UnityEngine.Cache.op_Inequality(lhs, rhs)
end

---@return CS.System.Int32
function CS.UnityEngine.Cache:GetHashCode()
end

---@param other : CS.System.Object
---@return CS.System.Boolean
function CS.UnityEngine.Cache:Equals(other)
end

---@param other : CS.UnityEngine.Cache
---@return CS.System.Boolean
function CS.UnityEngine.Cache:Equals(other)
end

---@return CS.System.Boolean
function CS.UnityEngine.Cache:ClearCache()
end

---@param expiration : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Cache:ClearCache(expiration)
end