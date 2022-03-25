---@class CS.UnityEngine.Caching : CS.System.Object
CS.UnityEngine.Caching = {}

---@property readwrite CS.UnityEngine.Caching.compressionEnabled : CS.System.Boolean
CS.UnityEngine.Caching.compressionEnabled = nil

---@property readonly CS.UnityEngine.Caching.ready : CS.System.Boolean
CS.UnityEngine.Caching.ready = nil

---@property readonly CS.UnityEngine.Caching.spaceUsed : CS.System.Int32
CS.UnityEngine.Caching.spaceUsed = nil

---@property readonly CS.UnityEngine.Caching.spaceOccupied : CS.System.Int64
CS.UnityEngine.Caching.spaceOccupied = nil

---@property readonly CS.UnityEngine.Caching.spaceAvailable : CS.System.Int32
CS.UnityEngine.Caching.spaceAvailable = nil

---@property readonly CS.UnityEngine.Caching.spaceFree : CS.System.Int64
CS.UnityEngine.Caching.spaceFree = nil

---@property readwrite CS.UnityEngine.Caching.maximumAvailableDiskSpace : CS.System.Int64
CS.UnityEngine.Caching.maximumAvailableDiskSpace = nil

---@property readwrite CS.UnityEngine.Caching.expirationDelay : CS.System.Int32
CS.UnityEngine.Caching.expirationDelay = nil

---@property readonly CS.UnityEngine.Caching.cacheCount : CS.System.Int32
CS.UnityEngine.Caching.cacheCount = nil

---@property readonly CS.UnityEngine.Caching.defaultCache : CS.UnityEngine.Cache
CS.UnityEngine.Caching.defaultCache = nil

---@property readwrite CS.UnityEngine.Caching.currentCacheForWriting : CS.UnityEngine.Cache
CS.UnityEngine.Caching.currentCacheForWriting = nil

---@return CS.UnityEngine.Caching
function CS.UnityEngine.Caching()
end

---@return CS.System.Boolean
function CS.UnityEngine.Caching.ClearCache()
end

---@param expiration : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Caching.ClearCache(expiration)
end

---@param assetBundleName : CS.System.String
---@param hash : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Caching.ClearCachedVersion(assetBundleName, hash)
end

---@param assetBundleName : CS.System.String
---@param hash : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Caching.ClearOtherCachedVersions(assetBundleName, hash)
end

---@param assetBundleName : CS.System.String
---@return CS.System.Boolean
function CS.UnityEngine.Caching.ClearAllCachedVersions(assetBundleName)
end

---@param assetBundleName : CS.System.String
---@param outCachedVersions : CS.System.Collections.Generic.List
function CS.UnityEngine.Caching.GetCachedVersions(assetBundleName, outCachedVersions)
end

---@param url : CS.System.String
---@param version : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Caching.IsVersionCached(url, version)
end

---@param url : CS.System.String
---@param hash : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Caching.IsVersionCached(url, hash)
end

---@param cachedBundle : CS.UnityEngine.CachedAssetBundle
---@return CS.System.Boolean
function CS.UnityEngine.Caching.IsVersionCached(cachedBundle)
end

---@param url : CS.System.String
---@param version : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Caching.MarkAsUsed(url, version)
end

---@param url : CS.System.String
---@param hash : CS.UnityEngine.Hash128
---@return CS.System.Boolean
function CS.UnityEngine.Caching.MarkAsUsed(url, hash)
end

---@param cachedBundle : CS.UnityEngine.CachedAssetBundle
---@return CS.System.Boolean
function CS.UnityEngine.Caching.MarkAsUsed(cachedBundle)
end

---@param url : CS.System.String
---@param version : CS.System.Int32
function CS.UnityEngine.Caching.SetNoBackupFlag(url, version)
end

---@param url : CS.System.String
---@param hash : CS.UnityEngine.Hash128
function CS.UnityEngine.Caching.SetNoBackupFlag(url, hash)
end

---@param cachedBundle : CS.UnityEngine.CachedAssetBundle
function CS.UnityEngine.Caching.SetNoBackupFlag(cachedBundle)
end

---@param url : CS.System.String
---@param version : CS.System.Int32
function CS.UnityEngine.Caching.ResetNoBackupFlag(url, version)
end

---@param url : CS.System.String
---@param hash : CS.UnityEngine.Hash128
function CS.UnityEngine.Caching.ResetNoBackupFlag(url, hash)
end

---@param cachedBundle : CS.UnityEngine.CachedAssetBundle
function CS.UnityEngine.Caching.ResetNoBackupFlag(cachedBundle)
end

---@param url : CS.System.String
---@return CS.System.Int32
function CS.UnityEngine.Caching.GetVersionFromCache(url)
end

---@param cachePath : CS.System.String
---@return CS.UnityEngine.Cache
function CS.UnityEngine.Caching.AddCache(cachePath)
end

---@param cacheIndex : CS.System.Int32
---@return CS.UnityEngine.Cache
function CS.UnityEngine.Caching.GetCacheAt(cacheIndex)
end

---@param cachePath : CS.System.String
---@return CS.UnityEngine.Cache
function CS.UnityEngine.Caching.GetCacheByPath(cachePath)
end

---@param cachePaths : CS.System.Collections.Generic.List
function CS.UnityEngine.Caching.GetAllCachePaths(cachePaths)
end

---@param cache : CS.UnityEngine.Cache
---@return CS.System.Boolean
function CS.UnityEngine.Caching.RemoveCache(cache)
end

---@param src : CS.UnityEngine.Cache
---@param dst : CS.UnityEngine.Cache
function CS.UnityEngine.Caching.MoveCacheBefore(src, dst)
end

---@param src : CS.UnityEngine.Cache
---@param dst : CS.UnityEngine.Cache
function CS.UnityEngine.Caching.MoveCacheAfter(src, dst)
end

---@return CS.System.Boolean
function CS.UnityEngine.Caching.CleanCache()
end