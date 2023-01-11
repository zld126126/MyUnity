using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Color Preset" )]
public class ColorPickerPreset : MonoBehaviour 
{

	public ColorFieldSelector colorField;

	public void OnDragDrop( dfControl control, dfDragEventArgs dragEvent )
	{
		if( dragEvent.Data is Color32 )
		{
			control.Color = (Color32)dragEvent.Data;
			dragEvent.State = dfDragDropState.Dropped;
			dragEvent.Use();
		}
	}

	public void OnClick( dfControl control, dfMouseEventArgs mouseEvent )
	{
		if( colorField != null )
		{
			colorField.Hue = HSBColor.GetHue( control.Color );
			colorField.SelectedColor = control.Color;
		}
	}

}
