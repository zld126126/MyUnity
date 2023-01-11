/* Copyright 2013 Daikon Forge */
using UnityEngine;

using System;
using System.Linq;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Implements a scrollable control container
/// </summary>
[dfCategory( "Basic Controls" )]
[dfTooltip( "Implements a scrollable control container" )]
[dfHelp( "http://www.daikonforge.com/docs/df-gui/classdf_scroll_panel.html" )]
[Serializable]
[ExecuteInEditMode]
[AddComponentMenu( "Daikon Forge/User Interface/Containers/Scrollable Panel" )]
public class dfScrollPanel : dfControl
{

	#region Public events

	/// <summary>
	/// Raised when the value of the <see cref="ScrollPosition"/> property has changed
	/// </summary>
	public event PropertyChangedEventHandler<Vector2> ScrollPositionChanged;

	#endregion

	#region Enumerations

	/// <summary>
	/// Specifies the direction to arrange controls when flow layout is used 
	/// </summary>
	public enum LayoutDirection : int
	{
		/// <summary>
		/// Controls will be arranged horizontally
		/// </summary>
		Horizontal,
		/// <summary>
		/// Controls will be arranged vertically
		/// </summary>
		Vertical
	}

	#endregion

	#region Serialized protected members

	[SerializeField]
	protected dfAtlas atlas;

	[SerializeField]
	protected string backgroundSprite;

	[SerializeField]
	protected Color32 backgroundColor = UnityEngine.Color.white;

	[SerializeField]
	protected bool autoReset = true;

	[SerializeField]
	protected bool autoLayout = false;

	[SerializeField]
	protected RectOffset scrollPadding = new RectOffset();

	[SerializeField]
	protected RectOffset flowPadding = new RectOffset();

	[SerializeField]
	protected LayoutDirection flowDirection = LayoutDirection.Horizontal;

	[SerializeField]
	protected bool wrapLayout = false;

	[SerializeField]
	protected Vector2 scrollPosition = Vector2.zero;

	[SerializeField]
	protected int scrollWheelAmount = 10;

	[SerializeField]
	protected dfScrollbar horzScroll;

	[SerializeField]
	protected dfScrollbar vertScroll;

	[SerializeField]
	protected dfControlOrientation wheelDirection = dfControlOrientation.Horizontal;

	[SerializeField]
	protected bool scrollWithArrowKeys = false;

	[SerializeField]
	protected bool useScrollMomentum = false;

	#endregion

	#region Private instance variables

	private bool initialized = false;
	private bool resetNeeded = false;
	private bool scrolling = false;
	private bool isMouseDown = false;
	private Vector2 touchStartPosition = Vector2.zero;
	private Vector2 scrollMomentum = Vector2.zero;

	#endregion

	#region Public properties

	/// <summary>
	/// Gets or sets whether scrolling with the mousewheel or touch swipe will
	/// add a momentum effect to scrolling
	/// </summary>
	public bool UseScrollMomentum
	{
		get { return this.useScrollMomentum; }
		set { this.useScrollMomentum = value; scrollMomentum = Vector2.zero; }
	}

	/// <summary>
	/// Set to TRUE if you want the <see cref="ScrollPanel"/> to scroll when the 
	/// user presses the arrow keys.
	/// </summary>
	public bool ScrollWithArrowKeys
	{
		get { return scrollWithArrowKeys; }
		set { scrollWithArrowKeys = value; }
	}

	/// <summary>
	/// The <see cref="dfAtlas">Texture Atlas</see> containing the images used by this control
	/// </summary>
	public dfAtlas Atlas
	{
		get
		{
			if( this.atlas == null )
			{
				var view = GetManager();
				if( view != null )
				{
					return this.atlas = view.DefaultAtlas;
				}
			}
			return this.atlas;
		}
		set
		{
			if( !dfAtlas.Equals( value, atlas ) )
			{
				this.atlas = value;
				Invalidate();
			}
		}
	}

	/// <summary>
	/// The name of the image in the <see cref="Atlas"/> that will be used to 
	/// render the background of this control
	/// </summary>
	public string BackgroundSprite
	{
		get { return backgroundSprite; }
		set
		{
			if( value != backgroundSprite )
			{
				backgroundSprite = value;
				Invalidate();
			}
		}
	}

	/// <summary>
	/// Gets or set the color that will be applied to the background sprite
	/// </summary>
	public Color32 BackgroundColor
	{
		get { return backgroundColor; }
		set
		{
			if( !Color32.Equals( value, backgroundColor ) )
			{
				backgroundColor = value;
				Invalidate();
			}
		}
	}

	/// <summary>
	/// Gets or sets whether the <see cref="dfScrollPanel"/> will automatically
	/// reset the scrolling region
	/// </summary>
	public bool AutoReset
	{
		get { return this.autoReset; }
		set
		{
			if( value != this.autoReset )
			{
				this.autoReset = value;
				if( AutoReset || AutoLayout ) Reset();
				{
					Reset();
				}
			}
		}
	}

	/// <summary>
	/// Gets or sets the amount of padding that will be applied when arranging 
	/// child controls if the <see cref="AutoLayout"/> property is set to TRUE
	/// </summary>
	public RectOffset ScrollPadding
	{
		get
		{
			if( this.scrollPadding == null ) this.scrollPadding = new RectOffset();
			return this.scrollPadding;
		}
		set
		{
			value = value.ConstrainPadding();
			if( !RectOffset.Equals( value, this.scrollPadding ) )
			{
				this.scrollPadding = value;
				if( AutoReset || AutoLayout ) Reset();
			}
		}
	}

	/// <summary>
	/// Gets or sets whether child controls will be automatically arranged
	/// </summary>
	public bool AutoLayout
	{
		get { return this.autoLayout; }
		set
		{
			if( value != this.autoLayout )
			{
				this.autoLayout = value;
				if( AutoReset || AutoLayout ) Reset();
			}
		}
	}

	/// <summary>
	/// Gets or sets whether controls that lie outside of this container's 
	/// boundaries will be "wrapped" to the next row or column when using AutoLayout
	/// </summary>
	public bool WrapLayout
	{
		get { return this.wrapLayout; }
		set
		{
			if( value != this.wrapLayout )
			{
				this.wrapLayout = value;
				Reset();
			}
		}
	}

	/// <summary>
	/// Gets or sets the direction in which child controls will be arranged
	/// when using AutoLayout
	/// </summary>
	public LayoutDirection FlowDirection
	{
		get { return this.flowDirection; }
		set
		{
			if( value != this.flowDirection )
			{
				this.flowDirection = value;
				Reset();
			}
		}
	}

	/// <summary>
	/// Gets or sets the amount of padding that will be applied to each control
	/// when arranging child controls using AutoLayout
	/// </summary>
	public RectOffset FlowPadding
	{
		get
		{
			if( this.flowPadding == null ) this.flowPadding = new RectOffset();
			return this.flowPadding;
		}
		set
		{
			value = value.ConstrainPadding();
			if( !RectOffset.Equals( value, this.flowPadding ) )
			{
				this.flowPadding = value;
				Reset();
			}
		}
	}

	/// <summary>
	/// Gets or sets the upper-left position of the viewport relative
	/// to the entire scrollable area
	/// </summary>
	public Vector2 ScrollPosition
	{
		get { return this.scrollPosition; }
		set
		{

			var viewSize = calculateViewSize();
			var clientSize = new Vector2( this.size.x - this.scrollPadding.horizontal, this.size.y - this.scrollPadding.vertical );

			value = Vector2.Min( viewSize - clientSize, value );
			value = Vector2.Max( Vector2.zero, value );
			value = value.RoundToInt();

			if( ( value - this.scrollPosition ).sqrMagnitude > float.Epsilon )
			{

				var delta = value - scrollPosition;
				this.scrollPosition = value;

				scrollChildControls( delta );
				updateScrollbars();

			}

			OnScrollPositionChanged();

		}
	}

	/// <summary>
	/// Gets or sets the distance in pixels that the scroll panel will be scrolled when 
	/// the user rotates the mouse wheel (this value is overridden by scrollbars, if they
	/// are attached)
	/// </summary>
	public int ScrollWheelAmount
	{
		get { return this.scrollWheelAmount; }
		set { this.scrollWheelAmount = value; }
	}

	/// <summary>
	/// Gets or sets a reference the the <see cref="dfScrollBar"/> instance
	/// that is used to scroll this container horizontally
	/// </summary>
	public dfScrollbar HorzScrollbar
	{
		get { return this.horzScroll; }
		set
		{
			horzScroll = value;
			updateScrollbars();
		}
	}

	/// <summary>
	/// Gets or sets a reference the the <see cref="dfScrollBar"/> instance
	/// that is used to scroll this container vertically
	/// </summary>
	public dfScrollbar VertScrollbar
	{
		get { return this.vertScroll; }
		set
		{
			vertScroll = value;
			updateScrollbars();
		}
	}

	/// <summary>
	/// Indicates the direction to scroll when the user scrolls the mouse wheel
	/// </summary>
	public dfControlOrientation WheelScrollDirection
	{
		get { return this.wheelDirection; }
		set { this.wheelDirection = value; }
	}

	#endregion

	#region Overrides

	/// <summary>
	/// Returns the screen-based coordinates for this control's clipping area.
	/// This function is intended for internal use when performing shader-based clipping.
	/// </summary>
	/// <returns></returns>
	protected internal override Rect GetClippingRect()
	{

		if( !ClipChildren )
			return base.GetClippingRect();

		var right = transform.TransformDirection( Vector3.right );
		var left = transform.TransformDirection( Vector3.left );
		var up = transform.TransformDirection( Vector3.up );
		var down = transform.TransformDirection( Vector3.down );

		var p2u = PixelsToUnits();
		var padding = ScrollPadding;

		var corners = GetCorners();
		corners[ 0 ] += right * padding.left * p2u + down * padding.top * p2u;
		corners[ 1 ] += left * padding.right * p2u + down * padding.top * p2u;
		corners[ 2 ] += right * padding.left * p2u + up * padding.bottom * p2u;
		corners[ 3 ] += left * padding.left * p2u + up * padding.bottom * p2u;

		var renderCamera = GetCamera();

		var min = Vector2.one * float.MaxValue;
		var max = Vector2.one * float.MinValue;

		var count = corners.Length;
		for( var i = 0; i < count; i++ )
		{
			var screenPos = renderCamera.WorldToScreenPoint( corners[ i ] );
			min = Vector2.Min( min, screenPos );
			max = Vector2.Max( max, screenPos );
		}

		return new Rect(
			min.x,
			Screen.height - max.y,
			max.x - min.x,
			max.y - min.y
		);

	}

	protected internal override Plane[] GetClippingPlanes()
	{

		if( !ClipChildren )
			return null;

		var corners = GetCorners();

		var right = transform.TransformDirection( Vector3.right );
		var left = transform.TransformDirection( Vector3.left );
		var up = transform.TransformDirection( Vector3.up );
		var down = transform.TransformDirection( Vector3.down );

		var p2u = PixelsToUnits();
		var padding = ScrollPadding;
		corners[ 0 ] += right * padding.left * p2u + down * padding.top * p2u;
		corners[ 1 ] += left * padding.right * p2u + down * padding.top * p2u;
		corners[ 2 ] += right * padding.left * p2u + up * padding.bottom * p2u;

		return new Plane[]
			{
				new Plane( right, corners[ 0 ] ),
				new Plane( left, corners[ 1 ] ),
				new Plane( up, corners[ 2 ] ),
				new Plane( down, corners[ 0 ] )
			};

	}

	public override bool CanFocus
	{
		get
		{
			if( this.IsEnabled && this.IsVisible )
				return true;
			return base.CanFocus;
		}
	}

	public override void OnDestroy()
	{

		if( horzScroll != null )
		{
			horzScroll.ValueChanged -= horzScroll_ValueChanged;
		}

		if( vertScroll != null )
		{
			vertScroll.ValueChanged -= vertScroll_ValueChanged;
		}

		horzScroll = null;
		vertScroll = null;

	}

	public override void Update()
	{

		base.Update();

		if( useScrollMomentum && !isMouseDown && scrollMomentum.magnitude > 0.1f )
		{
			ScrollPosition += scrollMomentum;
			scrollMomentum *= ( 0.95f - Time.deltaTime );
		}

		if( isControlInvalidated )
		{

			if( autoLayout && IsVisible )
			{
				AutoArrange();
				updateScrollbars();
			}

		}

	}

	public override void LateUpdate()
	{

		base.LateUpdate();

		// HACK: Need to perform initialization after all dependant objects 
		initialize();

		if( resetNeeded && IsVisible )
		{

			resetNeeded = false;

			if( autoReset || autoLayout )
			{
				Reset();
			}

		}

	}

	public override void OnEnable()
	{

		base.OnEnable();

		if( this.size == Vector2.zero )
		{
			SuspendLayout();
			var camera = GetCamera();
			Size = new Vector3( camera.pixelWidth / 2, camera.pixelHeight / 2 );
			ResumeLayout();
		}

		if( autoLayout )
		{
			AutoArrange();
		}

		updateScrollbars();

	}

	protected internal override void OnIsVisibleChanged()
	{

		base.OnIsVisibleChanged();

		if( IsVisible && ( autoReset || autoLayout ) )
		{
			Reset();
			updateScrollbars();
		}

	}

	protected internal override void OnSizeChanged()
	{

		base.OnSizeChanged();

		if( autoReset || autoLayout )
		{
			Reset();
			return;
		}

		var minScrollPos = calculateMinChildPosition();
		if( minScrollPos.x > scrollPadding.left || minScrollPos.y > scrollPadding.top )
		{

			// Adjust minScrollPos to account for padding and clamp it
			minScrollPos -= new Vector2( scrollPadding.left, scrollPadding.top );
			minScrollPos = Vector2.Max( minScrollPos, Vector2.zero );

			// Scroll child controls to compensate for container resize
			scrollChildControls( minScrollPos );

		}

		updateScrollbars();

	}

	protected internal override void OnResolutionChanged( Vector2 previousResolution, Vector2 currentResolution )
	{
		base.OnResolutionChanged( previousResolution, currentResolution );
		resetNeeded = AutoLayout || AutoReset;
	}

	protected internal override void OnGotFocus( dfFocusEventArgs args )
	{

		if( args.Source != this )
		{
			ScrollIntoView( args.Source );
		}

		base.OnGotFocus( args );

	}

	protected internal override void OnKeyDown( dfKeyEventArgs args )
	{

		if( !scrollWithArrowKeys || args.Used )
		{
			base.OnKeyDown( args );
			return;
		}

		var horzAmount = horzScroll != null ? horzScroll.IncrementAmount : 1f;
		var vertAmount = vertScroll != null ? vertScroll.IncrementAmount : 1f;

		if( args.KeyCode == KeyCode.LeftArrow )
		{
			ScrollPosition += new Vector2( -horzAmount, 0 );
			args.Use();
		}
		else if( args.KeyCode == KeyCode.RightArrow )
		{
			ScrollPosition += new Vector2( horzAmount, 0 );
			args.Use();
		}
		else if( args.KeyCode == KeyCode.UpArrow )
		{
			ScrollPosition += new Vector2( 0, -vertAmount );
			args.Use();
		}
		else if( args.KeyCode == KeyCode.DownArrow )
		{
			ScrollPosition += new Vector2( 0, vertAmount );
			args.Use();
		}

		base.OnKeyDown( args );

	}

	protected internal override void OnMouseEnter( dfMouseEventArgs args )
	{
		base.OnMouseEnter( args );
		touchStartPosition = args.Position;
	}

	protected internal override void OnMouseDown( dfMouseEventArgs args )
	{
		base.OnMouseDown( args );
		touchStartPosition = args.Position;
		isMouseDown = true;
	}

	internal override void OnDragStart( dfDragEventArgs args )
	{
		base.OnDragStart( args );
		if( args.Used )
		{
			isMouseDown = false;
		}
	}

	protected internal override void OnMouseUp( dfMouseEventArgs args )
	{
		base.OnMouseUp( args );
		isMouseDown = false;
	}

	protected internal override void OnMouseMove( dfMouseEventArgs args )
	{

		if( args is dfTouchEventArgs || isMouseDown )
		{

			if( !args.Used && ( args.Position - touchStartPosition ).magnitude > 5 )
			{

				var delta = args.MoveDelta.Scale( -1, 1 );

				// Calculate the effective screen size
				var manager = GetManager();
				var screenSize = manager.GetScreenSize();

				// Obtain a reference to the camera used to render this control
				var renderCamera = manager.RenderCamera;

				// Scale the movement amount by the difference between the "virtual" 
				// screen size and the real screen size
				delta.x = screenSize.x * ( delta.x / renderCamera.pixelWidth );
				delta.y = screenSize.y * ( delta.y / renderCamera.pixelHeight );

				// Set the new scroll position and momentum
				ScrollPosition += delta;
				scrollMomentum = ( scrollMomentum + delta ) * 0.5f;

				args.Use();

			}

		}

		base.OnMouseMove( args );

	}

	protected internal override void OnMouseWheel( dfMouseEventArgs args )
	{

		try
		{

			if( args.Used )
				return;

			var amount = wheelDirection == dfControlOrientation.Horizontal
				? horzScroll != null ? horzScroll.IncrementAmount : scrollWheelAmount
				: vertScroll != null ? vertScroll.IncrementAmount : scrollWheelAmount;

			if( wheelDirection == dfControlOrientation.Horizontal )
			{
				ScrollPosition = new Vector2( scrollPosition.x - amount * args.WheelDelta, scrollPosition.y );
				scrollMomentum = new Vector2( -amount * args.WheelDelta, 0 );
			}
			else
			{
				ScrollPosition = new Vector2( scrollPosition.x, scrollPosition.y - amount * args.WheelDelta );
				scrollMomentum = new Vector2( 0, -amount * args.WheelDelta );
			}

			args.Use();
			Signal( "OnMouseWheel", this, args );

		}
		finally
		{
			base.OnMouseWheel( args );
		}

	}

	protected internal override void OnControlAdded( dfControl child )
	{

		base.OnControlAdded( child );

		attachEvents( child );

		if( autoLayout )
		{
			AutoArrange();
		}

	}

	protected internal override void OnControlRemoved( dfControl child )
	{

		base.OnControlRemoved( child );

		if( child != null )
		{
			detachEvents( child );
		}

		if( autoLayout )
		{
			AutoArrange();
		}
		else
		{
			updateScrollbars();
		}

	}

	protected override void OnRebuildRenderData()
	{

		if( Atlas == null || string.IsNullOrEmpty( backgroundSprite ) )
			return;

		var spriteInfo = Atlas[ backgroundSprite ];
		if( spriteInfo == null )
		{
			return;
		}

		renderData.Material = Atlas.Material;

		var color = ApplyOpacity( this.BackgroundColor );
		var options = new dfSprite.RenderOptions()
		{
			atlas = atlas,
			color = color,
			fillAmount = 1,
			flip = dfSpriteFlip.None,
			offset = pivot.TransformToUpperLeft( Size ),
			pixelsToUnits = PixelsToUnits(),
			size = Size,
			spriteInfo = spriteInfo
		};

		if( spriteInfo.border.horizontal == 0 && spriteInfo.border.vertical == 0 )
			dfSprite.renderSprite( renderData, options );
		else
			dfSlicedSprite.renderSprite( renderData, options );

	}

	protected internal void OnScrollPositionChanged()
	{

		Invalidate();

		SignalHierarchy( "OnScrollPositionChanged", this, this.ScrollPosition );

		if( ScrollPositionChanged != null )
		{
			ScrollPositionChanged( this, this.ScrollPosition );
		}

	}

	#endregion

	#region Public methods

	/// <summary>
	/// Resizes the panel to ensure that it encompasses all child controls
	/// </summary>
	public void FitToContents()
	{

		if( controls.Count == 0 )
			return;

		var max = Vector2.zero;
		for( int i = 0; i < controls.Count; i++ )
		{

			var child = controls[ i ];
			var childMax = (Vector2)child.RelativePosition + child.Size;

			max = Vector2.Max( max, childMax );

		}

		this.Size = max + new Vector2( scrollPadding.right, scrollPadding.bottom );

	}

	/// <summary>
	/// Centers all child controls within the bounds of the panel
	/// </summary>
	public void CenterChildControls()
	{

		if( controls.Count == 0 )
			return;

		var min = Vector2.one * float.MaxValue;
		var max = Vector2.one * float.MinValue;

		for( int i = 0; i < controls.Count; i++ )
		{

			var child = controls[ i ];
			var childMin = (Vector2)child.RelativePosition;
			var childMax = childMin + child.Size;

			min = Vector2.Min( min, childMin );
			max = Vector2.Max( max, childMax );

		}

		var contentSize = max - min;
		var contentOffset = ( this.Size - contentSize ) * 0.5f;

		for( int i = 0; i < controls.Count; i++ )
		{
			var child = controls[ i ];
			child.RelativePosition = (Vector2)child.RelativePosition - min + contentOffset;
		}

	}

	/// <summary>
	/// Sets the scrollposition to the top
	/// </summary>
	public void ScrollToTop()
	{
		this.ScrollPosition = new Vector2( this.scrollPosition.x, 0 );
	}

	/// <summary>
	/// Sets the scrollposition to the top
	/// </summary>
	public void ScrollToBottom()
	{
		this.ScrollPosition = new Vector2( this.scrollPosition.x, int.MaxValue );
	}

	/// <summary>
	/// Sets the scrollposition to the top
	/// </summary>
	public void ScrollToLeft()
	{
		this.ScrollPosition = new Vector2( 0, this.scrollPosition.y );
	}

	/// <summary>
	/// Sets the scrollposition to the top
	/// </summary>
	public void ScrollToRight()
	{
		this.ScrollPosition = new Vector2( int.MaxValue, this.scrollPosition.y );
	}

	/// <summary>
	/// Scrolls the specified child control into view
	/// </summary>
	/// <param name="control">The child control to scroll into view</param>
	public void ScrollIntoView( dfControl control )
	{

		var viewRect = new Rect(
			scrollPosition.x + scrollPadding.left,
			scrollPosition.y + scrollPadding.top,
			size.x - scrollPadding.horizontal,
			size.y - scrollPadding.vertical
		).RoundToInt();

		var controlPosition = control.RelativePosition;
		var controlSize = control.Size;

		while( !controls.Contains( control ) )
		{
			control = control.Parent;
			controlPosition += control.RelativePosition;
		}

		var controlRect = new Rect(
			scrollPosition.x + controlPosition.x,
			scrollPosition.y + controlPosition.y,
			controlSize.x,
			controlSize.y
		).RoundToInt();

		if( viewRect.Contains( controlRect ) )
		{
			return;
		}

		var newScrollPos = scrollPosition;

		if( controlRect.xMin < viewRect.xMin )
		{
			newScrollPos.x = controlRect.xMin - scrollPadding.left;
		}
		else if( controlRect.xMax > viewRect.xMax )
		{
			newScrollPos.x = controlRect.xMax - Mathf.Max( size.x, controlSize.x ) + scrollPadding.horizontal;
		}

		if( controlRect.y < viewRect.y )
		{
			newScrollPos.y = controlRect.yMin - scrollPadding.top;
		}
		else if( controlRect.yMax > viewRect.yMax )
		{
			newScrollPos.y = controlRect.yMax - Mathf.Max( size.y, controlSize.y ) + scrollPadding.vertical;
		}

		ScrollPosition = newScrollPos;
		scrollMomentum = Vector2.zero;

	}

	/// <summary>
	/// Reset the viewport back to the upper left origin of the scrollable area
	/// </summary>
	public void Reset()
	{

		try
		{

			SuspendLayout();

			if( autoLayout )
			{
				var savedScrollPosition = this.ScrollPosition;
				this.ScrollPosition = Vector2.zero;
				AutoArrange();
				ScrollPosition = savedScrollPosition;
			}
			else
			{

				scrollPadding = ScrollPadding.ConstrainPadding();

				var offset = (Vector3)calculateMinChildPosition();
				offset -= new Vector3( scrollPadding.left, scrollPadding.top );

				for( int i = 0; i < controls.Count; i++ )
				{
					controls[ i ].RelativePosition -= offset;
				}

				scrollPosition = Vector2.zero;

			}

			Invalidate();

			updateScrollbars();

		}
		finally
		{
			ResumeLayout();
		}

	}

	#endregion

	#region Private utility methods

	[HideInInspector]
	private void AutoArrange()
	{

		SuspendLayout();
		try
		{

			scrollPadding = ScrollPadding.ConstrainPadding();
			flowPadding = FlowPadding.ConstrainPadding();

			var x = (float)scrollPadding.left + (float)flowPadding.left - scrollPosition.x;
			var y = (float)scrollPadding.top + (float)flowPadding.top - scrollPosition.y;

			var maxWidth = 0f;
			var maxHeight = 0f;

			for( int i = 0; i < controls.Count; i++ )
			{

				var child = controls[ i ];

				if( !child.IsVisible || !child.enabled || !child.gameObject.activeSelf )
					continue;

				if( child == this.horzScroll || child == this.vertScroll )
					continue;

				if( this.wrapLayout )
				{

					if( flowDirection == LayoutDirection.Horizontal )
					{
						if( x + child.Width >= size.x - scrollPadding.right )
						{
							x = (float)scrollPadding.left + (float)flowPadding.left;
							y += maxHeight;
							maxHeight = 0f;
						}
					}
					else
					{
						if( y + child.Height + flowPadding.vertical >= size.y - scrollPadding.bottom )
						{
							y = (float)scrollPadding.top + (float)flowPadding.top;
							x += maxWidth;
							maxWidth = 0f;
						}
					}

				}

				var childPosition = new Vector2( x, y );
				child.RelativePosition = childPosition;

				var xofs = child.Width + flowPadding.horizontal;
				var yofs = child.Height + flowPadding.vertical;

				maxWidth = Mathf.Max( xofs, maxWidth );
				maxHeight = Mathf.Max( yofs, maxHeight );

				if( flowDirection == LayoutDirection.Horizontal )
					x += xofs;
				else
					y += yofs;

			}

			updateScrollbars();

		}
		finally
		{
			ResumeLayout();
		}

	}

	[HideInInspector]
	private void initialize()
	{

		if( initialized )
			return;

		initialized = true;

		if( Application.isPlaying )
		{

			if( horzScroll != null )
			{
				horzScroll.ValueChanged += horzScroll_ValueChanged;
			}

			if( vertScroll != null )
			{
				vertScroll.ValueChanged += vertScroll_ValueChanged;
			}

		}

		if( resetNeeded || autoLayout || autoReset )
		{
			Reset();
		}

		Invalidate();
		ScrollPosition = Vector2.zero;

		updateScrollbars();

	}

	private void vertScroll_ValueChanged( dfControl control, float value )
	{
		ScrollPosition = new Vector2( scrollPosition.x, value );
	}

	private void horzScroll_ValueChanged( dfControl control, float value )
	{
		ScrollPosition = new Vector2( value, ScrollPosition.y );
	}

	private void scrollChildControls( Vector3 delta )
	{

		try
		{

			scrolling = true;

			delta = delta.Scale( 1, -1, 1 );

			for( int i = 0; i < controls.Count; i++ )
			{
				var child = controls[ i ];
				child.Position = ( child.Position - delta ).RoundToInt();
			}

		}
		finally
		{
			scrolling = false;
		}

	}

	private Vector2 calculateMinChildPosition()
	{

		var minX = float.MaxValue;
		var minY = float.MaxValue;

		for( int i = 0; i < controls.Count; i++ )
		{

			var child = controls[ i ];
			if( !child.enabled || !child.gameObject.activeSelf )
				continue;

			var childPos = child.RelativePosition.FloorToInt();
			minX = Mathf.Min( minX, childPos.x );
			minY = Mathf.Min( minY, childPos.y );

		}

		return new Vector2( minX, minY );

	}

	private Vector2 calculateViewSize()
	{

		// Calculate size of client rect
		var padding = new Vector2( scrollPadding.horizontal, scrollPadding.vertical ).RoundToInt();
		var clientSize = this.Size.RoundToInt() - padding;

		// If not visible or no controls, viewsize is same as client rect
		if( !this.IsVisible || this.controls.Count == 0 )
		{
			return clientSize;
		}

		var min = Vector2.one * float.MaxValue;
		var max = Vector2.one * -float.MaxValue;

		for( int i = 0; i < controls.Count; i++ )
		{

			var child = controls[ i ];

			// Skip calculation of child controls that are not visible.
			// NOTE: Only done during runtime, as this control is "live"
			// in the editor and we don't want to change the layout 
			// during design time. Everything will be correct when running.
			if( Application.isPlaying && !child.IsVisible )
				continue;

			var controlMin = (Vector2)child.RelativePosition.CeilToInt();
			var controlMax = controlMin + child.Size.CeilToInt();

			min = Vector2.Min( controlMin, min );
			max = Vector2.Max( controlMax, max );

		}

		// If the minimum control position is greater than the origin, we'll need
		// to compensate for that so that controls don't get moved to the origin
		// and to allow for scrolling all the way to the far extents
		var minOffset = Vector2.Max( Vector2.zero, min - new Vector2( scrollPadding.left, scrollPadding.top ) );

		// Regardless of where the current scroll position is, the 
		// max view extent is always the lower-right corner of the 
		// client rect.
		max = Vector2.Max( max + minOffset, clientSize );

		return ( max - min ) + minOffset;

	}

	[HideInInspector]
	private void updateScrollbars()
	{

		var viewSize = calculateViewSize();

		var clientSize = this.Size - new Vector2( scrollPadding.horizontal, scrollPadding.vertical );

		if( horzScroll != null )
		{
			horzScroll.MinValue = 0;
			horzScroll.MaxValue = viewSize.x;
			horzScroll.ScrollSize = clientSize.x;
			horzScroll.Value = Mathf.Max( 0, scrollPosition.x );
		}

		if( vertScroll != null )
		{
			vertScroll.MinValue = 0;
			vertScroll.MaxValue = viewSize.y;
			vertScroll.ScrollSize = clientSize.y;
			vertScroll.Value = Mathf.Max( 0, scrollPosition.y );
		}

	}

	#region Child control events

	private void attachEvents( dfControl control )
	{
		control.IsVisibleChanged += childIsVisibleChanged;
		control.PositionChanged += childControlInvalidated;
		control.SizeChanged += childControlInvalidated;
		control.ZOrderChanged += childOrderChanged;
	}

	private void detachEvents( dfControl control )
	{
		control.IsVisibleChanged -= childIsVisibleChanged;
		control.PositionChanged -= childControlInvalidated;
		control.SizeChanged -= childControlInvalidated;
		control.ZOrderChanged -= childOrderChanged;
	}

	void childOrderChanged( dfControl control, int value )
	{
		onChildControlInvalidatedLayout();
	}

	void childIsVisibleChanged( dfControl control, bool value )
	{
		onChildControlInvalidatedLayout();
	}

	private void childControlInvalidated( dfControl control, Vector2 value )
	{
		onChildControlInvalidatedLayout();
	}

	[HideInInspector]
	private void onChildControlInvalidatedLayout()
	{

		if( scrolling || IsLayoutSuspended )
			return;

		if( autoLayout )
		{
			AutoArrange();
		}

		updateScrollbars();

		Invalidate();

	}

	#endregion

	#endregion

}
