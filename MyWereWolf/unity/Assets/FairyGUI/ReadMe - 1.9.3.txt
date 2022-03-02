--------------------
     FairyGUI
Copyright © 2014-2017 FairyGUI.com
Version 1.9.3
support@fairygui.com
--------------------
FairyGUI is a flexible UI framework for Unity, working with the professional FREE Game UI Editor: FairyGUI Editor. 
Download the editor from here: http://www.fairygui.com/download

--------------------
Get Started
--------------------
FairyGUI requires DOTween. Get it from Asset Store or http://dotween.demigiant.com/
Run demos in Assets/FairyGUI/Examples/Scenes.
The UI project is in Examples-UIProject.zip, unzip it anywhere. Use FairyGUI Editor to open it.

Using FairyGUI in Unity:
* Place a UIPanel in scene by using editor menu GameObject/FairyGUI/UIPanel.
* Or using UIPackage.CreateObject to create UI component dynamically, and then use GRoot.inst.AddChild to show it on screen.

-----------------
 Version History
-----------------
1.9.3
- IMPROVED: Change GoWrapper default to not clone materials.
- FIXED: Touch input handling bug.
- FIXED: Drag support bug.

1.9.2
- NEW: Add onTouchMove event.
- NEW: Add GTextInput.SetSelection.
- IMPROVED: Better GoWrapper.
- IMPORVED: Allow page snapping or item snapping even when ScrollPane.inertiaDisabled=true.
- IMPORVED: Support for html syntax "width='nn%' height='nn%'".
- FIXED: Batching bug after object is disposed.

1.9.0
- NEW: RollOver/RollOut support for mobile platforms.
- IMPROVED: Insert UGUI canvas into FairyGUI by GoWrapper.
- IMPROVED: Allow gestures to setup on GRoot.
- IMPROVED: Remember selected status for virtual list items.
- FIXED: Text input problem on Mac platform.

1.8.6
- NEW: Controller action feature.
- IMPROVED: Touchable join in GearLook.
- FIXED: A HTML parser bug.
- FIXED: A depth bug in radio group.
- FIXED: A HTML link bug.

1.8.5
- NEW: Add ControlerAction feature.
- FIXED: Fixed a loop list scrolling bug.
- FIXED: Fixed a bug in GList.ItemIndexToChildIndex.

1.8.4
- NEW: Add right to left feature to textfield.
- NEW: Add GoWrapper.supportStencil, allow to set stencil properties to custom renders.
- NEW: Add GList.selectionController/GComboBox.selectionController.
- NEW: Add Scrollpane.pageController.
- NEW: Add reversedMask feature.
- NEW: Add a refresh button in component selecting window.
- NEW: Align/vertical align/auto-item-size features are now supported for all list layout.
- NEW: Add layout feature for group.
- IMPROVE: Improve circle shape hit testing.
- IMPROVE: Exposed GRoot.modalLayer.
- IMPROVE: Modify macros to fit Unity 2017.
- FIXED: A password input bug.

1.8.3
- NEW: Add "Pull to refresh" feature to scrollPane.
- NEW: Add Stage.keyboard/Stage.InputString/GTextInput.keyboardInput to allow customized keyboard implementation.
- NEW: Add superscript and subscript feature to textfield.
- IMPROVE: Support new package format.
- IMPROVE: Improve emoji input feature.
- IMPROVE: Display input caret on mobile device.
- IMPROVE: Optimize TextField memory usage.
- IMPROVE: Remove GList.lineItemCount, Add GList.columnCount/GList.lineCount.
- IMPROVE: Allow to change item size for virtual list with pagination layout in GList.itemRenderer callback.
- FIXED: Fixed a bug in class PlayState.
- FIXED: Fixed a GLoader autosize bug.
- FIXED: Fixed a html link bug.

1.8.2
- NEW: Now support rotated sprite in atlas.
- IMPROVE: Automatically add package when calling UIPanel.ui.
- IMPROVE: EventContext.StopPropagation is effective in capture stage now.
- IMPROVE: Add new overload of UIPackage.AddPackage to allow load package from memory data.
- FIXED: GObjectPool not support for new url format.
- FIXED: Fixed a bug of virtual list layout when lineGap or columnGap is negative.
- FIXED: If used blend mode, exception thrown when application being quit in editor.
- FIXED: ScrollPane.ScrollLeft has no effect in loop list.
- FIXED: A ScrollPane disposing bug.
- FIXED: Underline glyph is too thick after unity5.2
- FIXED: Language issue for GLabel.
- FIXED: Shader problems on OpenGLES3.
- FIXED: GLoader autosize problem.
- FIXED: Set GComboBox to down state when dropdown panel is showing.
- FIXED: Fixed bug in GList item with pivot set.
- FIXED: TextFormat.font support new url format.

1.8.1
- NEW: Add UIContentScaler.ignoreOrientation
- NEW: Add title font size property for GButton and GLabel.
- NEW: Add GList.touchItem.
- FIXED: Solved some fairyBatching problems.
- FIXED: MovieClip skipped some frames on startup.
- FIXED: Remove error message when application is being quit.

1.8.0
- NEW: Add DisplayObject.cacheAsBitmap.
- NEW: Add new URL format support: ui://packageName/resourceName.
- NEW: Add HTML syntax <p align=''> and UBB syntax [align=] features.
- NEW: Add GList.onRightClickItem TreeView.onRightClickNode
- NEW: Add GObject.MakeFullScreen.
- NEW: Add GLabel color control.
- NEW: StrokeColor is now involved in color control.
- IMPROVE: Improve ScrollPane user experience.
- IMRPOVE: Improve fairy batching performance.
- IMRPOVE: Change GProgressBar.max/value and GSlider.max/value value type from float to double.
- FIXED: A text clipping bug.

1.7.5
- NEW: Add LongPressGesture.holdRangeRadius
- IMRPOVE: Improve game object manage strategy, display object will not hide its game object in hierarchy when it is not in display list now. That makes easier to track objects life cycle.
- IMPROVE: Make text crisp when content is scaled.
- FIXED: GList.scrollToView failed when the list is virtual and loop.
- FIXED: Allow virtual list to enable scrolling in two directions.

1.7.4
- IMPROVE: Add i18n support for gearText.
- FIXED: A bitmap font loading bug.
- FIXED: If font texture changed while TypingEffect is running, TypingEffect will continue to play normally.

1.7.3
- NEW: Add UIConfig.defaultTouchScrollSpeedRatio.
- FIXED: Potential memory leak problem of virutal list.
- FIXED: Inertia some time get disabled of scrollpane.
- IMPROVE: A complicated case of relation system.

1.7.2
- NEW: Add GoWrapper.wrapTarget.
- FIXED: Small displacement of text rendering on Unity 5.4 or later.
- FIXED: Movieclip playing in runtime is a little slower than in editor.

1.7.1
- NEW: Add ListLayoutType.Pagination.
- NEW: Add FillType.ScaleMatchWidth and FillType.ScaleMatchHeight.
- FIXED: Transitions on UIPanel is not stopped after UIPanel is destroyed.

1.7.0
- NEW: Add UIContentScaler.ScaleMode.ConstantPhysicalSize
- NEW: Add GGraph color gear support.
- NEW: Add ColorFilter/Skew transition.
- NEW: Add GList.align and GList.verticalAlign.
- NEW: Add Transition.timeScale.
- NEW: Add GObject.OnDragMove.
- NEW: Add GObject.OnGearStop.
- NEW: Add GComboBox.icons.
- NEW: Add new TextField auto size type: Shrink.
- NEW: Add Image.tileGridIndice to support tile in scale8grids.
- NEW: Add TypingEffect.
- NEW: Fixed ComboBox icon display.
- IMPROVE: Improve UIPanel to support dropping 3d content on it.
- IMPROVE: Improve ScrollPane to support embed scrolling.
- FIXED: BMFont display bug.

1.6.0
- NEW: Add ScrollPane.onPullDownRelease/ScrollPane.onPullUpRelease event.
- NEW: UIPackage.CreateObjectAsync for creating object asynchronously.
- NEW: Support GLabel input options.
- NEW: Add GearText and GearIcon.
- IMPROVE: Optimize speed and GC usage of UI construction.
- IMPROVE: Refactor TextField. Added InputTextField.
- IMPROVE: Add BlendMode.Off, Remove Image(Opaque) Shader.
- FIXED: Fixed wrong caret position bug of input text.
- FIXED: Call InvalidateBatchingState on progress changing of ProgressBar/Slider.
- FIXED: Pixel snapping bug in relation system.

1.5.3
- FIXED: A Bug in multi-language file parsing.
- FIXED: Failed to change scroll positions in onScroll event handler.
- IMPORVE: Tween effects now available for virtual lists.
- IMPORVE: Access input event is allowed in onItemClick event handler.

1.5.2
- IMPROVE: Optimize fairy batching.
- NEW: Add GComboBox.UpdateDropdownList.
- FIXED: Mistake to hide objects when using stencil mask.

1.5.1
- NEW: Add InputEvent.button for pc platforms.
- FIXED: Text clipping.
- FIXED: UIPanel/UIPainter bug of handling GameObject enable/disable.

1.5.0
- NEW: Add IOS emoji input support
- IMPROVE: Virtual list now supports seperate item height and resource.

1.4.4
- NEW: Add GObject.pixelSnapping
- NEW: Add ScrollPane.inertiaDisabled

1.4.3
- NEW: Add gradient text support.
- NEW: Add GList.scrollItemToViewOnClick.
- NEW: Add DynamicFont.customBoldAndItalic.
- FIXED: GTextInput.maxLength.
- IMPROVE: Update DragDropManager to support custom loader.

1.4.2
- FIXED: A UI Scale bug.
- IMPROVE: Gear handling.

1.4.1
- NEW: Add text shadow support.
- NEW: Add anchor support.

1.4.0
- NEW: Add GObject.BlendMode.
- NEW: Add GObject.Filter.
- NEW: Add GObject.Skew.

1.3.3
- NEW: Add gesture support

1.3.2
- NEW: Add free mask support.

1.3.1
- NEW: Add Tween delay to gears.
- FIX: GTextInput bug.
- IMPROVE: Remove white space in shader file name.

1.3.0
- NEW: New UIPainter component. Curve UI now supported.
- NEW: New list feature: page mode.
- NEW: New render order feature for GComponent: GComponent.childrenRenderOrder.
- NEW: Html parsing enhanced.
- NEW: Add Window.bringToFontOnClick and UIConfig.bringWindowToFrontOnClick.
- NEW: Add GTextInput.keyboardType
- REMOVE: GObject.SetPivotByRatio. Use SetPivot instead. 

1.2.3
- NEW: Add UIConfig.allowSoftnessOnTopOrLeftSide
- IMPROVE: UI Shaders.
- IMPROVE: Add GImage/GLoader/GMovieClip.shader/material

1.2.2
- NEW: Add "FairyGUI/UI Config" Component
- FIX: Pixel perfect issues.
- FIX: Change GMovieClip to keep its speed even time scale changed.

1.2.1
- NEW: Sort UIPanel by z order is supported. See Stage.SortWorldSpacePanelsByZOrder.
- IMPROVE: Image FillMethod implementation. FillImage shader is removed.
- IMPROVE: Shader optimization.
- 
1.2.0
- NEW: Added editor extensions: UIPanel/UIScaler/StageCamera.
- NEW: Added FillMethod to image/loader.
- IMPROVE: Refactor shaders.
- IMPROVE: Refactor some classes.
- REMOVE: StageNode. Use UIPanel instead.
- REMOVE: Stage prefab is removed, you dont need to put this into scene now.

1.1.0
- NEW: Added virtual list and loop list support. See GList.SetVirutal/GList.SetVirtualAndLoop
- NEW: Added StageNode. For displaying UI in perspetive camera.
- NEW: Added GObject.SetPivotByRatio.
- FIX: GTextField.maxLength now working correctly.
- REMOVE: MiniStage. Use StageNode instead.
- REMOVE: GComponent.onScroll. Use GComponent.scrollPane.onScroll instead.

1.0.3
- NEW: Now you can have different scrollbar styles for each component.
- NEW: Added fixed grip size option for scrollbar.
- NEW: Added tween value behavior for progressbar.
- NEW: Added Transition.playReverse.
- FIX: Scroll event bug.
- FIX: Large moveclip performance.

1.0.2
- NEW: Added Controller.autoRadioGroupDepth (UI Editor function)
- NEW: Added GTextInput.promptText (UI Editor function)
- FIX: Change to create MobileInputAdapter statically to avoid il2cpp problem.

1.0.1
- NEW: Added EventBrige to improve Event system.
- NEW: Added Container.touchChildren. 
- FIX: RenderingOrder will now handle properly when display list changing frequently.
- FIX: Use GRoot.scaleX/Y for content scaling, removed the redundant code.