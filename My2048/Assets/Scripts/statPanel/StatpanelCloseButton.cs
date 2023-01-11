using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class StatpanelCloseButton : MonoBehaviour 
{
    public static StatpanelCloseButton _instance;

    void Awake() {
        _instance = this;
    }

    public dfTweenVector3 tween;

    public void BounceIn() {
        GetComponent<AudioSource>().Play();
        tween.EndValue = new Vector3(0, 0, 0);
        tween.Play();
    }
    public void BounceOut() {
        GetComponent<AudioSource>().Play();
        tween.EndValue = new Vector3(Screen.width, 0, 0);
        tween.Play();
    }

	public void OnClick( dfControl control, dfMouseEventArgs mouseEvent )
	{
        BounceOut();
	}

}
