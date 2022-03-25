---@class CS.UnityEngine.Camera : CS.UnityEngine.Behaviour
CS.UnityEngine.Camera = {}

---@field public CS.UnityEngine.Camera.onPreCull : CS.UnityEngine.CameraCallback
CS.UnityEngine.Camera.onPreCull = nil

---@field public CS.UnityEngine.Camera.onPreRender : CS.UnityEngine.CameraCallback
CS.UnityEngine.Camera.onPreRender = nil

---@field public CS.UnityEngine.Camera.onPostRender : CS.UnityEngine.CameraCallback
CS.UnityEngine.Camera.onPostRender = nil

---@property readwrite CS.UnityEngine.Camera.nearClipPlane : CS.System.Single
CS.UnityEngine.Camera.nearClipPlane = nil

---@property readwrite CS.UnityEngine.Camera.farClipPlane : CS.System.Single
CS.UnityEngine.Camera.farClipPlane = nil

---@property readwrite CS.UnityEngine.Camera.fieldOfView : CS.System.Single
CS.UnityEngine.Camera.fieldOfView = nil

---@property readwrite CS.UnityEngine.Camera.renderingPath : CS.UnityEngine.RenderingPath
CS.UnityEngine.Camera.renderingPath = nil

---@property readonly CS.UnityEngine.Camera.actualRenderingPath : CS.UnityEngine.RenderingPath
CS.UnityEngine.Camera.actualRenderingPath = nil

---@property readwrite CS.UnityEngine.Camera.allowHDR : CS.System.Boolean
CS.UnityEngine.Camera.allowHDR = nil

---@property readwrite CS.UnityEngine.Camera.allowMSAA : CS.System.Boolean
CS.UnityEngine.Camera.allowMSAA = nil

---@property readwrite CS.UnityEngine.Camera.allowDynamicResolution : CS.System.Boolean
CS.UnityEngine.Camera.allowDynamicResolution = nil

---@property readwrite CS.UnityEngine.Camera.forceIntoRenderTexture : CS.System.Boolean
CS.UnityEngine.Camera.forceIntoRenderTexture = nil

---@property readwrite CS.UnityEngine.Camera.orthographicSize : CS.System.Single
CS.UnityEngine.Camera.orthographicSize = nil

---@property readwrite CS.UnityEngine.Camera.orthographic : CS.System.Boolean
CS.UnityEngine.Camera.orthographic = nil

---@property readwrite CS.UnityEngine.Camera.opaqueSortMode : CS.UnityEngine.Rendering.OpaqueSortMode
CS.UnityEngine.Camera.opaqueSortMode = nil

---@property readwrite CS.UnityEngine.Camera.transparencySortMode : CS.UnityEngine.TransparencySortMode
CS.UnityEngine.Camera.transparencySortMode = nil

---@property readwrite CS.UnityEngine.Camera.transparencySortAxis : CS.UnityEngine.Vector3
CS.UnityEngine.Camera.transparencySortAxis = nil

---@property readwrite CS.UnityEngine.Camera.depth : CS.System.Single
CS.UnityEngine.Camera.depth = nil

---@property readwrite CS.UnityEngine.Camera.aspect : CS.System.Single
CS.UnityEngine.Camera.aspect = nil

---@property readonly CS.UnityEngine.Camera.velocity : CS.UnityEngine.Vector3
CS.UnityEngine.Camera.velocity = nil

---@property readwrite CS.UnityEngine.Camera.cullingMask : CS.System.Int32
CS.UnityEngine.Camera.cullingMask = nil

---@property readwrite CS.UnityEngine.Camera.eventMask : CS.System.Int32
CS.UnityEngine.Camera.eventMask = nil

---@property readwrite CS.UnityEngine.Camera.layerCullSpherical : CS.System.Boolean
CS.UnityEngine.Camera.layerCullSpherical = nil

---@property readwrite CS.UnityEngine.Camera.cameraType : CS.UnityEngine.CameraType
CS.UnityEngine.Camera.cameraType = nil

---@property readwrite CS.UnityEngine.Camera.overrideSceneCullingMask : CS.System.UInt64
CS.UnityEngine.Camera.overrideSceneCullingMask = nil

---@property readwrite CS.UnityEngine.Camera.layerCullDistances : CS.System.Single[]
CS.UnityEngine.Camera.layerCullDistances = nil

---@property readwrite CS.UnityEngine.Camera.useOcclusionCulling : CS.System.Boolean
CS.UnityEngine.Camera.useOcclusionCulling = nil

---@property readwrite CS.UnityEngine.Camera.cullingMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.cullingMatrix = nil

---@property readwrite CS.UnityEngine.Camera.backgroundColor : CS.UnityEngine.Color
CS.UnityEngine.Camera.backgroundColor = nil

---@property readwrite CS.UnityEngine.Camera.clearFlags : CS.UnityEngine.CameraClearFlags
CS.UnityEngine.Camera.clearFlags = nil

---@property readwrite CS.UnityEngine.Camera.depthTextureMode : CS.UnityEngine.DepthTextureMode
CS.UnityEngine.Camera.depthTextureMode = nil

---@property readwrite CS.UnityEngine.Camera.clearStencilAfterLightingPass : CS.System.Boolean
CS.UnityEngine.Camera.clearStencilAfterLightingPass = nil

---@property readwrite CS.UnityEngine.Camera.usePhysicalProperties : CS.System.Boolean
CS.UnityEngine.Camera.usePhysicalProperties = nil

---@property readwrite CS.UnityEngine.Camera.sensorSize : CS.UnityEngine.Vector2
CS.UnityEngine.Camera.sensorSize = nil

---@property readwrite CS.UnityEngine.Camera.lensShift : CS.UnityEngine.Vector2
CS.UnityEngine.Camera.lensShift = nil

---@property readwrite CS.UnityEngine.Camera.focalLength : CS.System.Single
CS.UnityEngine.Camera.focalLength = nil

---@property readwrite CS.UnityEngine.Camera.gateFit : CS.UnityEngine.GateFitMode
CS.UnityEngine.Camera.gateFit = nil

---@property readwrite CS.UnityEngine.Camera.rect : CS.UnityEngine.Rect
CS.UnityEngine.Camera.rect = nil

---@property readwrite CS.UnityEngine.Camera.pixelRect : CS.UnityEngine.Rect
CS.UnityEngine.Camera.pixelRect = nil

---@property readonly CS.UnityEngine.Camera.pixelWidth : CS.System.Int32
CS.UnityEngine.Camera.pixelWidth = nil

---@property readonly CS.UnityEngine.Camera.pixelHeight : CS.System.Int32
CS.UnityEngine.Camera.pixelHeight = nil

---@property readonly CS.UnityEngine.Camera.scaledPixelWidth : CS.System.Int32
CS.UnityEngine.Camera.scaledPixelWidth = nil

---@property readonly CS.UnityEngine.Camera.scaledPixelHeight : CS.System.Int32
CS.UnityEngine.Camera.scaledPixelHeight = nil

---@property readwrite CS.UnityEngine.Camera.targetTexture : CS.UnityEngine.RenderTexture
CS.UnityEngine.Camera.targetTexture = nil

---@property readonly CS.UnityEngine.Camera.activeTexture : CS.UnityEngine.RenderTexture
CS.UnityEngine.Camera.activeTexture = nil

---@property readwrite CS.UnityEngine.Camera.targetDisplay : CS.System.Int32
CS.UnityEngine.Camera.targetDisplay = nil

---@property readonly CS.UnityEngine.Camera.cameraToWorldMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.cameraToWorldMatrix = nil

---@property readwrite CS.UnityEngine.Camera.worldToCameraMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.worldToCameraMatrix = nil

---@property readwrite CS.UnityEngine.Camera.projectionMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.projectionMatrix = nil

---@property readwrite CS.UnityEngine.Camera.nonJitteredProjectionMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.nonJitteredProjectionMatrix = nil

---@property readwrite CS.UnityEngine.Camera.useJitteredProjectionMatrixForTransparentRendering : CS.System.Boolean
CS.UnityEngine.Camera.useJitteredProjectionMatrixForTransparentRendering = nil

---@property readonly CS.UnityEngine.Camera.previousViewProjectionMatrix : CS.UnityEngine.Matrix4x4
CS.UnityEngine.Camera.previousViewProjectionMatrix = nil

---@property readonly CS.UnityEngine.Camera.main : CS.UnityEngine.Camera
CS.UnityEngine.Camera.main = nil

---@property readonly CS.UnityEngine.Camera.current : CS.UnityEngine.Camera
CS.UnityEngine.Camera.current = nil

---@property readwrite CS.UnityEngine.Camera.scene : CS.UnityEngine.SceneManagement.Scene
CS.UnityEngine.Camera.scene = nil

---@property readonly CS.UnityEngine.Camera.stereoEnabled : CS.System.Boolean
CS.UnityEngine.Camera.stereoEnabled = nil

---@property readwrite CS.UnityEngine.Camera.stereoSeparation : CS.System.Single
CS.UnityEngine.Camera.stereoSeparation = nil

---@property readwrite CS.UnityEngine.Camera.stereoConvergence : CS.System.Single
CS.UnityEngine.Camera.stereoConvergence = nil

---@property readonly CS.UnityEngine.Camera.areVRStereoViewMatricesWithinSingleCullTolerance : CS.System.Boolean
CS.UnityEngine.Camera.areVRStereoViewMatricesWithinSingleCullTolerance = nil

---@property readwrite CS.UnityEngine.Camera.stereoTargetEye : CS.UnityEngine.StereoTargetEyeMask
CS.UnityEngine.Camera.stereoTargetEye = nil

---@property readonly CS.UnityEngine.Camera.stereoActiveEye : CS.UnityEngine.MonoOrStereoscopicEye
CS.UnityEngine.Camera.stereoActiveEye = nil

---@property readonly CS.UnityEngine.Camera.allCamerasCount : CS.System.Int32
CS.UnityEngine.Camera.allCamerasCount = nil

---@property readonly CS.UnityEngine.Camera.allCameras : CS.UnityEngine.Camera[]
CS.UnityEngine.Camera.allCameras = nil

---@property readonly CS.UnityEngine.Camera.commandBufferCount : CS.System.Int32
CS.UnityEngine.Camera.commandBufferCount = nil

---@property readwrite CS.UnityEngine.Camera.isOrthoGraphic : CS.System.Boolean
CS.UnityEngine.Camera.isOrthoGraphic = nil

---@property readonly CS.UnityEngine.Camera.mainCamera : CS.UnityEngine.Camera
CS.UnityEngine.Camera.mainCamera = nil

---@property readwrite CS.UnityEngine.Camera.near : CS.System.Single
CS.UnityEngine.Camera.near = nil

---@property readwrite CS.UnityEngine.Camera.far : CS.System.Single
CS.UnityEngine.Camera.far = nil

---@property readwrite CS.UnityEngine.Camera.fov : CS.System.Single
CS.UnityEngine.Camera.fov = nil

---@property readwrite CS.UnityEngine.Camera.hdr : CS.System.Boolean
CS.UnityEngine.Camera.hdr = nil

---@property readwrite CS.UnityEngine.Camera.stereoMirrorMode : CS.System.Boolean
CS.UnityEngine.Camera.stereoMirrorMode = nil

---@return CS.UnityEngine.Camera
function CS.UnityEngine.Camera()
end

function CS.UnityEngine.Camera:Reset()
end

function CS.UnityEngine.Camera:ResetTransparencySortSettings()
end

function CS.UnityEngine.Camera:ResetAspect()
end

function CS.UnityEngine.Camera:ResetCullingMatrix()
end

---@param shader : CS.UnityEngine.Shader
---@param replacementTag : CS.System.String
function CS.UnityEngine.Camera:SetReplacementShader(shader, replacementTag)
end

function CS.UnityEngine.Camera:ResetReplacementShader()
end

---@return CS.System.Single
function CS.UnityEngine.Camera:GetGateFittedFieldOfView()
end

---@return CS.UnityEngine.Vector2
function CS.UnityEngine.Camera:GetGateFittedLensShift()
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer
---@param depthBuffer : CS.UnityEngine.RenderBuffer
function CS.UnityEngine.Camera:SetTargetBuffers(colorBuffer, depthBuffer)
end

---@param colorBuffer : CS.UnityEngine.RenderBuffer[]
---@param depthBuffer : CS.UnityEngine.RenderBuffer
function CS.UnityEngine.Camera:SetTargetBuffers(colorBuffer, depthBuffer)
end

function CS.UnityEngine.Camera:ResetWorldToCameraMatrix()
end

function CS.UnityEngine.Camera:ResetProjectionMatrix()
end

---@param clipPlane : CS.UnityEngine.Vector4
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:CalculateObliqueMatrix(clipPlane)
end

---@param position : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:WorldToScreenPoint(position, eye)
end

---@param position : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:WorldToViewportPoint(position, eye)
end

---@param position : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ViewportToWorldPoint(position, eye)
end

---@param position : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ScreenToWorldPoint(position, eye)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:WorldToScreenPoint(position)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:WorldToViewportPoint(position)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ViewportToWorldPoint(position)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ScreenToWorldPoint(position)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ScreenToViewportPoint(position)
end

---@param position : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Vector3
function CS.UnityEngine.Camera:ViewportToScreenPoint(position)
end

---@param pos : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Ray
function CS.UnityEngine.Camera:ViewportPointToRay(pos, eye)
end

---@param pos : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Ray
function CS.UnityEngine.Camera:ViewportPointToRay(pos)
end

---@param pos : CS.UnityEngine.Vector3
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.UnityEngine.Ray
function CS.UnityEngine.Camera:ScreenPointToRay(pos, eye)
end

---@param pos : CS.UnityEngine.Vector3
---@return CS.UnityEngine.Ray
function CS.UnityEngine.Camera:ScreenPointToRay(pos)
end

---@param viewport : CS.UnityEngine.Rect
---@param z : CS.System.Single
---@param eye : CS.UnityEngine.MonoOrStereoscopicEye
---@param outCorners : CS.UnityEngine.Vector3[]
function CS.UnityEngine.Camera:CalculateFrustumCorners(viewport, z, eye, outCorners)
end

---@param output : CS.UnityEngine.Matrix4x4
---@param focalLength : CS.System.Single
---@param sensorSize : CS.UnityEngine.Vector2
---@param lensShift : CS.UnityEngine.Vector2
---@param nearClip : CS.System.Single
---@param farClip : CS.System.Single
---@param gateFitParameters : CS.UnityEngine.GateFitParameters
function CS.UnityEngine.Camera.CalculateProjectionMatrixFromPhysicalProperties(output, focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters)
end

---@param focalLength : CS.System.Single
---@param sensorSize : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Camera.FocalLengthToFieldOfView(focalLength, sensorSize)
end

---@param fieldOfView : CS.System.Single
---@param sensorSize : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Camera.FieldOfViewToFocalLength(fieldOfView, sensorSize)
end

---@param horizontalFieldOfView : CS.System.Single
---@param aspectRatio : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Camera.HorizontalToVerticalFieldOfView(horizontalFieldOfView, aspectRatio)
end

---@param verticalFieldOfView : CS.System.Single
---@param aspectRatio : CS.System.Single
---@return CS.System.Single
function CS.UnityEngine.Camera.VerticalToHorizontalFieldOfView(verticalFieldOfView, aspectRatio)
end

---@param eye : CS.UnityEngine.StereoscopicEye
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:GetStereoNonJitteredProjectionMatrix(eye)
end

---@param eye : CS.UnityEngine.StereoscopicEye
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:GetStereoViewMatrix(eye)
end

---@param eye : CS.UnityEngine.StereoscopicEye
function CS.UnityEngine.Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye)
end

---@param eye : CS.UnityEngine.StereoscopicEye
---@return CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:GetStereoProjectionMatrix(eye)
end

---@param eye : CS.UnityEngine.StereoscopicEye
---@param matrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:SetStereoProjectionMatrix(eye, matrix)
end

function CS.UnityEngine.Camera:ResetStereoProjectionMatrices()
end

---@param eye : CS.UnityEngine.StereoscopicEye
---@param matrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:SetStereoViewMatrix(eye, matrix)
end

function CS.UnityEngine.Camera:ResetStereoViewMatrices()
end

---@param cameras : CS.UnityEngine.Camera[]
---@return CS.System.Int32
function CS.UnityEngine.Camera.GetAllCameras(cameras)
end

---@param cubemap : CS.UnityEngine.Cubemap
---@param faceMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Camera:RenderToCubemap(cubemap, faceMask)
end

---@param cubemap : CS.UnityEngine.Cubemap
---@return CS.System.Boolean
function CS.UnityEngine.Camera:RenderToCubemap(cubemap)
end

---@param cubemap : CS.UnityEngine.RenderTexture
---@param faceMask : CS.System.Int32
---@return CS.System.Boolean
function CS.UnityEngine.Camera:RenderToCubemap(cubemap, faceMask)
end

---@param cubemap : CS.UnityEngine.RenderTexture
---@return CS.System.Boolean
function CS.UnityEngine.Camera:RenderToCubemap(cubemap)
end

---@param cubemap : CS.UnityEngine.RenderTexture
---@param faceMask : CS.System.Int32
---@param stereoEye : CS.UnityEngine.MonoOrStereoscopicEye
---@return CS.System.Boolean
function CS.UnityEngine.Camera:RenderToCubemap(cubemap, faceMask, stereoEye)
end

function CS.UnityEngine.Camera:Render()
end

---@param shader : CS.UnityEngine.Shader
---@param replacementTag : CS.System.String
function CS.UnityEngine.Camera:RenderWithShader(shader, replacementTag)
end

function CS.UnityEngine.Camera:RenderDontRestore()
end

---@param renderRequests : CS.System.Collections.Generic.List
function CS.UnityEngine.Camera:SubmitRenderRequests(renderRequests)
end

---@param cur : CS.UnityEngine.Camera
function CS.UnityEngine.Camera.SetupCurrent(cur)
end

---@param other : CS.UnityEngine.Camera
function CS.UnityEngine.Camera:CopyFrom(other)
end

---@param evt : CS.UnityEngine.Rendering.CameraEvent
function CS.UnityEngine.Camera:RemoveCommandBuffers(evt)
end

function CS.UnityEngine.Camera:RemoveAllCommandBuffers()
end

---@param evt : CS.UnityEngine.Rendering.CameraEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Camera:AddCommandBuffer(evt, buffer)
end

---@param evt : CS.UnityEngine.Rendering.CameraEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
---@param queueType : CS.UnityEngine.Rendering.ComputeQueueType
function CS.UnityEngine.Camera:AddCommandBufferAsync(evt, buffer, queueType)
end

---@param evt : CS.UnityEngine.Rendering.CameraEvent
---@param buffer : CS.UnityEngine.Rendering.CommandBuffer
function CS.UnityEngine.Camera:RemoveCommandBuffer(evt, buffer)
end

---@param evt : CS.UnityEngine.Rendering.CameraEvent
---@return CS.UnityEngine.Rendering.CommandBuffer[]
function CS.UnityEngine.Camera:GetCommandBuffers(evt)
end

---@param cullingParameters : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.System.Boolean
function CS.UnityEngine.Camera:TryGetCullingParameters(cullingParameters)
end

---@param stereoAware : CS.System.Boolean
---@param cullingParameters : CS.UnityEngine.Rendering.ScriptableCullingParameters
---@return CS.System.Boolean
function CS.UnityEngine.Camera:TryGetCullingParameters(stereoAware, cullingParameters)
end

---@return CS.System.Single
function CS.UnityEngine.Camera:GetScreenWidth()
end

---@return CS.System.Single
function CS.UnityEngine.Camera:GetScreenHeight()
end

function CS.UnityEngine.Camera:DoClear()
end

function CS.UnityEngine.Camera:ResetFieldOfView()
end

---@param leftMatrix : CS.UnityEngine.Matrix4x4
---@param rightMatrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:SetStereoViewMatrices(leftMatrix, rightMatrix)
end

---@param leftMatrix : CS.UnityEngine.Matrix4x4
---@param rightMatrix : CS.UnityEngine.Matrix4x4
function CS.UnityEngine.Camera:SetStereoProjectionMatrices(leftMatrix, rightMatrix)
end

---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Camera:GetStereoViewMatrices()
end

---@return CS.UnityEngine.Matrix4x4[]
function CS.UnityEngine.Camera:GetStereoProjectionMatrices()
end