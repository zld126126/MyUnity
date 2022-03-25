---@class CS.UnityEngine.UI.MaskUtilities : CS.System.Object
CS.UnityEngine.UI.MaskUtilities = {}

---@return CS.UnityEngine.UI.MaskUtilities
function CS.UnityEngine.UI.MaskUtilities()
end

---@param mask : CS.UnityEngine.Component
function CS.UnityEngine.UI.MaskUtilities.Notify2DMaskStateChanged(mask)
end

---@param mask : CS.UnityEngine.Component
function CS.UnityEngine.UI.MaskUtilities.NotifyStencilStateChanged(mask)
end

---@param start : CS.UnityEngine.Transform
---@return CS.UnityEngine.Transform
function CS.UnityEngine.UI.MaskUtilities.FindRootSortOverrideCanvas(start)
end

---@param transform : CS.UnityEngine.Transform
---@param stopAfter : CS.UnityEngine.Transform
---@return CS.System.Int32
function CS.UnityEngine.UI.MaskUtilities.GetStencilDepth(transform, stopAfter)
end

---@param father : CS.UnityEngine.Transform
---@param child : CS.UnityEngine.Transform
---@return CS.System.Boolean
function CS.UnityEngine.UI.MaskUtilities.IsDescendantOrSelf(father, child)
end

---@param clippable : CS.UnityEngine.UI.IClippable
---@return CS.UnityEngine.UI.RectMask2D
function CS.UnityEngine.UI.MaskUtilities.GetRectMaskForClippable(clippable)
end

---@param clipper : CS.UnityEngine.UI.RectMask2D
---@param masks : CS.System.Collections.Generic.List
function CS.UnityEngine.UI.MaskUtilities.GetRectMasksForClip(clipper, masks)
end