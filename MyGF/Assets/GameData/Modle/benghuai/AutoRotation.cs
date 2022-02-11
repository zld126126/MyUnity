using UnityEngine;
using System.Collections;

public class AutoRotation : MonoBehaviour {

	// Use this for initialization
	void Start () {
        //InvokeRepeating ("DORotation", 0f, 0.05f);
	}

    float degree = 0f;

    void DORotation(){
        transform.Rotate(Vector3.up);
    }
	
	// Update is called once per frame
	void Update () {
		DORotation ();

	}
}
