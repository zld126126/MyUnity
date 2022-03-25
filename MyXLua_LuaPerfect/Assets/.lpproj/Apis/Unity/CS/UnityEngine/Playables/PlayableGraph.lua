---@class CS.UnityEngine.Playables.PlayableGraph : CS.System.ValueType
CS.UnityEngine.Playables.PlayableGraph = {}

---@param index : CS.System.Int32
---@return CS.UnityEngine.Playables.Playable
function CS.UnityEngine.Playables.PlayableGraph:GetRootPlayable(index)
end

---@param index : CS.System.Int32
---@return CS.UnityEngine.Playables.PlayableOutput
function CS.UnityEngine.Playables.PlayableGraph:GetOutput(index)
end

function CS.UnityEngine.Playables.PlayableGraph:Evaluate()
end

---@return CS.UnityEngine.Playables.PlayableGraph
function CS.UnityEngine.Playables.PlayableGraph.Create()
end

---@param name : CS.System.String
---@return CS.UnityEngine.Playables.PlayableGraph
function CS.UnityEngine.Playables.PlayableGraph.Create(name)
end

function CS.UnityEngine.Playables.PlayableGraph:Destroy()
end

---@return CS.System.Boolean
function CS.UnityEngine.Playables.PlayableGraph:IsValid()
end

---@return CS.System.Boolean
function CS.UnityEngine.Playables.PlayableGraph:IsPlaying()
end

---@return CS.System.Boolean
function CS.UnityEngine.Playables.PlayableGraph:IsDone()
end

function CS.UnityEngine.Playables.PlayableGraph:Play()
end

function CS.UnityEngine.Playables.PlayableGraph:Stop()
end

---@param deltaTime : CS.System.Single
function CS.UnityEngine.Playables.PlayableGraph:Evaluate(deltaTime)
end

---@return CS.UnityEngine.Playables.DirectorUpdateMode
function CS.UnityEngine.Playables.PlayableGraph:GetTimeUpdateMode()
end

---@param value : CS.UnityEngine.Playables.DirectorUpdateMode
function CS.UnityEngine.Playables.PlayableGraph:SetTimeUpdateMode(value)
end

---@return CS.UnityEngine.IExposedPropertyTable
function CS.UnityEngine.Playables.PlayableGraph:GetResolver()
end

---@param value : CS.UnityEngine.IExposedPropertyTable
function CS.UnityEngine.Playables.PlayableGraph:SetResolver(value)
end

---@return CS.System.Int32
function CS.UnityEngine.Playables.PlayableGraph:GetPlayableCount()
end

---@return CS.System.Int32
function CS.UnityEngine.Playables.PlayableGraph:GetRootPlayableCount()
end

---@return CS.System.Int32
function CS.UnityEngine.Playables.PlayableGraph:GetOutputCount()
end

---@return CS.System.String
function CS.UnityEngine.Playables.PlayableGraph:GetEditorName()
end