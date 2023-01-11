using UnityEngine;
using System.Collections;

public class Gun : MonoBehaviour {

	public float rate =0.2f;

	public GameObject bullet;


	public void fire(){
		GameObject.Instantiate(bullet,transform.position,Quaternion.identity );
	}

	public void openFire(){
		InvokeRepeating("fire",1,rate);
	}

	public void stopFire(){
		CancelInvoke("fire");
	}

}
