using UnityEngine;
using System.Collections;

[AddComponentMenu( "Daikon Forge/Examples/Color Picker/Auto-rotate Model" )]
public class AutoRotateModel : MonoBehaviour
{

	void Update()
	{
		transform.Rotate( Vector3.up * Time.deltaTime * 45 );
	}

}
