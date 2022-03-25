---@module CS.UnityEngine.Experimental.Playables
CS.UnityEngine.Experimental.Playables = {}

---@class CS.UnityEngine.Experimental.Playables.CameraPlayable : CS.System.ValueType
CS.UnityEngine.Experimental.Playables.CameraPlayable = {}

---@param graph : CS.UnityEngine.Playables.PlayableGraph
---@param camera : CS.UnityEngine.Camera
---@return CS.UnityEngine.Experimental.Playables.CameraPlayable
function CS.UnityEngine.Experimental.Playables.CameraPlayable.Create(graph, camera)
end

---@return CS.UnityEngine.Playables.PlayableHandle
function CS.UnityEngine.Experimental.Playables.CameraPlayable:GetHandle()
end

---@param playable : CS.UnityEngine.Experimental.Playables.CameraPlayable
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Experimental.Playables.CameraPlayable.op_Implicit(playable)
end

---@param playable : CS.UnityEngine.Playables.Playable
---@return CS.UnityEngine.Experimental.Playables.CameraPlayable
function CS.UnityEngine.Experimental.Playables.CameraPlayable.op_Explicit(playable)
end

---@param other : CS.UnityEngine.Experimental.Playables.CameraPlayable
---@return CS.System.Boolean
function CS.UnityEngine.Experimental.Playables.CameraPlayable:Equals(other)
end

---@return CS.UnityEngine.Camera
function CS.UnityEngine.Experimental.Playables.CameraPlayable:GetCamera()
end

---@param value : CS.UnityEngine.Camera
function CS.UnityEngine.Experimental.Playables.CameraPlayable:SetCamera(value)
end