---@class CS.XLua.ObjectTranslatorPool : CS.System.Object
CS.XLua.ObjectTranslatorPool = {}

---@property readonly CS.XLua.ObjectTranslatorPool.Instance : CS.XLua.ObjectTranslatorPool
CS.XLua.ObjectTranslatorPool.Instance = nil

---@return CS.XLua.ObjectTranslatorPool
function CS.XLua.ObjectTranslatorPool()
end

---@param L : CS.System.IntPtr
---@return CS.XLua.ObjectTranslator
function CS.XLua.ObjectTranslatorPool.FindTranslator(L)
end

---@param L : CS.System.IntPtr
---@param translator : CS.XLua.ObjectTranslator
function CS.XLua.ObjectTranslatorPool:Add(L, translator)
end

---@param L : CS.System.IntPtr
---@return CS.XLua.ObjectTranslator
function CS.XLua.ObjectTranslatorPool:Find(L)
end

---@param L : CS.System.IntPtr
function CS.XLua.ObjectTranslatorPool:Remove(L)
end