---@class CS.UnityEngine.GL : CS.System.Object
CS.UnityEngine.GL = {}

---@field public CS.UnityEngine.GL.TRIANGLES : CS.System.Int32
CS.UnityEngine.GL.TRIANGLES = nil

---@field public CS.UnityEngine.GL.TRIANGLE_STRIP : CS.System.Int32
CS.UnityEngine.GL.TRIANGLE_STRIP = nil

---@field public CS.UnityEngine.GL.QUADS : CS.System.Int32
CS.UnityEngine.GL.QUADS = nil

---@field public CS.UnityEngine.GL.LINES : CS.System.Int32
CS.UnityEngine.GL.LINES = nil

---@field public CS.UnityEngine.GL.LINE_STRIP : CS.System.Int32
CS.UnityEngine.GL.LINE_STRIP = nil

---@property readwrite CS.UnityEngine.GL.wireframe : CS.System.Boolean
CS.UnityEngine.GL.wireframe = nil

---@property readwrite CS.UnityEngine.GL.sRGBWrite : CS.System.Boolean
CS.UnityEngine.GL.sRGBWrite = nil

---@property readwrite CS.UnityEngine.GL.invertCulling : CS.System.Boolean
CS.UnityEngine.GL.invertCulling = nil

---@property readwrite CS.UnityEngine.GL.modelview : CS.UnityEngine.Matrix4x4
CS.UnityEngine.GL.modelview = nil

---@return CS.UnityEngine.GL
function CS.UnityEngine.GL()
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.GL.Vertex3(x, y, z)
end

---@param v : CS.UnityEngine.Vector3
function CS.UnityEngine.GL.Vertex(v)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.GL.TexCoord3(x, y, z)
end

---@param v : CS.UnityEngine.Vector3
function CS.UnityEngine.GL.TexCoord(v)
end

---@param x : CS.System.Single
---@param y : CS.System.Single
function CS.UnityEngine.GL.TexCoord2(x, y)
end

---@param unit : CS.System.Int32
---@param x : CS.System.Single
---@param y : CS.System.Single
---@param z : CS.System.Single
function CS.UnityEngine.GL.MultiTexCoord3(unit, x, y, z)
end

---@param unit : CS.System.Int32
---@param v : CS.UnityEngine.Vector3
function CS.UnityEngine.GL.MultiTexCoord(unit, v)
end

---@param unit : CS.System.Int32
---@param x : CS.System.Single
---@param y : CS.System.Single
function CS.UnityEngine.GL.MultiTexCoord2(unit, x, y)
end

---@param c : CS.UnityEngine.Color
function CS.UnityEngine.GL.Color(c)
end

function CS.UnityEngine.GL.Flush()
end

function CS.UnityEngine.GL.RenderTargetBarrier()
end

---@param m : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.GL.MultMatrix(m)
end

---@param eventID : CS.System.Int32
function CS.UnityEngine.GL.IssuePluginEvent(eventID)
end

---@param revertBackFaces : CS.System.Boolean
function CS.UnityEngine.GL.SetRevertBackfacing(revertBackFaces)
end

function CS.UnityEngine.GL.PushMatrix()
end

function CS.UnityEngine.GL.PopMatrix()
end

function CS.UnityEngine.GL.LoadIdentity()
end

function CS.UnityEngine.GL.LoadOrtho()
end

function CS.UnityEngine.GL.LoadPixelMatrix()
end

---@param mat : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.GL.LoadProjectionMatrix(mat)
end

function CS.UnityEngine.GL.InvalidateState()
end

---@param proj : CS.UnityEngine.Matrix4x4
---@param renderIntoTexture : CS.System.Boolean
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.GL.GetGPUProjectionMatrix(proj, renderIntoTexture)
end

---@param left : CS.System.Single
---@param right : CS.System.Single
---@param bottom : CS.System.Single
---@param top : CS.System.Single
function CS.UnityEngine.GL.LoadPixelMatrix(left, right, bottom, top)
end

---@param callback : CS.System.IntPtr
---@param eventID : CS.System.Int32
function CS.UnityEngine.GL.IssuePluginEvent(callback, eventID)
end

---@param mode : CS.System.Int32
function CS.UnityEngine.GL.Begin(mode)
end

function CS.UnityEngine.GL.End()
end

---@param clearDepth : CS.System.Boolean
---@param clearColor : CS.System.Boolean
---@param backgroundColor : CS.UnityEngine.Color
---@param depth : CS.System.Single
function CS.UnityEngine.GL.Clear(clearDepth, clearColor, backgroundColor, depth)
end

---@param clearDepth : CS.System.Boolean
---@param clearColor : CS.System.Boolean
---@param backgroundColor : CS.UnityEngine.Color
function CS.UnityEngine.GL.Clear(clearDepth, clearColor, backgroundColor)
end

---@param pixelRect : CS.UnityEngine.Rect
function CS.UnityEngine.GL.Viewport(pixelRect)
end

---@param clearDepth : CS.System.Boolean
---@param camera : CS.UnityEngine.Camera
function CS.UnityEngine.GL.ClearWithSkybox(clearDepth, camera)
end