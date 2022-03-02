using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadGame : MonoBehaviour {

	// Use this for initialization
	void Start () {
        SceneManager.LoadSceneAsync(1);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
