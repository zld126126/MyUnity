using UnityEngine;
using System.Collections;

public class GamePause : MonoBehaviour {

	void OnMouseUpAsButton() {
		print ("click me!");
		GameManager._instance.transfromGameState();

		GetComponent<AudioSource>().Play();
	}

}
