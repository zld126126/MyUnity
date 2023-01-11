using UnityEngine;
using System.Collections;

public class HelpButton : MonoBehaviour {

    public void OnClick(dfControl control, dfMouseEventArgs args) {
        GetComponent<AudioSource>().Play();
        HelpPanelCloseButton._instance.BounceIn();
    }
	
}
