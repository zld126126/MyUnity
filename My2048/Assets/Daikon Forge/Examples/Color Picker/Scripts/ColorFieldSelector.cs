using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Color Field Selector" )]
public class ColorFieldSelector : MonoBehaviour
{

	#region Control references 

	public dfControl indicator;
	public dfControl sliders;
	public dfControl selectedColorDisplay;

	#endregion

	#region Public properties

	public Color SelectedColor
	{
		get { return this.color; }
		set
		{
			this.color = value;
			updateHotspot();
		}
	}

	public Color Hue
	{
		get { return this.hue; }
		set
		{
			this.hue = value;
			updateSelectedColor();
		}
	}

	#endregion

	#region Private runtime variables

	private dfTextureSprite control;
	private Color hue;
	private Color color;

	#endregion

	#region Unity events

	public void Start()
	{ 
		
		// Obtain a reference to the dfTextureSprite instance attached to this object
		this.control = GetComponent<dfTextureSprite>();

		this.hue = HSBColor.GetHue( control.Color );
		this.color = control.Color;

		updateHotspot();

	}

	public void Update()
	{
		
		var material = control.RenderMaterial;
		if( material != null )
		{
			control.RenderMaterial.color = hue;
		}

		if( selectedColorDisplay != null )
		{
			selectedColorDisplay.Color = this.color;
		}

	}

	#endregion

	#region dfControl events 

	public void OnMouseDown( dfControl control, dfMouseEventArgs mouseEvent )
	{
		updateHotspot( mouseEvent );
	}

	public void OnMouseMove( dfControl control, dfMouseEventArgs mouseEvent )
	{
		if( mouseEvent.Buttons == dfMouseButtons.Left )
		{
			updateHotspot( mouseEvent );
		}
	}

	#endregion

	#region Private utility methods 

	private void updateHotspot()
	{

		if( control == null )
			return;

		var hsb = HSBColor.FromColor( SelectedColor );

		var relativePos = new Vector2( hsb.s * control.Width, ( 1 - hsb.b ) * control.Height );
		indicator.RelativePosition = relativePos - indicator.Size * 0.5f;

	}

	private void updateHotspot( dfMouseEventArgs mouseEvent )
	{

		if( this.indicator == null )
			return;

		var relativePos = control.GetHitPosition( mouseEvent );

		indicator.RelativePosition = relativePos - indicator.Size * 0.5f;

		updateSelectedColor();

	}

	private void updateSelectedColor()
	{

		if( control == null )
		{
			this.control = GetComponent<dfTextureSprite>();
		}

		var relativePos = indicator.RelativePosition + (Vector3)indicator.Size * 0.5f;

		this.color = getColor(
			relativePos.x,
			relativePos.y,
			control.Width,
			control.Height,
			this.Hue
		);

	}

	private Color getColor( float x, float y, float width, float height, Color hue )
	{

		// x is from 0 to width
		// y is from 0 to height

		float u = x / width;
		float v = y / height;

		u = Mathf.Clamp01( u );
		v = Mathf.Clamp01( v );

		return Vector4.Lerp( Color.white, hue, u ) * ( 1f - v );

	}

	#endregion

}
