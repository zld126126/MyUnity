using UnityEngine;
using System.Collections;

public class Award : MonoBehaviour {

	public int type = 0; //0 gun   1 explode

	public float speed = 1.5f;


	void Update(){
		this.transform.Translate( Vector3.down*Time.deltaTime*speed );
		if(this.transform.position.y<=-4.5f){
			Destroy(this.gameObject);
		}
	}




}
