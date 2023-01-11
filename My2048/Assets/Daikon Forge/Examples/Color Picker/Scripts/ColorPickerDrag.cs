using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Drag and Drop" )]
public class ColorPickerDrag : MonoBehaviour 
{

	private Texture2D dragTexture;
	private dfSlicedSprite control;
	private bool isDragging = false;

	public void Start()
	{
		this.control = GetComponent<dfSlicedSprite>();
		this.useGUILayout = false;
	}

	void OnGUI()
	{

		if( !Application.isPlaying || !isDragging )
			return;

		if( dragTexture == null )
		{
			dragTexture = new Texture2D( 2, 2 );
			dragTexture.SetPixel( 0, 0, Color.white );
			dragTexture.SetPixel( 0, 1, Color.white );
			dragTexture.SetPixel( 1, 0, Color.white );
			dragTexture.SetPixel( 1, 1, Color.white );
			dragTexture.Apply();
		}

		var mousePos = Input.mousePosition;
		var cursorPos = new Rect( mousePos.x - 15, Screen.height - mousePos.y - 5, 30, 15 );
		var savedColor = GUI.color;

		GUI.color = control.Color;
		GUI.DrawTexture( cursorPos, dragTexture );
		GUI.color = savedColor;

	}

	public void OnDragStart( dfControl control, dfDragEventArgs dragEvent )
	{
		isDragging = true;
		dragEvent.Data = control.Color;
		dragEvent.State = dfDragDropState.Dragging;
		dragEvent.Use();
	}

	public void OnDragEnd( dfControl source, dfDragEventArgs args )
	{
		isDragging = false;
	}

}
