using System;
using System.Globalization;
using System.Collections;
using System.Collections.Generic;

using UnityEngine;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Color Hex Field" )]
public class ColorHexField : MonoBehaviour 
{

	public ColorFieldSelector colorField;

	#region Private runtime variables 

	private dfTextbox control;

	#endregion

	#region Unity events 

	public void Start()
	{
		// Obtain a reference to the dfTextbox instance attached to this object
		this.control = GetComponent<dfTextbox>();
	}

	public void Update()
	{

		if( !control.HasFocus )
		{

			var color32 = (Color32)colorField.SelectedColor;

			control.Text = string.Format(
				"{0:X2}{1:X2}{2:X2}",
				color32.r,
				color32.g,
				color32.b
			);

		}

	}

	#endregion

	#region Control events 

	public void OnTextSubmitted( dfControl control, string value )
	{

		uint result = 0;
		if( uint.TryParse( value, NumberStyles.HexNumber, null, out result ) )
		{
			
			var color = UIntToColor( result );

			colorField.Hue = HSBColor.GetHue( color );
			colorField.SelectedColor = color;

		}

	}

	#endregion

	#region Private utility methods 

	private Color UIntToColor( uint color )
	{

		var a = (byte)( color >> 24 );
		var r = (byte)( color >> 16 );
		var g = (byte)( color >> 8 );
		var b = (byte)( color >> 0 );

		return new Color32( r, g, b, a );

	}

	#endregion

}
