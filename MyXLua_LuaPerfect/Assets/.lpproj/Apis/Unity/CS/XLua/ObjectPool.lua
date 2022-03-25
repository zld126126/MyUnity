---@class CS.XLua.ObjectPool : CS.System.Object
CS.XLua.ObjectPool = {}

---@property readonly CS.XLua.ObjectPool.Item : CS.System.Object
CS.XLua.ObjectPool.Item = nil

---@return CS.XLua.ObjectPool
function CS.XLua.ObjectPool()
end

function CS.XLua.ObjectPool:Clear()
end

---@param obj : CS.System.Object
---@return CS.System.Int32
function CS.XLua.ObjectPool:Add(obj)
end

---@param index : CS.System.Int32
---@param obj : CS.System.Object
---@return CS.System.Boolean
function CS.XLua.ObjectPool:TryGetValue(index, obj)
end

---@param index : CS.System.Int32
---@return CS.System.Object
function CS.XLua.ObjectPool:Get(index)
end

---@param index : CS.System.Int32
---@return CS.System.Object
function CS.XLua.ObjectPool:Remove(index)
end

---@param index : CS.System.Int32
---@param o : CS.System.Object
---@return CS.System.Object
function CS.XLua.ObjectPool:Replace(index, o)
end

---@param check_pos : CS.System.Int32
---@param max_check : CS.System.Int32
---@param checker : CS.System.Func
---@param reverse_map : CS.System.Collections.Generic.Dictionary
---@return CS.System.Int32
function CS.XLua.ObjectPool:Check(check_pos, max_check, checker, reverse_map)
end