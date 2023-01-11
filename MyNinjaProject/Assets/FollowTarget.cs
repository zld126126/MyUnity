using UnityEngine;
using System.Collections;

public class FollowTarget : MonoBehaviour {

    public Transform target;

	
	// Update is called once per frame
	void Update () {
        Vector3 pos = transform.position;
        pos.x = target.position.x;
        transform.position = pos;
	}
}
