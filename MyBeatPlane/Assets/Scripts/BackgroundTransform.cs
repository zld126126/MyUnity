using UnityEngine;
using System.Collections;

public class BackgroundTransform : MonoBehaviour {

	public static float moveSpeed = 2f;
	
	// Update is called once per frame
	void Update () {
		this.transform.Translate( Vector3.down * moveSpeed * Time.deltaTime );
		Vector3 postion = this.transform.position;
		if(postion.y<=-8.52f){
			this.transform.position = new Vector3(postion.x,postion.y+8.52f*2,postion.z );
		}
	}
}
