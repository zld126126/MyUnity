using UnityEngine;
using System.Collections;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Set Character Color" )]
public class SetCharacterColor : MonoBehaviour
{

	public SkinnedMeshRenderer CharacterRenderer;

	public Color BeltColor
	{
		get { return CharacterRenderer.material.GetColor( "_TeamColor" ); }
		set { CharacterRenderer.material.SetColor( "_TeamColor", value ); }
	}

}
