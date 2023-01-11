using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/RGB Sliders Container" )]
public class RGBSliders : MonoBehaviour
{

	#region Control references 

	public ColorFieldSelector colorField;

	public dfSlider redSlider;
	public dfSlider greenSlider;
	public dfSlider blueSlider;

	#endregion

	#region Public properties 

	public Color SelectedColor
	{
		get { return this.color; }
		set
		{
			this.color = value;
			updateSliders();
		}
	}

	public Color Hue
	{
		get { return this.hue; }
		set
		{
			this.hue = value;
		}
	}

	#endregion

	#region Private runtime variables 

	private dfPanel container;

	private Color color;
	private Color hue;

	#endregion

	#region Unity event handlers 

	public void Start()
	{
		this.container = GetComponent<dfPanel>();
	}

	public void Update()
	{

		if( !container.ContainsFocus )
		{
			this.SelectedColor = colorField.SelectedColor;
		}

	}

	#endregion

	#region Control event handlers

	public void OnValueChanged( dfControl source, float value )
	{

		if( !container.ContainsFocus )
		    return;

		this.color = new Color( redSlider.Value, greenSlider.Value, blueSlider.Value );

		colorField.Hue = this.hue = HSBColor.GetHue( color );
		colorField.SelectedColor = color;

	}

	#endregion

	#region Private utility methods 

	private void updateSliders()
	{
		redSlider.Value = color.r;
		greenSlider.Value = color.g;
		blueSlider.Value = color.b;
	}

	#endregion

}
